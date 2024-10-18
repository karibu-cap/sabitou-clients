package services

import (
	"context"
	"log"
	"server/internal/repositories"

	paymentV1 "sabitou/proto/payment/v1"

	"connectrpc.com/connect"
	"google.golang.org/grpc"
)

type PaymentService struct {
	repos *repositories.Repository
	paymentV1.UnimplementedPaymentServiceServer
}

func RegisterPaymentService(grpcServer *grpc.Server, repos *repositories.Repository) {
	err := repos.Query("DEFINE TABLE IF NOT EXISTS payments SCHEMAFULL;"+
		"DEFINE FIELD method ON TABLE payments TYPE string;"+
		"DEFINE FIELD amount_paid_in_xaf ON TABLE payments TYPE float;"+
		"DEFINE FIELD updated_at ON payments VALUE time::now() READONLY;"+
		"DEFINE FIELD created_at ON payments VALUE time::now() READONLY;", map[string]interface{}{}, paymentV1.Payment{})

	if err != nil {
		log.Fatalf("failed to define payment table: %v", err)
	}

	paymentV1.RegisterPaymentServiceServer(grpcServer, &PaymentService{repos: repos})
}

func (s *PaymentService) GetPayment(ctx context.Context, req *paymentV1.GetPaymentRequest) (*paymentV1.GetPaymentResponse, error) {
	var payment paymentV1.GetPaymentResponse

	err := s.repos.Get_by_id("payments", req.Id, &payment)
	if err != nil {
		return nil, connect.NewError(connect.CodeNotFound, err)
	}

	return &payment, nil
}

func (s *PaymentService) CreatePayment(ctx context.Context, req *paymentV1.CreatePaymentRequest) (*paymentV1.CreatePaymentResponse, error) {
	payment := paymentV1.Payment{
		Method:          req.Method,
		AmountPaidInXaf: req.AmountPaidInXaf,
	}

	result, err := s.repos.Create("payments", &payment)
	if err != nil {
		return nil, connect.NewError(connect.CodeInternal, err)
	}
	return &paymentV1.CreatePaymentResponse{Id: result}, nil
}
