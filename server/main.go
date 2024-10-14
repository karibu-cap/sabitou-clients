package main

import (
	"context"
	"database/sql"
	"flag"
	"fmt"
	"log"
	"net"
	"net/http"

	"connectrpc.com/connect"
	"github.com/google/uuid"
	"github.com/improbable-eng/grpc-web/go/grpcweb"
	_ "github.com/mattn/go-sqlite3"
	"github.com/rs/cors"
	"google.golang.org/grpc"

	userv1 "sabitou-go/user/v1"
)

var (
	port    = flag.Int("port", 50051, "The server port")
	webPort = flag.Int("web-port", 50052, "The gRPC-Web proxy port")
)

type Server struct {
	db *sql.DB
	userv1.UnimplementedUserServiceServer
}

// GetUser implements userv1connect.UserServiceHandler.
func (s *Server) GetUser(ctx context.Context, req *userv1.GetUserRequest) (*userv1.User, error) {
	var row *sql.Row
	if req.Id != nil && *req.Id != "" {
		row = s.db.QueryRow("SELECT id, first_name, last_name, email, password, connection_type FROM users WHERE id = ?", *req.Id)
	} else {
		row = s.db.QueryRow("SELECT id, first_name, last_name, email, password, connection_type FROM users WHERE email = ? AND password = ?",
			req.Email, req.Password)
	}
	var id, firstName, lastName, email, password, connection_type string
	if err := row.Scan(&id, &firstName, &lastName, &email, &password, &connection_type); err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}
	return &userv1.User{
		Id:             id,
		FirstName:      firstName,
		LastName:       lastName,
		Email:          email,
		Password:       &password,
		ConnectionType: userv1.ConnectionType(userv1.ConnectionType_value[connection_type]),
	}, nil
}

// CreateUser implements userv1connect.UserServiceHandler.
func (s *Server) CreateUser(ctx context.Context, req *userv1.CreateUserRequest) (*userv1.User, error) {
	log.Printf("Received: %v", req.Email)
	id := req.Id
	if id == "" {
		id = uuid.New().String()
	}
	_, err := s.db.Exec("INSERT INTO users (id, first_name, last_name, email, password, connection_type) VALUES (?, ?, ?, ?, ?, ?)",
		id, req.FirstName, req.LastName, req.Email, req.Password, req.ConnectionType.String())
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &userv1.User{
		Id:             id,
		FirstName:      req.FirstName,
		LastName:       req.LastName,
		Email:          req.Email,
		Password:       req.Password,
		ConnectionType: userv1.ConnectionType(req.ConnectionType),
	}, nil
}

func main() {
	db, err := sql.Open("sqlite3", "sabitou.db")
	if err != nil {
		log.Fatalf("Failed to open database: %v", err)
	}
	defer db.Close()

	// Initialize database schema
	_, err = db.Exec(`
		CREATE TABLE IF NOT EXISTS users (
			id TEXT PRIMARY KEY,
			first_name TEXT NOT NULL,
			last_name TEXT NOT NULL,
			email TEXT UNIQUE NOT NULL,
			password TEXT,
			connection_type TEXT NOT NULL
		);
	`)
	if err != nil {
		log.Fatalf("Failed to initialize database: %v", err)
	}
	flag.Parse()
	// Set up your gRPC server
	grpcServer := grpc.NewServer()
	userv1.RegisterUserServiceServer(grpcServer, &Server{db: db})

	// Start gRPC server
	go func() {
		lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
		if err != nil {
			log.Fatalf("failed to listen: %v", err)
		}
		log.Printf("gRPC server listening at %v", lis.Addr())
		if err := grpcServer.Serve(lis); err != nil {
			log.Fatalf("failed to serve: %v", err)
		}
	}()

	// Create a gRPC-Web wrapper for the gRPC server
	wrappedGrpc := grpcweb.WrapServer(grpcServer)

	// Create a CORS wrapper
	corsWrapper := cors.New(cors.Options{
		// [TODO] update the origin for production.
		AllowedOrigins:   []string{"*"},
		AllowedMethods:   []string{"GET", "POST", "OPTIONS"},
		AllowedHeaders:   []string{"*"},
		ExposedHeaders:   []string{"grpc-status", "grpc-message"},
		AllowCredentials: true,
	})

	// Set up a gRPC-Web proxy with CORS
	handler := http.HandlerFunc(func(resp http.ResponseWriter, req *http.Request) {
		if wrappedGrpc.IsGrpcWebRequest(req) {
			wrappedGrpc.ServeHTTP(resp, req)
			return
		}
		// Handle normal HTTP traffic
		resp.WriteHeader(http.StatusOK)
		resp.Write([]byte("gRPC-Web proxy server"))
	})

	corsHandler := corsWrapper.Handler(handler)

	// Start gRPC-Web proxy
	httpServer := &http.Server{
		Addr:    fmt.Sprintf(":%d", *webPort),
		Handler: corsHandler,
	}

	log.Printf("gRPC-Web proxy server listening at :%d", *webPort)
	if err := httpServer.ListenAndServe(); err != nil {
		log.Fatalf("failed to serve gRPC-Web proxy: %v", err)
	}

}
