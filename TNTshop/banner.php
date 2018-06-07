      <div class="site-wrapper">
      <div class="site-wrapper-inner" style="background: url(images/ig-2.jpg);">
        <div class="header-index">
          <div class="container">
            <?php
              session_start();
              if (isset($_SESSION['username'])) {
                $email = $_SESSION['username'];
                require 'load-customer.php';
                echo "<p class ='header-index-left' style='margin: 0 auto;color: white;'>Hello <a class='ac-index text-login-name'>".$name." </a><a href='logout.php' class='ac-index text-login-name' style='color: white;'>Logout</a></p>";
              } else{
                echo "<a class='header-index-left' href='sign.php'>Sign in or Sign up</a>";
              }
            ?>

            <a class="header-index-right" href="view_cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> cart</a> 
          </div>
        </div>

        <div class="container">
          <div class="header">
            <ul class="nav nav-pills pull-right">
              <li class="active"><a href="index.php">Home</a></li>
              <li><a href="#">Product</a></li>
              <li><a href="#">About</a></li>
              <li><a href="#">contact</a></li>
            </ul>
            <h3 class="text-muted">TNTSHOP</h3>
          </div><!--/header-->
        </div> <!--/container-->

        <div class="cover-container">
          <div class="inner cover">
            <h1 class="cover-heading-index">WELLCOME TO TNTSHOP</h1>
            <p class="lead-index">High-quality products - the best price. We always ensure quality of product.</p>
            <div class='btn-product'>
              <a href='#'>product</a>
           </div>
          </div>

        </div>

      </div>

    </div>
    <!--/cover-->
