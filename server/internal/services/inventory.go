// File: inventory_service.go
package services

import (
	"context"
	"log"
	"server/internal/repositories"

	inventoryV1 "sabitou/proto/inventory/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type InventoryService struct {
	repos *repositories.Repository
	inventoryV1.UnimplementedInventoryServiceServer
}

func RegisterInventoryService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE inventory SCHEMAFULL;"+
		"DEFINE FIELD article_id ON TABLE inventory;"+
		"DEFINE FIELD store_id ON TABLE inventory;"+
		"DEFINE FIELD quantity ON TABLE inventory TYPE float;"+
		"DEFINE FIELD categories ON TABLE inventory TYPE array;"+
		"DEFINE FIELD price ON TABLE inventory TYPE float;"+
		"DEFINE FIELD images ON TABLE inventory TYPE array;"+
		"DEFINE FIELD updated_at ON inventory VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON inventory VALUE time::now() READONLY;", map[string]interface{}{}, inventoryV1.Inventory{})

	if err != nil {
		log.Fatalf("failed to define inventory table: %v", err)
	}

	inventoryV1.RegisterInventoryServiceServer(grpcServer, &InventoryService{repos: repos})
}

func (s *InventoryService) GetInventory(ctx context.Context, req *inventoryV1.GetInventoryRequest) (*inventoryV1.GetInventoryResponse, error) {
	var inventory inventoryV1.GetInventoryResponse

	err := s.repos.Get_by_id("inventory", req.Id, &inventory)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &inventory, nil
}

func (s *InventoryService) CreateInventory(ctx context.Context, req *inventoryV1.CreateInventoryRequest) (*inventoryV1.CreateInventoryResponse, error) {
	inventory := inventoryV1.Inventory{
		ArticleId:  req.Inventory.ArticleId,
		StoreId:    req.Inventory.StoreId,
		Quantity:   req.Inventory.Quantity,
		Categories: req.Inventory.Categories,
		Price:      req.Inventory.Price,
		Images:     req.Inventory.Images,
	}

	result, err := s.repos.Create("inventory", &inventory)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &inventoryV1.CreateInventoryResponse{Id: result}, nil
}
