package config

import (
	"fmt"
	"log"
	"os"

	"github.com/joho/godotenv"
	"gopkg.in/yaml.v3"
)

const AppConfigPath = "resources/config/app.%s.yml"

type Config struct {
	Server struct {
		GRPC struct {
			Port int `yaml:"port"`
		} `yaml:"grpc"`
		GRPCWeb struct {
			Port int `yaml:"port"`
		} `yaml:"grpc_web"`
	} `yaml:"server"`
	Database struct {
		Driver string `yaml:"driver"`
		DbName string `yaml:"db_name"`
	} `yaml:"database"`
	Cors struct {
		AllowedOrigins   []string `yaml:"allowed_origins"`
		AllowedMethods   []string `yaml:"allowed_methods"`
		AllowedHeaders   []string `yaml:"allowed_headers"`
		ExposedHeaders   []string `yaml:"exposed_headers"`
		AllowCredentials bool     `yaml:"allow_credentials"`
	} `yaml:"cors"`
	Auth struct {
		Provider string `yaml:"provider"`
	} `yaml:"auth"`
}

const (
	// DEV represents development environment
	DEV = "develop"
	// PRD represents production environment
	PRD = "production"
)

func LoadConfig() (*Config, error) {
	config := &Config{}

	if len(os.Args) < 2 {
		log.Fatal("Please specify an environment: dev or prod")
	}

	env := os.Args[1]
	var envFile string

	// Determine which .env file to load
	switch env {
	case "dev":
		envFile = ".env.dev"
	case "prod":
		envFile = ".env.prod"
	default:
		log.Fatal("Invalid environment specified. Use 'dev' or 'prod'.")
	}

	// Load the environment variables from the specified .env file
	err := godotenv.Load(envFile)
	if err != nil {
		log.Fatalf("Error loading .env file: %v", err)
	}

	data, err := os.ReadFile(fmt.Sprintf(AppConfigPath, env))
	if err != nil {
		return nil, err
	}

	err = yaml.Unmarshal(data, config)
	if err != nil {
		return nil, err
	}

	return config, nil
}
