<?php
	include 'header.php';
	include 'menu.php';
?>
<div class="container">
	<?php
		require 'conect.php';
		$ok = 1;

		if (isset($_SESSION['cart'])) {
		    foreach ($_SESSION['cart'] as $k => $v) {
		        if (isset($k)) {
		            $ok = 2;
		        }
		    }
		}

		if ($ok == 2) {

		    echo "<form action='view_cart.php' method='post'>";
		    echo "<h3 class='header-cart'>YOUR SHOPING CART</h3>";
		    foreach ($_SESSION['cart'] as $key => $value) {
		        $item[] = $key;
		    }
		    $str    = implode(",", $item);
		    $sql    = "SELECT * FROM product WHERE productID in ($str)";
		    $result = sqlsrv_query($conn, $sql);

		    if ($result === false) {
		    	die(print_r(sqlsrv_errors(),true));
		    }

		    $total  = 0;
		    echo "<table cellpadding='0' cellspacing='0' class='table-pro'><tr align='center' class='row-pro'><td class='col-pro'>Name</td><td class='col-pro'>Image</td><td class='col-pro'>Price</td><td class='col-pro'>Quatity</td><td class='col-pro'>Total</td><td></td></tr>";

		    //$inputValues = array();

		    //number quatity default    ==> su dung jQuery event change de thay doi

		    while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {

		        echo "<tr align='center'>";
		        echo "<td class='col-pro'>" . $row['name'] . "</td>";
		        echo '<td><img src="../' . $row['image'] . '" alt="" />';
		        echo "<td class='col-pro'><input id='id_price' type='text' size='9' value = '" . number_format($row['unitPrice']) . "'/></td>";

		        //change number quatity
		        echo "<td class='col-pro'><input id='id_number_quatity' type='text' size='2' value = '1'/></td>";

		        //change money when number quatity change
		        echo "<td class='col-pro'><input id='id_price_tt' type='text' size='9' value = '" . number_format($row['unitPrice']) . "'/>USD</td>";
		        echo "<td class='col-pro'><a href='delcart.php?productid=" . $row['unitPrice'] . "'>Delete product</a></td>";
		        echo "</tr>";
		        //plus after change money
		        $total += $row['unitPrice'];
		    }

		    echo "</table>";
		    echo "<div class='pro' align='right'>";
		    echo "<b style='font-size:20px;'>Total: <font color='red' style='font-size:24px;'> $" . number_format($total, 0) . "</font></b>";
		    echo "<br><a href='checkout.php'><div class='btn btn-danger' type='submit' name='submit' value='booking' align=right'>commit</div</a>";
		    echo "</div>";

		    echo "<div class='pro' align='center'>";
		    echo "<b><a class='footer-cart' href='index.php'>Continue shopping</a>  -  <a class='footer-cart' href='delcart.php?productid=0'>Delete cart</a></b>";
		    echo "</div>";
		} else {
		    echo "<div class='pro'>";
		    echo "<p align='center'><a class='pro-infor'>Empty cart</a></p>";
		    echo "<p align='center'><a class='footer-cart' href='index.php'>Continue shopping</a></p>";
		    echo "</div>";
		}
	?>
</div> <!--/container-->
<hr class="featurette-divider">
<?php include 'footer.php'; ?>