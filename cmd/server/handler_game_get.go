package main

func (cfg *apiConfig) handlerGameGet(w http.ResponseWriter, r *http.Request) {
	gameCode := int(r.PathValue("gameCode"))
	playerNum := int(r.PathValue("playerNum"))
	
	// TODO check if game exists
	// if not
	// if player 1 create the game
	// if player 2 say game not created
	// return game date

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
}
