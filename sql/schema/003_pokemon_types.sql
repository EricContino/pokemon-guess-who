-- +goose Up
CREATE TABLE pokemon_types (
	natDexNum INT,
	typeId INT, 
	PRIMARY KEY (natDexNum, typeId),
	FOREIGN KEY natDexNum REFERENCES pokemon(natDexNum),
	FOREIGN KEY typeId REFERNECES types(id)
);

--Bulbasaur
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (1, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (1, 4);
-- Ivysaur
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (2, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (2, 4);
-- Venusaur
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (3, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (3, 4);
-- Charmander
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (4, 10);
-- Charmeleon
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (5, 10);
-- Charizard
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (6, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (6, 3);
-- Squirtle
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (7, 11);
-- Wartortle
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (8, 11);
-- Blastoise
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (9, 11);
-- Caterpie
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (10, 7);
-- Metapod
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (11, 7);
-- Butterfree
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (12, 7);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (12, 3);
-- Weedle
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (13, 7);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (13, 4);
-- Metapod
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (14, 7);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (14, 4);
-- Butterfree
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (15, 7);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (15, 4);
-- Pidgey
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (16, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (16, 3);
-- Pidgeotto
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (17, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (17, 3);
-- Pidgeot
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (18, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (18, 3);


-- +goose Down
