-- +goose Up
CREATE TABLE pokemon (
	nat_dex_num INT PRIMARY KEY,
	name TEXT NOT NULL,
	gen INT NOT NULL,
	sprite_url TEXT NOT NULL
);


-- +goose Down
DROP TABLE pokemon;
