USE Shopping;

    SELECT  Button.name AS 'Button Label', 
            List_Type.name AS 'Item Type', 
            Associated_View.name AS 'Associated View' 

    FROM    Button_Mapping, 
            List_Type,
            Button, 
            Associated_View 
         

    WHERE   button_id = Button.id 
    AND     type_id = List_Type.id 
    AND     view_id = Associated_View.id