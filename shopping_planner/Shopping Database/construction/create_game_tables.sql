-- Shopping Game Purchasing Schema --
    USE Shopping;
      DROP TABLE IF EXISTS Game_Platform;
      DROP TABLE IF EXISTS Store_Preorder;
      DROP TABLE IF EXISTS Preorder_Bonus;
      DROP TABLE IF EXISTS Game_Sale;
      DROP TABLE IF EXISTS Game_Genre;
      DROP TABLE IF EXISTS Game_Sub_Genre;
      DROP TABLE IF EXISTS Game_Feature;
      DROP TABLE IF EXISTS Game_Theme;
      DROP TABLE IF EXISTS Game;
      DROP TABLE IF EXISTS Game_Store;
      DROP TABLE IF EXISTS Platform;

      -- Game Schema --
        CREATE TABLE Game(
          id INT NOT NULL AUTO_INCREMENT,
          developer VARCHAR(30),
          name VARCHAR(35) NOT NULL UNIQUE,
          description VARCHAR(60),
          rating TINYINT,

          PRIMARY KEY(id)
        );

      -- Platform Schema
        CREATE TABLE Platform(
          id INT NOT NULL AUTO_INCREMENT,
          name VARCHAR(30) NOT NULL UNIQUE,

          PRIMARY KEY(id, name)
        );

      -- Game/Platform Pivot Schema --
        CREATE TABLE Game_Platform (
          game_id INT NOT NULL,
          platform_id INT NOT NULL,

          PRIMARY KEY (game_id, platform_id),

          CONSTRAINT FOREIGN KEY(game_id) REFERENCES Game(id),
          CONSTRAINT FOREIGN KEY(platform_id) REFERENCES Platform(id)
        );

      -- Store Schema --
        CREATE TABLE Game_Store (
          id INT NOT NULL AUTO_INCREMENT,
          name VARCHAR(30) NOT NULL UNIQUE,

          PRIMARY KEY(id, name)
        );

      -- Preorder_Bonus Schema --
        CREATE TABLE Preorder_Bonus(
          id INT NOT NULL AUTO_INCREMENT,
          feature VARCHAR(30) NOT NULL,

          PRIMARY KEY(id)
        );

      -- Store/Preorder_Bonus Pivot Schema --
        CREATE TABLE Store_Preorder(
          store_id INT NOT NULL,
          game_id INT NOT NULL,
          platform_id INT NOT NULL,
          preorder_bonus_id INT NOT,
          sale_price DECIMAL(5,2),

          CONSTRAINT FOREIGN KEY(store_id) REFERENCES Game_Store(id),
          CONSTRAINT FOREIGN KEY(game_id) REFERENCES Game(id),
          CONSTRAINT FOREIGN KEY(platform_id) REFERENCES Platform(id),
          CONSTRAINT FOREIGN KEY(preorder_bonus_id) REFERENCES Preorder_Bonus(id)
        );

      -- Game_Sale Schema --
        CREATE TABLE Game_Sale(
          id INT NOT NULL AUTO_INCREMENT,
          store_id INT NOT NULL,
          item_id INT NOT NULL,
          platform_id INT NOT NULL,
          description VARCHAR(30) NOT NULL,
          regular_price DECIMAL(5,2),

          PRIMARY KEY(id),

          CONSTRAINT FOREIGN KEY(store_id) REFERENCES Game_Store(id),
          CONSTRAINT FOREIGN KEY(game_id) REFERENCES Game(id),
          CONSTRAINT FOREIGN KEY(platform_id) REFERENCES Platform(id)
        );

      -- Game Genre Schema --
        CREATE TABLE Game_Genre(
         id INT NOT NULL AUTO_INCREMENT,
         game_id INT NOT NULL,
         genre VARCHAR(30) NOT NULL,

         PRIMARY KEY(id, game_id, genre),

         CONSTRAINT FOREIGN KEY(game_id) REFERENCES Game(id)
        );

    -- Game Sub_Genre Schema --
      CREATE TABLE Game_Sub_Genre(
        id INT NOT NULL AUTO_INCREMENT,
        game_id INT NOT NULL,
        genre VARCHAR(30) NOT NULL,

        PRIMARY KEY(id, game_id, genre),

        CONSTRAINT FOREIGN KEY(game_id) REFERENCES Game(id)
      );

    -- Game Features Schema --
      CREATE TABLE Game_Feature(
        id INT NOT NULL AUTO_INCREMENT,
        game_id INT NOT NULL,
        feature VARCHAR(120),

        PRIMARY KEY(id, game_id, feature),
        CONSTRAINT FOREIGN KEY(game_id) REFERENCES Game(id)
      );

    -- Game Theme --
      CREATE TABLE Game_Theme(
        id INT NOT NULL AUTO_INCREMENT,
        game_id INT NOT NULL,
        theme VARCHAR(120),

        PRIMARY KEY(id, game_id, theme),
        CONSTRAINT FOREIGN KEY(game_id) REFERENCES Game(id)
      );
