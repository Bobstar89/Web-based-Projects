<?php 
    include('includes/header.php'); 
    include('includes/nav.php'); 

    if(isset($_GET['table'])){
        $table = $_GET['table'];
    }

    if(isset($_GET['list-type']))
    {
        $listType = $_GET['list-type'];
    }
?>
    <!-- Page Content -->
    <div class="container">

        <!-- Heading Row -->
        <!-- <div class="row">
            <div class="col-md-8">
                <img class="img-responsive img-rounded" src="http://placehold.it/900x350" alt="">
            </div> -->
            <!-- /.col-md-8 -->
            <!-- <div class="col-md-4">
                <h1>Business Name or Tagline</h1>
                <p>This is a template that is great for small businesses. It doesn't have too much fancy flare to it, but it makes a great use of the standard Bootstrap core components. Feel free to use this template for any project you want!</p>
                <a class="btn btn-primary btn-lg" href="#">Call to Action!</a>
            </div> -->
            <!-- /.col-md-4 -->
        <!-- </div> -->
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-2">
                <?php 
                    if(isset($listType))
                        
                        fetchButtons($listType, $table);
                    else
                        
                        header('index.php');
                ?>
            </div>
            <div class="col-md-10">
            <table class='table'>
                <?php
                    if(isset($table))
                        
                        displayitems($table);
                    else
                        
                        header('index.php');
                ?>
            </table>
            <!-- /.col-md-12 -->
        </div>
        <!-- /.row -->
        
<?php include('includes/footer.php') ?>
