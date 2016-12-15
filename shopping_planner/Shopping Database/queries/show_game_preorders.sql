SELECT name, rating, feature, regular_price
FROM Game, Promotion, Preorder_Bonus, Game_Purchase
WHERE Game.id = Promotion.game_id AND Promotion.preorder_bonus_id = Preorder_Bonus.id
AND Game_Purchase.game_id = Game.id;
