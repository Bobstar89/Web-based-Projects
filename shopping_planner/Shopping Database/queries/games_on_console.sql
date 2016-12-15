SELECT G.name AS 'Game', P.name AS 'Platform' FROM Game G, Platform P, Game_Platform AS pivot
WHERE pivot.game_id = G.id AND pivot.platform_id = P.id;
