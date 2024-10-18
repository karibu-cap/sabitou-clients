package services

import (
	"context"
	"log"
	"server/internal/repositories"

	articleV1 "sabitou/proto/article/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type ArticleService struct {
	repos *repositories.Repository
	articleV1.UnimplementedArticleServiceServer
}

func RegisterArticleService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS articles SCHEMAFULL;"+
		"DEFINE FIELD name ON TABLE articles TYPE string;"+
		"DEFINE FIELD description ON TABLE articles TYPE string;"+
		"DEFINE FIELD bar_code_value ON TABLE articles TYPE string;"+
		"DEFINE FIELD images ON TABLE articles TYPE array;"+
		"DEFINE FIELD updated_at ON articles VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON articles VALUE time::now() READONLY;", map[string]interface{}{}, articleV1.Article{})

	if err != nil {
		log.Fatalf("failed to define article table: %v", err)
	}

	articleV1.RegisterArticleServiceServer(grpcServer, &ArticleService{repos: repos})
}

func (s *ArticleService) GetUser(ctx context.Context, req *articleV1.GetArticleRequest) (*articleV1.GetArticleResponse, error) {
	var article articleV1.GetArticleResponse

	err := s.repos.Get_by_id("articles", req.Id, &article)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &article, nil

}

func (s *ArticleService) CreateUser(ctx context.Context, req *articleV1.CreateArticleRequest) (*articleV1.CreateArticleResponse, error) {
	article := articleV1.Article{
		Name:         req.Article.Name,
		Description:  req.Article.Description,
		BarCodeValue: req.Article.BarCodeValue,
		Images:       req.Article.Images,
	}

	result, err := s.repos.Create("articles", &article)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &articleV1.CreateArticleResponse{Id: result}, nil
}
