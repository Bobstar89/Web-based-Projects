USE Shopping;

    DELETE FROM Button_Mapping;
    DELETE FROM Button;
    DELETE FROM List_Type;
    DELETE FROM Associated_View;
    
    ALTER TABLE Button AUTO_INCREMENT = 1;
    ALTER TABLE List_Type AUTO_INCREMENT = 1;
    ALTER TABLE Associated_View AUTO_INCREMENT = 1;
    
    INSERT INTO Button(name)
    VALUES ('All Groceries'), ('All Games'), ('All Movies'), ('All Music'),
           ('IGA Groceries'), ('ALDI Groceries'), ('Coles Groceries'), ('Woolworths Groceries'),
           ('IGA Specials'), ('ALDI Specials'), ('Coles Specials'), ('Woolworths Specials'),
           
           ('Playstation'), ('Nintendo Wii'), ('PC'), ('3DS'),
           
           ('EB Games'), ('JB Games'), ('Steam Games'), ('PS Store Games'), ('Nintendo eShop'),
           ('Target Games'), ('Big W Games'), ('K-mart Games'),
           ('EB Specials'), ('JB Specials'), ('Steam Specials'), ('PS Store Specials'), ('Nintendo eShop Specials'),
           ('Target Specials'), ('Big W Specials'), ('K-mart Specials');
           
    INSERT INTO List_Type(name) VALUES('Groceries'), ('Games');
    
    INSERT INTO Associated_View(name)
    VALUES ('all_games'), ('games_on_platform'), ('all_groceries'), ('iga_groceries'), ('game_sales');

    INSERT INTO Button_Mapping(button_id, type_id, view_id)
    VALUES(5, 1, 4), (2, 2, 5), (1, 1, 3);