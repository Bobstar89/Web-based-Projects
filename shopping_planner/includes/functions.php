<?php
    function commandCheck($command)
    {
        global $connection;
        
        if(!$command)
            
            die(mysqli_error($connection));
            
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
        
        $items = mysqli_query($connection, $query);
            
        commandCheck($items);
        
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

    function displayAllItems($itemType){
        $query = 'SELECT ';
    }
?>