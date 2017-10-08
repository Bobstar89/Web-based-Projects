USE Shopping;

    SELECT  Grocery.id AS ID,
            Grocery.name AS Item,
            IFNULL(brand, '') AS Brand,
            Grocery_Store.name AS Store,
            regular_price AS Price,
            IFNULL(weight, '') AS Weight,
            quantity AS Quantity

    FROM    Grocery,
            Grocery_Store,
            Grocery_Sale

    WHERE   Grocery.id = Grocery_Sale.item_id
    AND     Grocery_Store.id = Grocery_Sale.store_id

    GROUP BY Grocery.name,
             Grocery_Store.name,
             regular_price;
