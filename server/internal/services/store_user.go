package services

import (
	"context"
	"log"
	"server/internal/repositories"

	storeUserV1 "sabitou/proto/store_user/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type StoreUserService struct {
	repos *repositories.Repository
	storeUserV1.UnimplementedStoreUserServiceServer
}

func RegisterStoreUserService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS storeUsers SCHEMAFULL;"+
		"DEFINE FIELD store_id ON TABLE storeUsers;"+
		"DEFINE FIELD user_id ON TABLE storeUsers;"+
		"DEFINE FIELD active ON TABLE storeUsers TYPE bool;"+
		"DEFINE FIELD role ON TABLE storeUsers TYPE string;"+
		"DEFINE FIELD store_permission ON TABLE storeUsers TYPE object;"+
		"DEFINE FIELD updated_at ON storeUsers VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON storeUsers VALUE time::now() READONLY;", map[string]interface{}{}, storeUserV1.StoreUser{})

	if err != nil {
		log.Fatalf("failed to define storeUser table: %v", err)
	}

	storeUserV1.RegisterStoreUserServiceServer(grpcServer, &StoreUserService{repos: repos})
}

func (s *StoreUserService) GetStoreUser(ctx context.Context, req *storeUserV1.GetStoreUserRequest) (*storeUserV1.GetStoreUserResponse, error) {
	var storeUser storeUserV1.GetStoreUserResponse

	err := s.repos.Get_by_id("storeUsers", req.Id, &storeUser)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &storeUser, nil
}

func (s *StoreUserService) CreateStoreUser(ctx context.Context, req *storeUserV1.CreateStoreUserRequest) (*storeUserV1.CreateStoreUserResponse, error) {
	storeUser := storeUserV1.StoreUser{
		StoreId:          req.StoreUser.StoreId,
		UserId:           req.StoreUser.UserId,
		Active:           req.StoreUser.Active,
		Role:             req.StoreUser.Role,
		StorePermissions: req.StoreUser.StorePermissions,
	}

	result, err := s.repos.Create("storeUsers", &storeUser)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &storeUserV1.CreateStoreUserResponse{Id: result}, nil
}
