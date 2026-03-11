package main

import (
	"math/rand/v2"
	"net/http"
	"slices"
	"strconv"

	"github.com/EricContino/pokemon-guess-who/internal/components"
	"github.com/EricContino/pokemon-guess-who/internal/database"
	"github.com/EricContino/pokemon-guess-who/internal/models"
)

func (cfg *apiConfig) handlerGameGet(w http.ResponseWriter, r *http.Request) {
	gameCode, err := strconv.Atoi(r.PathValue("gameCode"))
	if err != nil {
		// Handle the error: the path was not a valid integer
		respondWithError(w, http.StatusBadRequest, "Game Code Improper format", err)
		return
	}
	playerNum, err := strconv.Atoi(r.PathValue("playerNum"))
	if err != nil {
		// Handle the error: the path was not a valid integer
		respondWithError(w, http.StatusBadRequest, "Player Number Improper format", err)
		return
	}

	// TODO check if game exists
	// if not
	// if player 1 create the game
	// if player 2 say game not created
	// return game date
	game, exists := cfg.cache.Get(gameCode)
	if !exists {
		if playerNum == 1 {
			pokemon, err := cfg.db.GetAllPokemon(r.Context())
			if err != nil {
				respondWithError(w, http.StatusNotFound, "Couldn't get pokemon", err)
				return
			}

			pokemonWithTypes := make(map[int]models.PokemonWithTypes)
			for _, mon := range pokemon {
				pokemonWithTypes[int(mon.Natdexnum)] = models.PokemonWithTypes{
					NatDexNum:      int(mon.Natdexnum),
					Name:           mon.Name,
					Gen:            int(mon.Gen),
					Spritelocation: mon.Spritelocation,
					Types:          make([]database.GetAllPokemonTypesRow, 0),
				}
			}

			pokemonTypes, err := cfg.db.GetAllPokemonTypes(r.Context())
			if err != nil {
				respondWithError(w, http.StatusNotFound, "Couldn't get pokemon types", err)
			}
			for _, monType := range pokemonTypes {
				if mon, ok := pokemonWithTypes[int(monType.Natdexnum.Int32)]; ok {
					mon.Types = append(mon.Types, monType)
					pokemonWithTypes[int(monType.Natdexnum.Int32)] = mon
				}
			}
			selectedPokemon := []int{}
			// TODO this will get more complicated when more gens are implemented
			min := 1
			max := 151
			for i := 0; i < models.PokemonPerGame; i++ {
				natDexNum := -1
				for natDexNum == -1 {
					randomInRange := min + rand.IntN(max-min)
					if !slices.Contains(selectedPokemon, randomInRange) {
						natDexNum = randomInRange
					}
				}
				selectedPokemon = append(selectedPokemon, natDexNum)
			}

			gameBoard := []models.PokemonWithTypes{}
			for _, val := range selectedPokemon {
				gameBoard = append(gameBoard, pokemonWithTypes[val])
			}

			playerMons := make(map[int]models.PokemonWithTypes)
			playerMonNum := rand.IntN(models.PokemonPerGame - 1)
			playerMons[1] = gameBoard[playerMonNum]
			playerMonNum = rand.IntN(models.PokemonPerGame - 1)
			playerMons[2] = gameBoard[playerMonNum]

			game = models.Game{
				PlayerPokemon: playerMons,
				GameBoard:     gameBoard,
			}
			cfg.cache.Add(gameCode, game)
		} else {
			respondWithError(w, http.StatusNotFound, "Game doesn't exist to join", err)
			return
		}
	}
	component := components.Game(playerNum, game)
	component.Render(r.Context(), w)
}
