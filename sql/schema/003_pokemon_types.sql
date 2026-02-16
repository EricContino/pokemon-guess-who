-- +goose Up
CREATE TABLE pokemon_types (
	id INT AUTO_INCREMENT,
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
-- Rattata
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (19, 1);
-- Raticate
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (20, 1);
-- Spearow
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (21, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (21, 3);
-- Fearow
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (22, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (22, 3);
-- Ekans
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (23, 4);
-- Arbok
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (24, 4);
-- Pikachu
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (25, 13);
-- Raichu
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (26, 13);
-- Sandshrew
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (27, 5);
-- Sandslash
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (28, 5);
-- Nidoran(f)
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (29, 4);
-- Nidorina
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (30, 4);
-- Nidoqueen
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (31, 4);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (31, 5);
-- Nidoran(m)
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (32, 4);
-- Nidorino
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (33, 4);
-- Nidoking
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (34, 4);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (34, 5);
-- Clefairy
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (35, 18);
-- Clefable
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (36, 18);
-- Vulpix
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (37, 10);
-- Ninetales
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (38, 10);
-- Jigglypuff
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (39, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (39, 18);
-- Wigglytuff
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (40, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (40, 18);
-- Zubat
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (41, 4);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (41, 3);
-- Golbat
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (42, 4);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (42, 3);
-- Oddish
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (43, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (43, 4);
-- Gloom
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (44, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (44, 4);
-- Vileplume
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (45, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (45, 4);
-- Paras
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (46, 7);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (46, 12);
-- Parasect
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (47, 7);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (47, 12);
-- Venonet
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (48, 7);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (48, 4);
-- Venomoth
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (49, 7);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (49, 4);
-- Diglett
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (50, 5);
-- Dugtrio
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (51, 5);
-- Meowth
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (52, 1);
-- Persian
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (53, 1);
-- Psyduck
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (54, 11);
-- Golduck
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (55, 11);
-- Mankey
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (56, 2);
-- Primeape
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (57, 2);
-- Growlithe
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (58, 10);
-- Arcanine
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (59, 10);
-- Poliwag
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (60, 11);
-- Poliwhirl
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (61, 11);
-- Poliwrath
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (62, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (62, 2);
-- Abra
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (63, 14);
-- Kadabra
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (64, 14);
-- Alakazam
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (65, 14);
-- Machop
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (66, 2);
-- Machoke
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (67, 2);
-- Machamp
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (68, 2);
-- Bellsprout
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (69, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (69, 4);
-- Weepinbell
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (70, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (70, 4);
-- Victreebel
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (71, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (71, 4);
-- Tentacool
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (72, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (72, 4);
-- Tentacruel
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (73, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (73, 4);
-- Geodude
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (74, 6);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (74, 5);
-- Graveler
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (75, 6);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (75, 5);
-- Golem
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (76, 6);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (76, 5);
-- Ponyta
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (77, 10);
-- Rapidash
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (78, 10);
-- Slowpoke
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (79, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (79, 14);
-- Slowbro
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (80, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (80, 14);
-- Magnemite
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (81, 13);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (81, 9);
-- Magneton
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (82, 13);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (82, 9);
-- Farfetch'd
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (83, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (83, 3);
-- Doduo
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (84, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (84, 3);
-- Dodrio
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (85, 1);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (85, 3);
-- Seel
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (86, 11);
-- Dewgong
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (87, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (87, 15);
-- Grimer
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (88, 4);
-- Muk
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (89, 4);
-- Shellder
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (90, 11);
-- Cloyster
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (91, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (91, 15);
-- Gastly
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (92, 8);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (92, 4);
-- Haunter
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (93, 8);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (93, 4);
-- Genger
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (94, 8);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (94, 4);
-- Onix
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (95, 6);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (95, 5);
-- Drowzee
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (96, 14);
-- Hypno
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (97, 14);
-- Krabby
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (98, 11);
-- Kingler
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (99, 11);
-- Voltorb
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (100, 13);
-- Electrode
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (101, 13);
-- Exeggcute
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (102, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (102, 14);
-- Exeggutor
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (103, 12);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (103, 14);
-- Cubone
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (104, 5);
-- Marowak
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (105, 5);
-- Hitmonlee
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (106, 2);
-- Hitmonchan
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (107, 2);
-- Lickitung
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (108, 1);
-- Koffing
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (109, 4);
-- Weezing
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (110, 4);
-- Rhyhorn
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (111, 6);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (111, 5);
-- Rhydon
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (112, 6);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (112, 5);
-- Chansey
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (113, 1);
-- Tangela
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (114, 12);
-- Kangaskhan
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (115, 1);
-- Horsea
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (116, 11);
-- Seadra
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (117, 11);
-- Goldeen
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (118, 11);
-- Seaking
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (119, 11);
-- Staryu
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (120, 11);
-- Starmie
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (121, 11);
INSERT INTO pokemon_types(natDexNum, typeId) VALUES (121, 14);

-- +goose Down
