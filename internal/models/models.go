package models

import (
	"github.com/EricContino/pokemon-guess-who/internal/database"
)

const PokemonPerGame int = 25

type PokemonWithTypes struct {
	NatDexNum      int
	Name           string
	Spritelocation string
	Gen            int
	Types          []database.GetAllPokemonTypesRow
}

type Game struct {
	PlayerPokemon map[int]PokemonWithTypes
	GameBoard     []PokemonWithTypes
}
