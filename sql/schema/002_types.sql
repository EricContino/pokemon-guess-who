-- +goose Up
CREATE TABLE types (
	id INT PRIMARY KEY,
	name TEXT NOT NULL,
	logoURL TEXT NOT NULL
);

INSERT INTO types (id, name, logoURL) VALUES (1, 'Normal', 'https://archives.bulbagarden.net/media/upload/8/89/Normal_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (2, 'Fighting', 'https://archives.bulbagarden.net/media/upload/e/e5/Fighting_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (3, 'Flying', 'https://archives.bulbagarden.net/media/upload/a/ab/Flying_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (4, 'Poison', 'https://archives.bulbagarden.net/media/upload/a/a7/Poison_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (5, 'Ground', 'https://archives.bulbagarden.net/media/upload/4/45/Ground_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (6, 'Rock', 'https://archives.bulbagarden.net/media/upload/b/b2/Rock_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (7, 'Bug', 'https://archives.bulbagarden.net/media/upload/9/9a/Bug_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (8, 'Ghost', 'https://archives.bulbagarden.net/media/upload/c/c4/Ghost_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (9, 'Steel', 'https://archives.bulbagarden.net/media/upload/e/e9/Steel_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (10, 'Fire', 'https://archives.bulbagarden.net/media/upload/8/8f/Fire_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (11, 'Water', 'https://archives.bulbagarden.net/media/upload/3/34/Water_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (12, 'Grass', 'https://archives.bulbagarden.net/media/upload/e/ee/Grass_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (13, 'Electric', 'https://archives.bulbagarden.net/media/upload/8/8e/Electric_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (14, 'Psychic', 'https://archives.bulbagarden.net/media/upload/e/ee/Psychic_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (15, 'Ice', 'https://archives.bulbagarden.net/media/upload/3/39/Ice_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (16, 'Dragon', 'https://archives.bulbagarden.net/media/upload/4/41/Dragon_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (17, 'Dark', 'https://archives.bulbagarden.net/media/upload/3/3b/Dark_icon_SV.png');
INSERT INTO types (id, name, logoURL) VALUES (18, 'Fairy', 'https://archives.bulbagarden.net/media/upload/a/a9/Fairy_icon_SV.png');

-- +goose Down
DROP TABLE types;
