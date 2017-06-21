USE Shopping;

    SELECT  Grocery.name AS Item, 
            Grocery_Store.name AS Store, 
            regular_price AS Price, 
            weight AS Weight 
    
    FROM    Grocery, 
            Grocery_Store, 
            Grocery_Sale
            
    WHERE   Grocery.id = Grocery_Sale.item_id 
    AND     Grocery_Store.id = Grocery_Sale.store_id
    
    GROUP BY Grocery.name, 
             Grocery_Store.name, 
             regular_price;
