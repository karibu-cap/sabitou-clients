package config

import (
	"os"

	"gopkg.in/yaml.v3"
)

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

func LoadConfig(configPath string) (*Config, error) {
	config := &Config{}

	data, err := os.ReadFile(configPath)
	if err != nil {
		return nil, err
	}

	err = yaml.Unmarshal(data, config)
	if err != nil {
		return nil, err
	}

	return config, nil
}
