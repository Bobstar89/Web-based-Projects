USE Shopping;

  DELETE FROM Store_Preorder;
  DELETE FROM Game_Sale;
  DELETE FROM Preorder_Bonus;
  DELETE FROM Game_Genre;
  DELETE FROM Game_Sub_Genre;
  DELETE FROM Game_Feature;
  DELETE FROM Game_Theme;
  DELETE FROM Game_Platform;
  DELETE FROM Platform;
  DELETE FROM Game_Store;
  DELETE FROM Game;

  ALTER TABLE Store_Preorder AUTO_INCREMENT = 1;
  ALTER TABLE Game_Sale AUTO_INCREMENT = 1;
  ALTER TABLE Preorder_Bonus AUTO_INCREMENT = 1;
  ALTER TABLE Game_Genre AUTO_INCREMENT = 1;
  ALTER TABLE Game_Sub_Genre AUTO_INCREMENT = 1;
  ALTER TABLE Game_Feature AUTO_INCREMENT = 1;
  ALTER TABLE Game_Theme AUTO_INCREMENT = 1;
  ALTER TABLE Game_Platform AUTO_INCREMENT = 1;
  ALTER TABLE Platform AUTO_INCREMENT = 1;
  ALTER TABLE Game_Store AUTO_INCREMENT = 1;
  ALTER TABLE Game AUTO_INCREMENT = 1;

  INSERT INTO Game(developer, name, rating)
  VALUES('Atlus', 'Persona 3: FES', 7),
        ('Atlus', 'Persona 4: The Golden', 8),
        ('Atlus', 'Persona 5', 9),
        ('Square Enix', 'Kingdom Hearts HD 1.5 Remix', 8),
        ('Square Enix', 'Kingdom Hearts HD 2.5 Remix', 6),
        ('Yacht Club Games', 'Shovel Knight', NULL),
        ('Ubisoft', 'Rayman Legends', 7),
        ('Concerned Ape', 'Stardew Valley', 7),
        ('Ensemble Studios', 'Age of Empires II HD', NULL),
        ('Psyonix', 'Rocket League', 7),
        ('Distaster Cake', 'Soul Saga', 8),
        ('Obsidian Entertainment', 'South Park: The Stick of Truth', 6),
        ('Bandai Namco', 'Digimon World', 7);

  INSERT INTO Platform(name)
  VALUES ('Playstation 4'),
         ('Playstation 3'),
         ('Nindendo 3DS'),
         ('Xbox 360'),
         ('Xbox One'),
         ('Wii'),
         ('Wii U'),
         ('Nintendo 64'),
         ('Super Nintendo'),
         ('Playstation Vita'),
         ('PC');

  INSERT INTO Game_Platform(game_id, platform_id)
  VALUES (1, 10),
         (2, 10),
         (3, 1),
         (4, 1),
         (4, 2),
         (5, 1),
         (5, 2),
         (6, 1),
         (6, 11),
         (7, 1),
         (7, 11),
         (8, 11),
         (9, 11),
         (10, 11),
         (11, 11),
         (12, 11),
         (13, 1;

  INSERT INTO Game_Store(name)
  VALUES ('EB Games'), ('JB Hi-Fi'), ('Steam'),
         ('K-Mart'), ('Big W'), ('Target'),
         ('Playstation'), ('Nintendo eShop');

  INSERT INTO Preorder_Bonus(feature)
  VALUES('Steelbook'), ('DLC'), ('Map'), ('Figurine');

  INSERT INTO Store_Preorder(store_id, game_id, platform_id, preorder_bonus_id, sale_price)
  VALUES (1, 3,  1, 1, 99.95),
         (1, 13, 1, NULL, 89.95  );

  INSERT INTO Game_Sale(store_id, item_id, platform_id, description, regular_price)
  VALUES (2, 3, 1, 'Standard', 99.00),
         (1, 6, 11, 'Standard', 39.95),
         (3, 6, 11, 'Standard', 20.25),
         (7, 1, 1, 'Standard', 22.95),
         (7, 7, 1, 'Standard', 39.95),
         (7, 7, 2, 'Standard', 24.95),
         (3, 7, 11, 'Standard', 33.70),
         (3, 8, 11, '33% Off', 13.45),
         (3, 8, 11, 'Standard', 20.15),
         (3, 9, 11, '75% Off', 6.70),
         (3, 10, 11, 'Standard', 26.85),
         (3, 10, 11, '40% Off', 16.10),
         (3, 12, 11, 'Standard', 44.30),
         (3, 12, 11, '75% Off', 11.05);

  INSERT INTO Game_Genre(game_id, genre)
  VALUES (1, 'Role-playing Game'),
         (2, 'Role-playing Game'),
         (3, 'Role-playing Game'),
         (4, 'Role-playing Game'),
         (4, 'Action'),
         (4, 'Adventure'),
         (5, 'Role-playing Game'),
         (5, 'Action'),
         (5, 'Adventure'),
         (6, 'Platformer'),
         (7, 'Platformer'),
         (7, 'Action'),
         (7, 'Adventure'),
         (8, 'Farming Simulator'),
         (8, 'Role-playing Game'),
         (9, 'Strategy'),
         (10, 'Sports'),
         (10, 'Racing'),
         (11, 'Role-playing Game'),
         (12, 'Role-playing Game');

  INSERT INTO Game_Sub_Genre(game_id, genre)
  VALUES (1, 'Dungeon Crawler'),
         (1, 'Single-player'),
         (1, 'Turn-based'),
         (1, '3D'),
         (2, 'Dungeon Crawler'),
         (2, 'Single-player'),
         (2, 'Turn-based'),
         (2, '3D'),
         (3, 'Dungeon Crawler'),
         (3, 'Single-player'),
         (3, 'Turn-based'),
         (3, '3D'),
         (4, 'Real-time'),
         (4, 'Single-player'),
         (4, '3D'),
         (5, 'Real-time'),
         (5, 'Single-player'),
         (5, '3D'),
         (6, '2D'),
         (6, 'Side-scrolling'),
         (7, '2D'),
         (7, 'Side-scrolling'),
         (7, 'Local Multiplayer'),
         (8, '2D'),
         (8, 'Single-player'),
         (8, 'Real-time'),
         (9, 'Real-time'),
         (9, 'Multiplayer'),
         (10, 'Real-time'),
         (10, 'Single-player'),
         (10, 'Local Multiplayer'),
         (10, 'Online Multiplayer'),
         (10, 'Action'),
         (10, '3D'),
         (11, 'Adventure'),
         (11, '3D'),
         (12, '3D'),
         (12, 'Turn-based'),
         (12, 'Single-player');

  INSERT INTO Game_Feature(game_id, feature)
  VALUES(1, 'Character Development'), (1, 'Monster Collection'), (1, 'Time Management'),
        (1, 'Story-driven'), (1, 'Date-sim'),
        (2, 'Character Development'), (2, 'Monster Collection'), (2, 'Time Management'),
        (2, 'Story-driven'), (2, 'Date-sim'),
        (3, 'Character Development'), (3, 'Monster Collection'), (3, 'Time Management'),
        (3, 'Story-driven'), (3, 'Date-sim'),
        (4, 'Quick-time Events'), (4, 'Collection'), (4, 'World-based Progression'),
        (4, 'Arcade shooting minigame - In KH1'), (4, 'Card deck management - As seen in KH: Chain of Memories'),
        (4, 'Story-driven'), (4, 'World-based'),(4, 'Multiple difficulty settings'), (4, 'Innovative battle system'),
        (5, 'Arcade shooting minigame - In KH2'), (5, 'World-based'),
        (5, 'Story-driven'), (5, 'Multiple difficulty settings'),
        (6, '8-bit graphics'), (6, 'Equipment purchasing'), (6, 'Level-based'), (6, 'New Game Plus mode'),
        (6, 'Cheats via passwords'),
        (7, 'Level-based'), (7, 'Collection'), (7, 'Character customisation'), (7, '120 levels'),
        (7, 'Remastered levels from original game'),
        (8, 'Open-ended'), (8, 'Craft mechanics'), (8, 'Multiple level up elements'),
        (8, 'Cooking'), (8, 'Controller support'), (8, 'Date-sim'),
        (8, 'Character customisation'),
        (9, 'Resource management'), (9, 'Evolution'),
        (10, 'Powerups'), (10, 'Car customisation'), (10, 'Console independent multiplayer'),
        (11, 'Story-driven'), (11, 'Multiple difficulty settings'), (11, 'Innovative battle system'),
        (11, 'Craft mechanics'), (11, 'Weapon customisation'), (11, 'Weapon upgrading'),
        (11, 'Overworld'), (11, 'Airship overworld travel'), (11, 'Cooking'),
        (12, 'Story-driven');

  INSERT INTO Game_Theme(game_id, theme)
  VALUES(1, 'Friendship'), (1, 'Highschool'), (1, 'Romance'),
        (1, 'Supernatural'), (1, 'Anime'), (1, 'Japanese'),
        (1, 'Save individuals'),
        (2, 'Friendship'), (2, 'Highschool'), (2, 'Romance'),
        (2, 'Supernatural'), (2, 'Anime'), (2, 'Japanese'),
        (1, 'Save individuals'),
        (3, 'Friendship'), (3, 'Japanese'), (3, 'Romance'),
        (3, 'Supernatural'), (3, 'Anime'),
        (4, 'Friendship'), (4, 'Light and Dark'), (4, 'Japanese'),
        (4, 'Romance'), (4, 'Disney'), (4, 'Final Fantasy'),
        (4, 'Save the world'),
        (5, 'Friendship'), (5, 'Light and Dark'), (5, 'Japanese'),
        (5, 'Romance'), (5, 'Disney'), (5, 'Final Fantasy'),
        (5, 'Save the world'),
        (6, NULL), (8, 'Relaxation'), (8, 'Exploration'),
        (9, 'Medieval'), (9, 'Conquer oppoenent\'s land'),
        (10, NULL),
        (11, 'Anime'), (11, 'Save the world'), (11, 'Alchemy'),
        (12, NULL);
