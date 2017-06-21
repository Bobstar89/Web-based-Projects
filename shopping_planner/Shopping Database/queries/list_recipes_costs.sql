USE Shopping;

-- Select individua items and their associated recipe --

SELECT DISTINCT Recipe.name, Grocery_Item.name, regular_price, weight, Grocery_Store.name

FROM Recipe, Recipe_Item, Grocery_Item, Grocery_Sale, Grocery_Store

WHERE Grocery_Item.id = Recipe_Item.item_id AND Recipe_Item.recipe_id = Recipe.id AND Grocery_Sale.store_id = Grocery_Store.id  AND Grocery_Item.id = Grocery_Sale.item_id 

ORDER BY Recipe.name, Grocery_Item.name;

-- Select individual recipes and their total costs **BUGGY** --


SELECT Recipe.id, Recipe_Item.id, Grocery_Item.name, regular_price AS Cost

FROM Recipe, Recipe_Item, Grocery_Item, Grocery_Sale

WHERE Grocery_Item.id = Recipe_Item.item_id AND Recipe_Item.recipe_id = Recipe.id AND Grocery_Sale.item_id = Recipe_item.item_id
