USE Shopping;

SELECT Grocery_Item.name, Grocery_Store.name, regular_price, weight, Recipe_Item.quantity FROM
Grocery_Item, Grocery_Store, Grocery_Sale, Recipe_Item
WHERE Grocery_Item.id = Grocery_Sale.item_id AND Grocery_Store.id = Grocery_Sale.store_id
AND Grocery_Store.name LIKE '%IGA%' group by Grocery_Item.name, Grocery_Store.name, regular_price;
