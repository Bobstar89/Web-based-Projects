<?php
    include( 'functions.php' );

    $db['host'] = "localhost";
    $db['username'] = "Bobstar89";
    $db['password'] = "Suikoden89";
    $db['database'] = "Shopping";

    foreach( $db as $authentication_element => $value )
    
        define( strtoupper( $authentication_element ), $value );
    
    $connection = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);
    commandCheck( $connection );

?>