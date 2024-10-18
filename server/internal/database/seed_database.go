package database

import (
	"encoding/json"
	"log"
	"os"

	"github.com/surrealdb/surrealdb.go"
)

func SeedDatabase(db *surrealdb.DB) error {
	fakeDatabase, err := os.ReadFile("resources/config/fake_database.json")
	if err != nil {
		log.Fatalf("Failed to load the fake data base: %v", err)
	}

	var parseData map[string]interface{}
	parseError := json.Unmarshal(fakeDatabase, &parseData)
	if parseError != nil {
		log.Fatalf("Error unmarshaling JSON: %v", parseError)
	}
	var collections = []string{"users", "medias", "articles", "articleCategories", "businesses", "businessUsers", "businessArticles", "stores", "storeUsers", "payments", "orders", "inventory"}

	for _, collection := range collections {
		for _, data := range parseData[collection].([]interface{}) {
			_, err := db.Create(collection, &data)
			if err != nil {
				log.Printf("Failed to create %s:  %v", collection, err)
			} else {
				log.Printf("Inserted %s", collection)
			}
		}
	}

	// for _, user := range parseData["users"].([]interface{}) {

	// 	_, err := db.Create("users", &user)
	// 	if err != nil {
	// 		log.Printf("Failed to create user %v", err)
	// 	} else {
	// 		log.Printf("Inserted user")
	// 	}
	// }

	// // Insert Media
	// for _, media := range parseData["medias"].([]interface{}) {
	// 	_, err := db.Create("medias", media)
	// 	if err != nil {
	// 		log.Printf("Failed to create media %v", err)
	// 	} else {
	// 		log.Printf("Inserted media")
	// 	}
	// }

	// // Insert Articles
	// for _, article := range parseData["articles"].([]interface{}) {
	// 	_, err := db.Create("articles", article)
	// 	if err != nil {
	// 		log.Printf("Failed to create article %v", err)
	// 	} else {
	// 		log.Printf("Inserted article")
	// 	}
	// }

	// // Insert Stores
	// for _, store := range parseData["stores"].([]interface{}) {
	// 	_, err := db.Create("stores", store)
	// 	if err != nil {
	// 		log.Printf("Failed to create store %v", err)
	// 	} else {
	// 		log.Printf("Inserted store")
	// 	}
	// }

	// // Insert Orders
	// for _, order := range parseData["orders"].([]interface{}) {
	// 	_, err := db.Create("orders", order)
	// 	if err != nil {
	// 		log.Printf("Failed to create order %v", err)
	// 	} else {
	// 		log.Printf("Inserted order")
	// 	}
	// }

	return nil
}
