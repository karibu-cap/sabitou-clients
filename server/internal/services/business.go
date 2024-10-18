package services

import (
	"context"
	"log"
	"server/internal/repositories"

	businessV1 "sabitou/proto/business/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type BusinessService struct {
	repos *repositories.Repository
	businessV1.UnimplementedBusinessServiceServer
}

func RegisterBusinessService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS businesses SCHEMAFULL;"+
		"DEFINE FIELD name ON TABLE businesses TYPE string;"+
		"DEFINE FIELD description ON TABLE businesses TYPE string;"+
		"DEFINE FIELD updated_at ON businesses VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON businesses VALUE time::now() READONLY;", map[string]interface{}{}, businessV1.Business{})

	if err != nil {
		log.Fatalf("failed to define business table: %v", err)
	}

	businessV1.RegisterBusinessServiceServer(grpcServer, &BusinessService{repos: repos})
}

func (s *BusinessService) GetBusiness(ctx context.Context, req *businessV1.GetBusinessRequest) (*businessV1.GetBusinessResponse, error) {
	var business businessV1.GetBusinessResponse

	err := s.repos.Get_by_id("businesses", req.Id, &business)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &business, nil
}

func (s *BusinessService) CreateBusiness(ctx context.Context, req *businessV1.CreateBusinessRequest) (*businessV1.CreateBusinessResponse, error) {
	business := businessV1.Business{
		Name:        req.Business.Name,
		Description: req.Business.Description,
	}

	result, err := s.repos.Create("businesses", &business)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &businessV1.CreateBusinessResponse{Id: result}, nil
}
