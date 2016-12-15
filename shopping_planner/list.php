<?php 
    include('includes/header.php'); 
    include('includes/nav.php'); 

    if(isset($_GET['list-type'])){
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
                <button class='sort-type'>Test</button>
                <button class='sort-type'>Test</button>
                <button class='sort-type'>Test</button>
            </div>
            <div class="col-md-10">
            <table class='table'>
                <thead>
                    <th>Game</th>
                    <th>Genre</th>
                    <th>Sub-Genres</th>
                    <th>Feature</th>
                    <th>Theme</th>
                </thead>
                <tbody>
                    <tr>
                        <td>Kingdom Hearts HD 1.5 Remix</td>
                        <td>Quick-time Events
Collection
World-based Progression
Arcade shooting minigame - In KH1
Card deck management - As seen in KH: Chain of Memories
Story-driven
World-based
Multiple difficulty settings</td>
                       <td>Friendship
Light and Dark
Japanese
Romance
Disney
Final Fantasy
Save the world</td>
                       <td></td>
                       <td></td>
                       <td></td>
                    </tr>
                </tbody>
            </table>
            <!-- /.col-md-12 -->
        </div>
        <!-- /.row -->
        
<?php include('includes/footer.php') ?>
