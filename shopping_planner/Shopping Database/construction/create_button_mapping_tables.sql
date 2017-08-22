-- Button Mapping Schema --
    USE Shopping;
        
        
        
        DROP TABLE IF EXISTS Button_Mapping;
        DROP TABLE IF EXISTS Button;
        DROP TABLE IF EXISTS List_Type;
        DROP TABLE IF EXISTS Associated_View;
    -- Button Schema --
      CREATE TABLE Button(
        id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(30) NOT NULL,
          
        PRIMARY KEY(id, name)
      );
      
      CREATE TABLE List_Type(
        id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(30) NOT NULL,
          
        PRIMARY KEY(id, name)
      );
      
    -- List Generation Schema --
      CREATE TABLE Associated_View(
        id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(30) NOT NULL,
          
        PRIMARY KEY(id, name)
      );
      
    -- Button Mapping Pivot Schema --
    
        CREATE TABLE Button_Mapping(
            button_id INT NOT NULL,
            type_id INT NOT NULL,
            view_id INT NOT NULL,
            
            PRIMARY KEY(button_id, type_id, view_id),
            
            CONSTRAINT FOREIGN KEY(button_id) REFERENCES Button(id),
            CONSTRAINT FOREIGN KEY(type_id) REFERENCES List_Type(id),
            CONSTRAINT FOREIGN KEY(view_id) REFERENCES Associated_View(id)
        );