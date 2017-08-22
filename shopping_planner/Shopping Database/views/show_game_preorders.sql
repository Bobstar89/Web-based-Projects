USE Shopping;

CREATE OR REPLACE VIEW game_preorders AS

    SELECT  Game.name AS 'Game', 
            Preorder_Bonus.name AS 'Preorder Bonus' 
            rating AS 'Rating', 
            regular_price AS 'Price'

    FROM    Game, 
            Promotion, 
            Preorder_Bonus, 
            Game_Purchase

    WHERE   Game.id = Promotion.game_id 
    AND     Promotion.preorder_bonus_id = Preorder_Bonus.id 
    AND     Game_Purchase.game_id = Game.id