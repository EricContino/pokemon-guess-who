package main

import (
	"net/http"
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
	gens := []int32{1}
	pokemon, err := cfg.db.GetPokemonByGen(r.Context(), gens)
	if err != nil {
		respondWithError(w, http.StatusNotFound, "Couldn't get chirp", err)
		return
	}

	component := PokemonList(pokemon)
	component.Render(r.Context(), w)
}
