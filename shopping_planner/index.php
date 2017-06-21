<?php include('includes/header.php') ?>
   
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav pull-right">
                    <li>
                        <a href="#">Admin</a>
                    </li>
                    <li>
                        <a href="#">Quick Lists</a>
                    </li>
                    <li>
                        <a href="#">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Page Content -->
    <div class="container">
        <div class='col-md-4 col-md-offset-3'>
            <img class='logo' src="images/shopping_planner_logo.png" alt="" width="500px">
        </div>
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

        <hr>

        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div class="well text-center">
                    Make shopping easier and create a list of wide range of products you commonly buy
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-4 main-content">
                <h2>View Grocery List</h2>
                    
                <table class="table">
                    <thead>
                        <th>Name</th>
                        <th>Price</th>
                    </thead>
                    <tbody>
                        <?php displayTopItems('Grocery', "AND Grocery_Store.name LIKE '%IGA%'") ?>
                    </tbody>
                </table>
                <a class="btn btn-default" href="list.php?table=all_groceries&list-type=groceries">More Groceries</a>
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4 main-content">
                <h2>View Games List</h2>
                
                <table class="table">
                    <thead>
                        <th>Name</th>
                        <th>Price</th>
                    </thead>
                    <tbody>
                        <?php displayTopItems('Game', '') ?>
                    </tbody>
                </table>
                <a class="btn btn-default" href="list.php?table=all_games&list-type=games">More Games</a>
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4 main-content">
                <h2>View Music List</h2>
                <p>Fetch top rated Music from database.</p>
                <a class="btn btn-default" href="#">More Music</a>
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4 main-content">
                <h2>View Movies List</h2>
                <p>Fetch top rated Movies from database.</p>
                <a class="btn btn-default" href="#">More Movies</a>
            </div>
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->
        
       <?php include('includes/footer.php') ?>