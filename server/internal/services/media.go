package services

import (
	"context"
	"log"
	"server/internal/repositories"

	mediaV1 "sabitou/proto/media/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type MediaService struct {
	repos *repositories.Repository
	mediaV1.UnimplementedMediaServiceServer
}

func RegisterMediaService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS medias SCHEMAFULL;"+
		"DEFINE FIELD link ON TABLE medias TYPE string;"+
		"DEFINE FIELD type ON TABLE medias TYPE string;"+
		"DEFINE INDEX media_link_index ON TABLE medias COLUMNS link UNIQUE;"+
		"DEFINE FIELD updated_at ON medias VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON medias VALUE time::now() READONLY;", map[string]interface{}{}, mediaV1.Media{})

	if err != nil {
		log.Fatalf("failed to define media table: %v", err)
	}

	mediaV1.RegisterMediaServiceServer(grpcServer, &MediaService{repos: repos})
}

func (s *MediaService) GetUser(ctx context.Context, req *mediaV1.GetMediaRequest) (*mediaV1.GetMediaResponse, error) {
	var media mediaV1.Media

	err := s.repos.Get_by_id("medias", req.Id, &media)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &mediaV1.GetMediaResponse{Media: &media}, nil

}

func (s *MediaService) CreateUser(ctx context.Context, req *mediaV1.CreateMediaRequest) (*mediaV1.CreateMediaResponse, error) {
	media := mediaV1.Media{
		Type: req.Media.Type,
		Link: req.Media.Link,
	}

	result, err := s.repos.Create("medias", &media)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &mediaV1.CreateMediaResponse{Id: result}, nil
}
