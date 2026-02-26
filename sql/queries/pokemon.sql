-- name: GetPokemonByGen :many
SELECT * FROM pokemon
WHERE gen = ANY(sqlc.arg(gens)::int[])
ORDER BY natDexNum;