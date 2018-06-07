<?php
	echo "<img class='img-circle' src='$image' alt='Generic placeholder image' style='width: 250px; height: 375px;''>";
    echo "<h2>$name</h2>";
    echo "<p class = 'row-header-des'>$description</p>";
    echo "<p class='row-header-price'>Price: $ $unitPrice <p class='price'></p></p>";
    echo "<div class='btn-empty'>
              <a href='single.php?id=$prod_id'>product detail</a>
          </div>";
?>