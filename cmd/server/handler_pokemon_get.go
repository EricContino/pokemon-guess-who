package main

import (
	"net/http"

	"github.com/EricContino/pokemon-guess-who/internal/components"
	"github.com/EricContino/pokemon-guess-who/internal/database"
	"github.com/EricContino/pokemon-guess-who/internal/models"
)

func (cfg *apiConfig) handlerPokemonGet(w http.ResponseWriter, r *http.Request) {
	// type parameters struct {
	// 	Gens []int32 `json:"gens"`
	// }

	// decoder := json.NewDecoder(r.Body)
	// params := parameters{}
	// err := decoder.Decode(&params)
	// if err != nil {
	// 	respondWithError(w, http.StatusInternalServerError, "Couldn't decode parameters", err)
	// 	return
	// }
	//gens := []int32{1}
	//pokemon, err := cfg.db.GetPokemonByGen(r.Context(), gens)
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

	component := components.PokemonList(pokemonWithTypes)
	component.Render(r.Context(), w)
}
