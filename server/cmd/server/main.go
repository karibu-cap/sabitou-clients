package main

import (
	"flag"
	"log"
	"os"

	config "server/configs"
	"server/internal/database"
	grpc_server "server/internal/grpc"
	"server/internal/repositories"
	"server/internal/services"

	"google.golang.org/grpc"
)

func main() {
	flag.Parse()

	_, config, err := config.LoadConfig()
	if err != nil {
		log.Fatalf("Failed to load configuration: %v", err)
	}
	db, err := database.InitDB(config.Database.DbName, config.Database.DbUser, config.Database.DbPass, config.Database.DbUrl)

	if err != nil {
		log.Fatalf("Failed to connect to database: %v", err)
	}
	defer db.Close()

	repo, err := repositories.NewRepository(db)
	if err != nil {
		panic(err)
	}

	grpcServer := grpc.NewServer()

	// Register the services.
	services.RegisterUserService(grpcServer, repo, db)
	services.RegisterMediaService(grpcServer, repo)
	services.RegisterArticleService(grpcServer, repo)
	services.RegisterArticleCategoryService(grpcServer, repo)
	services.RegisterBusinessService(grpcServer, repo)
	services.RegisterBusinessUserService(grpcServer, repo)
	services.RegisterBusinessArticleService(grpcServer, repo)
	services.RegisterStoreService(grpcServer, repo)
	services.RegisterStoreUserService(grpcServer, repo)
	services.RegisterInventoryService(grpcServer, repo)
	services.RegisterPaymentService(grpcServer, repo)
	services.RegisterOrderService(grpcServer, repo)

	if os.Getenv("SEED") == "true" {
		database.SeedDatabase(db)
	}

	// Start gRPC server
	grpc_server.StartGRPCServer(grpcServer, &config.Server.GRPC.Port, &config.Server.GRPCWeb.Port)

	select {}
}
