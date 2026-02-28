package main

import (
	"database/sql"
	"log"
	"net/http"
	"os"

	"github.com/EricContino/pokemon-guess-who/internal/database"
	"github.com/joho/godotenv"
	_ "github.com/lib/pq"
)

type apiConfig struct {
	db *database.Queries
}

func main() {
	const filepathRoot = "."
	const port = "8080"

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

	apiCfg := apiConfig{
		db: dbQueries,
	}

	// 1. Create a file server for the 'static' directory
	// http.Dir specifies the local directory to serve files from
	staticFiles := http.FileServer(http.Dir("static"))

	// 2. Create a new ServeMux to handle different routes
	mux := http.NewServeMux()

	// 3. Handle requests to "/static/"
	// http.StripPrefix removes the "/static/" part of the URL path before passing it to the file server
	mux.Handle("/static/", http.StripPrefix("/static/", staticFiles))

	// 4. Handle the main page request using the templ component
	//mux.Handle("/", templ.Handler(Index()))
	mux.HandleFunc("/", apiCfg.handlerPokemonGet)

	srv := &http.Server{
		Addr:    ":" + port,
		Handler: mux,
	}

	log.Printf("Serving on port: %s\n", port)
	log.Fatal(srv.ListenAndServe())
}
