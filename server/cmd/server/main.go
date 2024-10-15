package main

import (
	"flag"
	"log"
	userv1 "sabitou-go/user/v1"

	config "sabitou/configs"
	"sabitou/internal/database"
	grpc_server "sabitou/internal/grpc"
	"sabitou/internal/services"

	"google.golang.org/grpc"
)

func main() {
	flag.Parse()

	config, err := config.LoadConfig()
	if err != nil {
		log.Fatalf("Failed to load configuration: %v", err)
	}

	// Use config values
	port := config.Server.GRPC.Port
	webPort := config.Server.GRPCWeb.Port
	dbName := config.Database.DbName

	db, err := database.InitDB(dbName)
	if err != nil {
		log.Fatalf("Failed to initialize database: %v", err)
	}
	defer db.Close()
	grpcServer := grpc.NewServer()

	// Register the user services.
	userService := services.NewUserService(db)
	userv1.RegisterUserServiceServer(grpcServer, userService)

	// Start gRPC server
	grpc_server.StartGRPCServer(grpcServer, &port, &webPort)

}
