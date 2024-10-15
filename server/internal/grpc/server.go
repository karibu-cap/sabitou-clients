package grpc_server

import (
	"fmt"
	"log"
	"net"
	"net/http"

	"github.com/improbable-eng/grpc-web/go/grpcweb"
	"github.com/rs/cors"
	"google.golang.org/grpc"
)

func StartGRPCServer(grpcServer *grpc.Server, port *int, webPort *int) {
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

	startGRPCWebProxy(grpcServer, webPort)
}

func startGRPCWebProxy(grpcServer *grpc.Server, webPort *int) {
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
