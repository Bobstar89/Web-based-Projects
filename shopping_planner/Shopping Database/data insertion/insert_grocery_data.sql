USE Shopping;

-- Groceries --
  DELETE FROM Grocery_Sale;
  DELETE FROM Grocery_Special;
  DELETE FROM Grocery_Store;
  DELETE FROM Recipe_Item;
  DELETE FROM Recipe;
  DELETE FROM Grocery;

  ALTER TABLE Grocery_Sale AUTO_INCREMENT = 1;
  ALTER TABLE Grocery_Special AUTO_INCREMENT = 1;
  ALTER TABLE Grocery_Store AUTO_INCREMENT = 1;
  ALTER TABLE Recipe_Item AUTO_INCREMENT = 1;
  ALTER TABLE Recipe AUTO_INCREMENT = 1;
  ALTER TABLE Grocery AUTO_INCREMENT = 1;

  INSERT INTO Grocery(name, brand, type)
  VALUES ('Nesquik', NULL, 'Cereal'),
         ('Nutri-Grain', NULL, 'Cereal'),
         ('Crunchy Nut Cornflakes', NULL, 'Cereal'),
         ('Vita-Brits', NULL, 'Cereal'),
         ('Rice Bubbles', NULL, 'Cereal'),
         ('Sultana Bran Oat Clusters', NULL, 'Cereal'),
         ('Plus Fibre Cereal', 'Uncle Toby\'s', 'Cereal'),
         ('Low-fat Milk', 'Trim', 'Dairy'),
         ('Apricot and Almond Meusli', NULL, 'Cereal'),
         ('Yoghurt', 'Yoplait', 'Dairy'),
         ('Crumpets', 'Golden', 'Breakfast'),
         ('Honey', 'Allorie', 'Ingredient'),
         ('Honey', NULL, 'Ingredient'),
         ('Full-cream Milk', 'Pauls', 'Dairy'),
         ('Full-cream Milk', 'Coles', 'Dairy'),
         ('Long-life Milk', 'UHT', 'Dairy');

  INSERT INTO Grocery_Store(name)
  VALUES('IGA'), ('ALDI'), ('Woolworths'), ('Coles');

  INSERT INTO Grocery_Sale(item_id, store_id, regular_price, weight, quantity)
  VALUES (1,  1, '4.99', '650g', 1),
         (2,  1, '4.99', '500g', 1),
         (3,  3, '4.85',  NULL,  1),
         (4,  1, '3.08', '375g', 1),
         (5,  1, '3.79',  NULL,  1),
         (6,  1, '5.19', '500g', 1),
         (7,  1, '6.91',  NULL,  1),
         (8,  1, '3.49', '2L',   1),
         (8,  2, '3.29', '2L',   1),
         (9,  1, '6.16',  NULL,  1),
         (10, 1, '4.11',  NULL,  1),
         (11, 1, '1.65', '6pk',  1),
         (11, 4, '2.50', '6pk',  1),
         (12, 1, '3.99', '375g', 1),
         (13, 2, '3.49', '375g', 1),
         (14, 1, '2.05', '2L',   1),
         (14, 2, '2.15', '2L',   1),
         (15, 4, '1.25', '1L',   1),
         (16, 2, '0.90', '1L',   1);

  INSERT INTO Recipe(name)
  VALUES ('Nesquik'), ('Nutri-Grain'), ('Crunchy Nut Cornflakes'),
         ('Vita-Brits'), ('Rice Bubbles'), ('Sultana Bran Oat Clusters'),
         ('Plus Fibre Cereal'), ('Meusli with Yoghurt'), ('Honey on Crumpets');

  INSERT INTO Recipe_Item(item_id, recipe_id, quantity)
  VALUES (1, 1, "1"),
         (8, 1, "1"),
         (2, 2, "1"),
         (8, 2, "1"),
         (3, 3, "1"),
         (8, 3, "1"),
         (4, 4, "1"),
         (8, 4, "1"),
         (5, 5, "1"),
         (8, 5, "1"),
         (6, 6, "1"),
         (8, 6, "1"),
         (7, 7, "1"),
         (8, 7, "1"),
         (9, 8, "1"),
         (10, 8, "1"),
         (11, 9, "1"),
         (13, 9, "1");
