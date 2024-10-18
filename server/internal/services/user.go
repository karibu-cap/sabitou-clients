package services

import (
	"context"
	"errors"
	"log"
	"server/internal/repositories"

	userv1 "sabitou/proto/user/v1"

	"connectrpc.com/connect"
	"github.com/surrealdb/surrealdb.go"
	"google.golang.org/grpc"
)

type UserService struct {
	repos *repositories.Repository
	db    *surrealdb.DB
	userv1.UnimplementedUserServiceServer
}

func RegisterUserService(grpcServer *grpc.Server, repos *repositories.Repository, db *surrealdb.DB) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS users SCHEMAFULL;"+
		"DEFINE FIELD IF NOT EXISTS first_name ON TABLE users TYPE string VALUE string::lowercase($value);"+
		"DEFINE FIELD IF NOT EXISTS last_name ON TABLE users TYPE string VALUE string::lowercase($value);"+
		"DEFINE FIELD IF NOT EXISTS password ON TABLE users;"+
		"DEFINE FIELD IF NOT EXISTS connection_type ON TABLE users TYPE string;"+
		"DEFINE INDEX useEmailIndex ON TABLE users COLUMNS email UNIQUE;"+
		"DEFINE FIELD IF NOT EXISTS email ON TABLE users TYPE string ASSERT string::is::email($value);"+
		"DEFINE FIELD updated_at ON users VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON users VALUE time::now() READONLY;", map[string]interface{}{}, userv1.User{})
	if err != nil {
		log.Fatalf("failed to define user table: %v", err)
	}
	userv1.RegisterUserServiceServer(grpcServer, &UserService{repos: repos, db: db})
}

// GetUser implements userv1connect.UserServiceHandler.
//
// GetUser takes a user ID or an email and a password and returns the
// corresponding user. If the user is not found, it returns a
// connect.Error with code equal to connect.CodeNotFound.
func (s *UserService) GetUser(ctx context.Context, req *userv1.GetUserRequest) (*userv1.GetUserResponse, error) {
	var user userv1.User
	var id = *req.Id
	log.Printf("Received request: %v", req)
	if id != "" {
		err := s.repos.Get_by_id("users", *req.Id, &user)
		if err != nil {
			return nil, connect.NewError(connect.CodeNotFound, err)
		}

		return &userv1.GetUserResponse{User: &user}, nil
	}

	if s.db == nil {
		log.Println("Database connection is nil")
		return nil, errors.New("database connection is not initialized")
	}
	result, err := s.db.Query("SELECT * FROM users WHERE email = $email AND password = $password LIMIT 1", map[string]interface{}{
		"email":    req.Email,
		"password": req.Password,
	})
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	newResult := result.([]interface{})[0].(map[string]interface{})["result"].([]interface{})[0].(map[string]interface{})

	password := newResult["password"].(string)
	user = userv1.User{
		FirstName:      newResult["first_name"].(string),
		LastName:       newResult["last_name"].(string),
		Email:          newResult["email"].(string),
		Password:       &password,
		ConnectionType: newResult["connection_type"].(string),
	}

	return &userv1.GetUserResponse{User: &user}, nil
}

// CreateUser implements userv1connect.UserServiceHandler.
//
// CreateUser takes a CreateUserRequest and inserts a new user in the
// database. If the user is already present, it returns a connect.Error
// with code equal to connect.CodeAlreadyExists. If the insert fails, it
// returns a connect.Error with code equal to connect.CodeInternal.
func (s *UserService) CreateUser(ctx context.Context, req *userv1.CreateUserRequest) (*userv1.CreateUserResponse, error) {
	// Check if the user data is valid
	if req == nil {
		log.Fatalf("user data cannot be nil")
	}
	log.Printf("Received request: %v", req)

	user := userv1.User{
		FirstName:      req.FirstName,
		LastName:       req.LastName,
		Email:          req.Email,
		Password:       req.Password,
		ConnectionType: req.ConnectionType,
	}

	result, err := s.repos.Create("users", &user)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &userv1.CreateUserResponse{Id: result}, nil
}
