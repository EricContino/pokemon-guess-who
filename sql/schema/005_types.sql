-- +goose Up
ALTER TABLE types ADD COLUMN logoLocation TEXT NOT NULL DEFAULT '';

UPDATE types SET logoLocation = 'static/sprites/types/Normal_icon_SV.png'    WHERE id = 1;
UPDATE types SET logoLocation = 'static/sprites/types/Fighting_icon_SV.png'    WHERE id = 2;
UPDATE types SET logoLocation = 'static/sprites/types/Flying_icon_SV.png'    WHERE id = 3;
UPDATE types SET logoLocation = 'static/sprites/types/Poison_icon_SV.png'    WHERE id = 4;
UPDATE types SET logoLocation = 'static/sprites/types/Ground_icon_SV.png'    WHERE id = 5;
UPDATE types SET logoLocation = 'static/sprites/types/Rock_icon_SV.png'    WHERE id = 6;
UPDATE types SET logoLocation = 'static/sprites/types/Bug_icon_SV.png'    WHERE id = 7;
UPDATE types SET logoLocation = 'static/sprites/types/Ghost_icon_SV.png'    WHERE id = 8;
UPDATE types SET logoLocation = 'static/sprites/types/Steel_icon_SV.png'    WHERE id = 9;
UPDATE types SET logoLocation = 'static/sprites/types/Fire_icon_SV.png'    WHERE id = 10;
UPDATE types SET logoLocation = 'static/sprites/types/Water_icon_SV.png'    WHERE id = 11;
UPDATE types SET logoLocation = 'static/sprites/types/Grass_icon_SV.png'    WHERE id = 12;
UPDATE types SET logoLocation = 'static/sprites/types/Electric_icon_SV.png'    WHERE id = 13;
UPDATE types SET logoLocation = 'static/sprites/types/Psychic_icon_SV.png'    WHERE id = 14;
UPDATE types SET logoLocation = 'static/sprites/types/Ice_icon_SV.png'    WHERE id = 15;
UPDATE types SET logoLocation = 'static/sprites/types/Dragon_icon_SV.png'    WHERE id = 16;
UPDATE types SET logoLocation = 'static/sprites/types/Dark_icon_SV.png'    WHERE id = 17;
UPDATE types SET logoLocation = 'static/sprites/types/Fairy_icon_SV.png'    WHERE id = 18;
-- +goose Down
ALTER TABLE types DROP COLUMN logoLocation;