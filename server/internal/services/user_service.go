package services

import (
	"context"
	"database/sql"
	"log"

	userv1 "sabitou-go/user/v1"

	"connectrpc.com/connect"
	"github.com/google/uuid"
)

type UserService struct {
	db *sql.DB
	userv1.UnimplementedUserServiceServer
}

func NewUserService(db *sql.DB) *UserService {
	return &UserService{db: db}
}

// GetUser implements userv1connect.UserServiceHandler.
//
// GetUser takes a user ID or an email and a password and returns the
// corresponding user. If the user is not found, it returns a
// connect.Error with code equal to connect.CodeNotFound.
func (s *UserService) GetUser(ctx context.Context, req *userv1.GetUserRequest) (*userv1.User, error) {
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
//
// CreateUser takes a CreateUserRequest and inserts a new user in the
// database. If the user is already present, it returns a connect.Error
// with code equal to connect.CodeAlreadyExists. If the insert fails, it
// returns a connect.Error with code equal to connect.CodeInternal.
func (s *UserService) CreateUser(ctx context.Context, req *userv1.CreateUserRequest) (*userv1.User, error) {
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
