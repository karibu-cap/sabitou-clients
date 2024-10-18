package services

import (
	"context"
	"log"
	"server/internal/repositories"

	storeV1 "sabitou/proto/store/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type StoreService struct {
	repos *repositories.Repository
	storeV1.UnimplementedStoreServiceServer
}

func RegisterStoreService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS stores SCHEMAFULL;"+
		"DEFINE FIELD name ON TABLE stores TYPE string;"+
		"DEFINE FIELD description ON TABLE stores TYPE string;"+
		"DEFINE FIELD address ON TABLE stores TYPE string;"+
		"DEFINE FIELD business_id ON TABLE stores;"+
		"DEFINE FIELD updated_at ON stores VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON stores VALUE time::now() READONLY;", map[string]interface{}{}, storeV1.Store{})

	if err != nil {
		log.Fatalf("failed to define store table: %v", err)
	}

	storeV1.RegisterStoreServiceServer(grpcServer, &StoreService{repos: repos})
}

func (s *StoreService) GetStore(ctx context.Context, req *storeV1.GetStoreRequest) (*storeV1.GetStoreResponse, error) {
	var store storeV1.GetStoreResponse

	err := s.repos.Get_by_id("stores", req.Id, &store)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &store, nil
}

func (s *StoreService) CreateStore(ctx context.Context, req *storeV1.CreateStoreRequest) (*storeV1.CreateStoreResponse, error) {
	store := storeV1.Store{
		Name:        req.Store.Name,
		Description: req.Store.Description,
		Address:     req.Store.Address,
		BusinessId:  req.Store.BusinessId,
	}

	result, err := s.repos.Create("stores", &store)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &storeV1.CreateStoreResponse{Id: result}, nil
}
