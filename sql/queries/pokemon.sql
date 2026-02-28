-- name: GetPokemonByGen :many
SELECT * FROM pokemon
WHERE gen = ANY(sqlc.arg(gens)::int[])
ORDER BY natDexNum;

-- name: GetAllPokemon :many
SELECT * FROM pokemon
ORDER BY natDexNum;