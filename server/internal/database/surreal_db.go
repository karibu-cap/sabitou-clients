package database

import (
	"fmt"

	"github.com/surrealdb/surrealdb.go"
)

func InitDB(dbName, dbUser, dbPassword, dbUrl string) (*surrealdb.DB, error) {

	db, err := surrealdb.New(dbUrl)
	if err != nil {
		panic(err)
	}

	if _, err = db.Signin(map[string]interface{}{
		"user": dbUser,
		"pass": dbPassword,
	}); err != nil {
		panic(err)
	}

	if err := createDatabase(db, dbName); err != nil {
		fmt.Printf("Error creating database: %v\n", err)
		panic(err)
	}

	return db, nil
}

func createDatabase(db *surrealdb.DB, dbName string) error {
	// Create database if not exists
	if _, err := db.Use(dbName, dbName); err != nil {
		return err
	}

	return nil
}
