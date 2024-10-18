// File: business_user_service.go
package services

import (
	"context"
	"log"
	"server/internal/repositories"

	businessUserV1 "sabitou/proto/business_user/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type BusinessUserService struct {
	repos *repositories.Repository
	businessUserV1.UnimplementedBusinessUserServiceServer
}

func RegisterBusinessUserService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS businessUsers SCHEMAFULL;"+
		"DEFINE FIELD business_id ON TABLE businessUsers;"+
		"DEFINE FIELD user_id ON TABLE businessUsers;"+
		"DEFINE FIELD active ON TABLE businessUsers TYPE bool;"+
		"DEFINE FIELD role ON TABLE businessUsers TYPE string;"+
		"DEFINE FIELD business_permission ON TABLE businessUsers TYPE object;"+
		"DEFINE FIELD updated_at ON businessUsers VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON businessUsers VALUE time::now() READONLY;", map[string]interface{}{}, businessUserV1.BusinessUser{})

	if err != nil {
		log.Fatalf("failed to define businessUser table: %v", err)
	}

	businessUserV1.RegisterBusinessUserServiceServer(grpcServer, &BusinessUserService{repos: repos})
}

func (s *BusinessUserService) GetBusinessUser(ctx context.Context, req *businessUserV1.GetBusinessUserRequest) (*businessUserV1.GetBusinessUserResponse, error) {
	var businessUser businessUserV1.GetBusinessUserResponse

	err := s.repos.Get_by_id("businessUsers", req.Id, &businessUser)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &businessUser, nil
}

func (s *BusinessUserService) CreateBusinessUser(ctx context.Context, req *businessUserV1.CreateBusinessUserRequest) (*businessUserV1.CreateBusinessUserResponse, error) {
	businessUser := businessUserV1.BusinessUser{
		BusinessId:          req.BusinessUser.BusinessId,
		UserId:              req.BusinessUser.UserId,
		Active:              req.BusinessUser.Active,
		Role:                req.BusinessUser.Role,
		BusinessPermissions: req.BusinessUser.BusinessPermissions,
	}

	result, err := s.repos.Create("businessUsers", &businessUser)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &businessUserV1.CreateBusinessUserResponse{Id: result}, nil
}
