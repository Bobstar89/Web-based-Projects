<?php
    function commandCheck($command)
    {
        global $connection;
        
        if(!$command)
            
            die(mysqli_error($connection));
        
        else
         
            return $command;
            
    }
   
    function fetchTopItems($itemType, $queryOptions)
    {
        global $connection;
        
        $query = "SELECT {$itemType}.name AS item_name, {$itemType}_Store.name AS store_name, regular_price AS price " . 
                    
                    "FROM {$itemType}, {$itemType}_Store, {$itemType}_Sale " .
                      
                 "WHERE {$itemType}.id = {$itemType}_Sale.item_id " . 
                    
                    "AND {$itemType}_Store.id = {$itemType}_Sale.store_id " .
                    "{$queryOptions} " .
            
                 "GROUP BY {$itemType}.name, {$itemType}_Store.name ORDER BY price LIMIT 10";
        
        $items = commandCheck( mysqli_query($connection, $query) );
        
        return $items;
    }
        
    function displayTopItems($itemType, $queryOptions)
    {
        global $connection;
        
        $itemData = fetchTopItems($itemType, $queryOptions);
                  
        while($rowData = mysqli_fetch_assoc($itemData))
        {
            $itemName = $rowData['item_name'];
            $itemPrice = $rowData['price'];
            $storeName = $rowData['store_name'];

            echo "<tr>" .
                    "<td>$itemName</td>" .
                    "<td>$itemPrice</td>" .
                 "</tr>";
        }
    }

    function fetchButtons($itemList, $table)
    {
        global $connection;
        
        $listType = ucfirst($itemList);
        
        $query = "SELECT `Button Label` FROM All_Button_Mapping WHERE `Item Type` = '{$listType}'";
        
        $selectAllButtons = commandCheck( mysqli_query($connection, $query) );
        
        while( $row = mysqli_fetch_assoc($selectAllButtons) )
        {
            $tableReferredTo = strtolower($row['Button Label']);
            $tableReferredTo = str_replace(' ', '_', $tableReferredTo);
            
            echo "<a class='list-button' href='list.php?table={$tableReferredTo}&list-type={$itemList}'>" . $row['Button Label'] . "</a>";
        }
    }

    function fetchItemAttributes($table)
    {
        global $connection;
        
        $query = "SHOW COLUMNS FROM `{$table}`";
        
        return commandCheck( mysqli_query($connection, $query) );
    }

    function retrieveItems($table)
    {
        global $connection;
        
        $query = "SELECT * FROM $table";

        return commandCheck( mysqli_query($connection, $query) );
    }

    function displayItems($table)
        
    {   
        $itemAttributes = fetchItemAttributes($table);
        $itemDetails = retrieveItems($table);
        
        echo "<table class='table'>" .
                 "<thead>";
        while($itemAttribute = mysqli_fetch_assoc($itemAttributes))
        {
            echo     '<th>' . $itemAttribute['Field'] . '</th>';
        }
        
        echo     "</thead>" .
                 "<tbody>";
            
            while($itemInfo = mysqli_fetch_assoc($itemDetails))
            {
                echo '<tr>';
                
                foreach($itemAttributes as $attribute)
                    
                     echo '<td>' . nl2br( $itemInfo[ $attribute['Field'] ] ) . '</td>';
                
                echo '</tr>';
            }
            
        echo    "</tbody>" . 
            "</table>";
            
    }
?>