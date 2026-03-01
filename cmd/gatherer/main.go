package main

import (
	"context"
	"database/sql"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"

	"github.com/EricContino/pokemon-guess-who/internal/database"
	"github.com/joho/godotenv"
	_ "github.com/lib/pq"
)

func main() {
	godotenv.Load()
	dbURL := os.Getenv("DB_URL")
	if dbURL == "" {
		log.Fatal("DB_URL must be set")
	}

	dbConn, err := sql.Open("postgres", dbURL)
	if err != nil {
		log.Fatalf("Error opening database: %s", err)
	}
	dbQueries := database.New(dbConn)

	pokemon, err := dbQueries.GetAllPokemon(context.Background())
	if err != nil {
		log.Fatalf("Couldn't get pokemon: %s", err)
		return
	}
	for _, mon := range pokemon {
		fmt.Printf("Downloading %s to %s\n", mon.Spriteurl, mon.Spritelocation)
		err := downloadFile(mon.Spriteurl, mon.Spritelocation)
		if err != nil {
			log.Fatalf("Couldn't download %s: %s", mon.Spriteurl, err)
		}
	}
}

// downloadFile fetches a URL and saves the content to a file
func downloadFile(url string, filepath string) error {

	// 1. Make an HTTP GET request to the URL
	resp, err := http.Get(url)
	if err != nil {
		return err
	}
	// Ensure the response body is closed after the function exits
	defer resp.Body.Close()

	// 2. Create a new file on the local filesystem
	out, err := os.Create(filepath)
	if err != nil {
		return err
	}
	// Ensure the file is closed after the function exits
	defer out.Close()

	// 3. Copy the response body (image data) to the new file
	_, err = io.Copy(out, resp.Body)
	if err != nil {
		return err
	}

	return nil
}
