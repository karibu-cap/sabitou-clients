package services

import (
	"context"
	"log"
	"server/internal/repositories"

	articleCategoryV1 "sabitou/proto/article_category/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type ArticleCategoryService struct {
	repos *repositories.Repository
	articleCategoryV1.UnimplementedArticleCategoryServiceServer
}

func RegisterArticleCategoryService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS articleCategories SCHEMAFULL;"+
		"DEFINE FIELD name ON TABLE articleCategories TYPE string;"+
		"DEFINE FIELD description ON TABLE articleCategories TYPE string;"+
		"DEFINE FIELD updated_at ON articleCategories VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON articleCategories VALUE time::now() READONLY;", map[string]interface{}{}, articleCategoryV1.ArticleCategory{})

	if err != nil {
		log.Fatalf("failed to define articleCategory table: %v", err)
	}

	articleCategoryV1.RegisterArticleCategoryServiceServer(grpcServer, &ArticleCategoryService{repos: repos})
}

func (s *ArticleCategoryService) GetArticleCategory(ctx context.Context, req *articleCategoryV1.GetArticleCategoryRequest) (*articleCategoryV1.GetArticleCategoryResponse, error) {
	var articleCategory articleCategoryV1.GetArticleCategoryResponse

	err := s.repos.Get_by_id("articleCategories", req.Id, &articleCategory)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &articleCategory, nil
}

func (s *ArticleCategoryService) CreateArticleCategory(ctx context.Context, req *articleCategoryV1.CreateArticleCategoryRequest) (*articleCategoryV1.CreateArticleCategoryResponse, error) {
	articleCategory := articleCategoryV1.ArticleCategory{
		Name:        req.ArticleCategory.Name,
		Description: req.ArticleCategory.Description,
	}

	result, err := s.repos.Create("articleCategories", &articleCategory)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &articleCategoryV1.CreateArticleCategoryResponse{Id: result}, nil
}
