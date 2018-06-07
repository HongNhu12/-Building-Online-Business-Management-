<?php 
    include 'header.php';
    include 'banner.php';
 ?>

 	<div class="container marketing">
      <!-- Three columns of text below the carousel -->
      <div class="row">
        <h2 class="row-header"><a href="#">NEW</a> PRODUCTS</h2>
        <div class="col-lg-3">
          <?php
            $prod_id = 1;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 2;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 3;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 4;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->
      </div><!-- /.row -->


      <!-- all product -->

      <hr class="featurette-divider">
      <!--row 1-->
      <div class="row" id="row1">
        <h2 class="row-header"><a href="#">ALL</a> PRODUCTS</h2>
        <div class="col-lg-3">
          <?php
            $prod_id = 5;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

       <div class="col-lg-3">
          <?php
            $prod_id = 6;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 7;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 8;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->
      </div><!-- /.row 1-->

      <!--row 2-->
      <div class="row" id="row2">
        <h2 class="row-header"><a href="#">ALL</a> PRODUCTS</h2>
        <div class="col-lg-3">
          <?php
            $prod_id = 9;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 10;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 11;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 1;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->
      </div><!-- /.row 2-->

      <!--row 3-->
      <div class="row" id="row3">
        <h2 class="row-header"><a href="#">ALL</a> PRODUCTS</h2>
        <div class="col-lg-3">
          <?php
            $prod_id = 2;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 3;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 4;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 5;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->
      </div><!-- /.row 3-->

      <!--row 4-->
      <div class="row" id="row4">
        <h2 class="row-header"><a href="#">ALL</a> PRODUCTS</h2>
        <div class="col-lg-3">
          <?php
            $prod_id = 6;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->

        <div class="col-lg-3">
          <?php
            $prod_id = 7;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->


        <div class="col-lg-3">
          <?php
            $prod_id = 8;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->
        
        <div class="col-lg-3">
          <?php
            $prod_id = 9;
            require 'load-product-id.php';
            require 'view_product.php';
          ?>
        </div><!-- /.col-lg-3 -->
      </div><!-- /.row 4-->

      <div class="btn-toolbar" role="toolbar">
        <div class="btn-group"><button class="btn-number" onclick="onRow1()">1</button></div>
        <div class="btn-group"><button class="btn-number" onclick="onRow2()">2</button></div>
        <div class="btn-group"><button class="btn-number" onclick="onRow3()">3</button></div>
        <div class="btn-group"><button class="btn-number" onclick="onRow4()">4</button></div>
      </div>

      <hr class="featurette-divider">
    </div>

 <?php
 	include 'footer.php'
 ?>