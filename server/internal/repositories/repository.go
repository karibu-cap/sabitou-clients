package repositories

import (
	"fmt"
	"log"

	"github.com/surrealdb/surrealdb.go"
)

type Repository struct {
	db *surrealdb.DB
}

func NewRepository(db *surrealdb.DB) (*Repository, error) {

	return &Repository{db: db}, nil
}

func (r *Repository) Create(table string, data interface{}) (string, error) {
	log.Printf("Data: %v", data)
	result, err := r.db.Create(table, data)
	if err != nil {
		return "", fmt.Errorf("failed to create record: %w", err)
	}

	if len(result.(map[string]interface{})) == 0 {
		return "", fmt.Errorf("no record created")
	}
	return result.(map[string]interface{})["id"].(string), nil
}

func (r *Repository) Get_by_id(table, id string, result interface{}) error {
	records, err := r.db.Select(fmt.Sprintf("%s:%s", table, id))
	if err != nil {
		return fmt.Errorf("failed to read record: %w", err)
	}

	if len(records.(map[string]interface{})) == 0 {
		return fmt.Errorf("no record found")
	}
	log.Printf("Records: %v", records)
	return surrealdb.Unmarshal(records.(map[string]interface{}), result)
}

func (r *Repository) Update(table, id string, data interface{}) error {
	_, err := r.db.Update(fmt.Sprintf("%s:%s", table, id), data)
	if err != nil {
		return fmt.Errorf("failed to update record: %w", err)
	}

	return nil
}

func (r *Repository) Delete_by_id(table, id string) error {
	_, err := r.db.Delete(fmt.Sprintf("%s:%s", table, id))
	if err != nil {
		return fmt.Errorf("failed to delete record: %w", err)
	}

	return nil
}

func (r *Repository) Query(query string, vars map[string]interface{}, result interface{}) error {
	queryResult, err := r.db.Query(query, vars)
	if err != nil {
		return fmt.Errorf("failed to execute query: %w", err)
	}
	if err := surrealdb.Unmarshal(queryResult, &result); err != nil {
		return fmt.Errorf("failed to execute query: %w", err)
	}
	return nil
}
