<?php
	include 'header.php';
  include 'menu.php';
?>
<div class="container">
      <!--product-->
      <div class="col-lg-6 col-xs-6 col-sm-6 img-pro">
        <div class="col-lg-3 col-xs-3 col-sm-3">
            <?php
                $prod_id = $_GET['id'];
                require 'load-product-id.php';
                echo "<img src='$image' class='img-pro-size'>";
                echo "<img src='$image' class='img-pro-size'>";
                echo "<img src='$image' class='img-pro-size'>";
            ?>
        </div>
        <div class="col-lg-3 col-xs-3 col-sm-3">
          <?php
                $prod_id = $_GET['id'];
                require 'load-product-id.php';
                echo "<img src='$image' class='img-product'>";
           ?>
        </div> 
      </div>
      <!--information product-->
      <div class="col-lg-6 col-xs-6 col-sm-6 div-pro-infor">
          <?php 
            $prod_id = $_GET['id'];
            require 'load-product-id.php';
            echo "<h3 class='pro-name'>$name</h3> ";
            echo "<div class='div-product'>";
              echo "<p class='pro-des'>colour:</p>";
              echo "<p class='pro-color'></p>";
              echo "<p class='pro-price'>price: $ $unitPrice</p>";
              echo "<h4 class='pro-name'>product details</h4>";
              echo "<p class='pro-infor'>- A ruffle wrap skirt adds a femme feel to this sporty, racerback dress.</p>";
              echo "<p class='pro-infor'>- High crew neck. Racerback. Sleeveless.</p>";
              echo "<p class='pro-infor'>- Invisible zip at back.</p>";
              echo "<p class='pro-infor'>- Fully lined.</p>";
            echo "</div>";
          
            echo "<div class='btn-empty'>";
                echo "<a href='add_cart.php?item=$prod_id'>add to cart</a>";
            echo "</div>";
          ?>
      </div>
    </div>

    <hr class="featurette-divider">
    <?php
    	include 'footer.php';
    ?>