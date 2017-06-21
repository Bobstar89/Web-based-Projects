-- Grocery Shopping Schema --
    USE Shopping;
      DROP TABLE IF EXISTS Grocery_Sale;
      DROP TABLE IF EXISTS Grocery_Special;
      DROP TABLE IF EXISTS Recipe_Item;
      DROP TABLE IF EXISTS Recipe;
      DROP TABLE IF EXISTS Grocery_Item_Weight;
      DROP TABLE IF EXISTS Grocery_Store;
      DROP TABLE IF EXISTS Grocery;

      -- Grocery_Item Schema --
      CREATE TABLE Grocery(
        id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(40) NOT NULL,
        brand VARCHAR(30),
        type VARCHAR(30) NOT NULL,

        PRIMARY KEY(id)
      );

      -- Grocery_Store Schema --
      CREATE TABLE Grocery_Store(
        id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(30) NOT NULL UNIQUE,

        PRIMARY KEY(id, name)
      );

      -- Grocery_Sale Schema --
      CREATE TABLE Grocery_Sale(
        id INT NOT NULL AUTO_INCREMENT,
        item_id INT NOT NULL,
        store_id INT NOT NULL,
        regular_price DECIMAL(4,2) NOT NULL,
        weight VARCHAR(10) NOT NULL,
        quantity TINYINT NOT NULL,

        PRIMARY KEY(id, item_id, store_id),

        CONSTRAINT FOREIGN KEY(item_id) REFERENCES Grocery(id),
        CONSTRAINT FOREIGN KEY(store_id) REFERENCES Grocery_Store(id)
      );

      -- Grocery_Special Schema --
      CREATE TABLE Grocery_Special(
        id INT NOT NULL AUTO_INCREMENT,
        item_id INT NOT NULL,
        store_id INT NOT NULL,
        description VARCHAR(30),
        discount_price DECIMAL(4,2) NOT NULL,
        weight VARCHAR(10),
        quantity TINYINT NOT NULL,
        saving DECIMAL(4,2),

        PRIMARY KEY(id, item_id, store_id),

        CONSTRAINT FOREIGN KEY(item_id) REFERENCES Grocery(id),
        CONSTRAINT FOREIGN KEY(store_id) REFERENCES Grocery_Store(id)
      );

      -- Recipe Schema --
      CREATE TABLE Recipe(
        id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(50),

        PRIMARY KEY(id)
      );

      -- Recipe_Item Schema --
      CREATE TABLE Recipe_Item(
        id INT NOT NULL AUTO_INCREMENT,
        item_id INT NOT NULL,
        recipe_id INT NOT NULL,
        quantity VARCHAR(30),

        PRIMARY KEY(id),

        CONSTRAINT FOREIGN KEY(item_id) REFERENCES Grocery(id),
        CONSTRAINT FOREIGN KEY(recipe_id) REFERENCES Recipe(id)
      );
