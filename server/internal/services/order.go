package services

import (
	"context"
	"log"
	"server/internal/repositories"

	orderV1 "sabitou/proto/order/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type OrderService struct {
	repos *repositories.Repository
	orderV1.UnimplementedOrderServiceServer
}

func RegisterOrderService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS orders SCHEMAFULL;"+
		"DEFINE FIELD store_id ON TABLE orders;"+
		"DEFINE FIELD payment_id ON TABLE orders TYPE array;"+
		"DEFINE FIELD initiator ON TABLE orders;"+
		"DEFINE FIELD status ON TABLE orders TYPE string;"+
		"DEFINE FIELD order_items ON TABLE orders TYPE array;"+
		"DEFINE FIELD updated_at ON orders VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON orders VALUE time::now() READONLY;", map[string]interface{}{}, orderV1.Order{})

	if err != nil {
		log.Fatalf("failed to define order table: %v", err)
	}

	orderV1.RegisterOrderServiceServer(grpcServer, &OrderService{repos: repos})
}

func (s *OrderService) GetOrder(ctx context.Context, req *orderV1.GetOrderRequest) (*orderV1.GetOrderResponse, error) {
	var order orderV1.GetOrderResponse

	err := s.repos.Get_by_id("orders", req.Id, &order)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &order, nil
}

func (s *OrderService) CreateOrder(ctx context.Context, req *orderV1.CreateOrderRequest) (*orderV1.CreateOrderResponse, error) {
	order := orderV1.Order{
		StoreId:     req.Order.StoreId,
		PaymentId:   req.Order.PaymentId,
		InitiatorId: req.Order.InitiatorId,
		Status:      req.Order.Status,
		OrderItems:  req.Order.OrderItems,
	}

	result, err := s.repos.Create("orders", &order)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &orderV1.CreateOrderResponse{Id: result}, nil
}
