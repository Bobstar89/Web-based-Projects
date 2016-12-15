SELECT Game.name AS 'Game', Store.name AS 'Store', Platform.name AS 'Platform',
sale_price AS 'Cost', Game_Sale.description AS 'Description'
FROM Game, Platform, Store, Game_Sale
WHERE Game_Sale.game_id = Game.id AND Game_Sale.store_id = Store.id AND
Game_Sale.platform_id = Platform.id ORDER BY Store.name ASC;
