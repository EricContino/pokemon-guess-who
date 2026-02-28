package models

import (
	"github.com/EricContino/pokemon-guess-who/internal/database"
)

type PokemonWithTypes struct {
	NatDexNum      int
	Name           string
	Spritelocation string
	Gen            int
	Types          []database.GetAllPokemonTypesRow
}
