-- name: GetAllPokemonTypes :many
SELECT a.name, b.natDexNum, a.logoLocation 
FROM types a, pokemon_types b 
WHERE a.id = b.typeId ORDER BY b.id;