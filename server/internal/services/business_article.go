package services

import (
	"context"
	"log"
	"server/internal/repositories"

	businessArticleV1 "sabitou/proto/business_article/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type BusinessArticleService struct {
	repos *repositories.Repository
	businessArticleV1.UnimplementedBusinessArticleServiceServer
}

func RegisterBusinessArticleService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS businessArticles SCHEMAFULL;"+
		"DEFINE FIELD business_id ON TABLE businessArticles;"+
		"DEFINE FIELD article_id ON TABLE businessArticles;"+
		"DEFINE FIELD price ON TABLE businessArticles TYPE float;"+
		"DEFINE FIELD updated_at ON businessArticles VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON businessArticles VALUE time::now() READONLY;", map[string]interface{}{}, businessArticleV1.BusinessArticle{})

	if err != nil {
		log.Fatalf("failed to define businessArticle table: %v", err)
	}

	businessArticleV1.RegisterBusinessArticleServiceServer(grpcServer, &BusinessArticleService{repos: repos})
}

func (s *BusinessArticleService) GetBusinessArticle(ctx context.Context, req *businessArticleV1.GetBusinessArticleRequest) (*businessArticleV1.GetBusinessArticleResponse, error) {
	var businessArticle businessArticleV1.GetBusinessArticleResponse

	err := s.repos.Get_by_id("businessArticles", req.Id, &businessArticle)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &businessArticle, nil
}

func (s *BusinessArticleService) CreateBusinessArticle(ctx context.Context, req *businessArticleV1.CreateBusinessArticleRequest) (*businessArticleV1.CreateBusinessArticleResponse, error) {
	businessArticle := businessArticleV1.BusinessArticle{
		ArticleId: req.BusinessArticle.ArticleId,
		Price:     req.BusinessArticle.Price,
	}

	result, err := s.repos.Create("businessArticles", &businessArticle)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &businessArticleV1.CreateBusinessArticleResponse{Id: result}, nil
}
