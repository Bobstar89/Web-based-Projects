USE Shopping;

SET global group_concat_max_len = 4000;

-- Get game details --
SELECT name AS 'Name',
        GROUP_CONCAT(DISTINCT feature SEPARATOR '\n') Feature,
         GROUP_CONCAT(DISTINCT theme SEPARATOR '\n') Themes,
         Game_Genre.genre AS 'Genre',
         GROUP_CONCAT(DISTINCT Game_Sub_Genre.genre SEPARATOR '\n') 'Sub-Genres'
FROM Game, Game_Genre, Game_Sub_Genre, Game_Feature, Game_Theme
WHERE  Game.id = Game_Genre.game_id AND Game.id = Game_Sub_Genre.game_id AND
Game.id = Game_Theme.game_id
 AND Game.id = Game_Feature.game_id
GROUP BY name;
