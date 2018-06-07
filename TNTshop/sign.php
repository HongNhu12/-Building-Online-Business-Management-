<?php
	include 'header.php';
  include 'menu.php';
?>
  <div id="divSignin" class="container">
      <h2>SIGN IN</h2>
      <form action="sign-in.php" method="Post" >
        <div class="form-group">
          <label for="email">Username:</label>
          <input type="email" class="form-control" id="email" placeholder="input username or email or phone" name="username">
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input type="password" class="form-control" id="pwd" placeholder="input password" name="password">
        </div>
        <button type="submit" class="btn btn-default" style="margin-left: 40%" name="signin">Sign in</button>
         <div class="div-btn-sign">
          <p class="btn-sign"><a href="#" onclick="onSignup()" >Sign up</a></p>
        </div>
      </form>
  </div>

  <div id="divSignup" class="container">
      <h2>SIGN UP</h2>
      <form action="sign-up.php" method="Post">
        <div class="form-group">
          <label for="username">User name:</label>
          <input type="text" class="form-control" id="username" placeholder="input your user name" name="username">
        </div>
        <div class="form-group">
          <label for="pwd">Password:</label>
          <input type="password" class="form-control" id="pwd" placeholder="input password" name="password">
        </div>
        <div class="form-group">
          <label for="name">Name:</label>
          <input type="text" class="form-control" id="name" placeholder="input your name" name="name">
        </div>
        <div class="form-group">
          <label for="address">Address:</label>
          <input type="text" class="form-control" id="address" placeholder="input your address" name="address">
        </div>
        <div class="form-group">
          <label for="phone">Phone:</label>
          <input type="text" class="form-control" id="phone" placeholder="input your phone" name="phone">
        </div>
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" class="form-control" id="email" placeholder="input email" name="email">
        </div>
        <div class="form-group">
          <label for="note">Notes:</label>
          <input type="text" class="form-control" id="note" placeholder="input your note" name="note">
        </div>
        <button type="submit" class="btn btn-default" style="margin-left: 40%" name="signup">Sign up</button>
         <div class="div-btn-sign">
          <p class="btn-sign"><a href="#" onclick="onSignin()" class="btn-sign">Sign in</a></p>
        </div>
      </form>
  </div>
   
<hr class="featurette-divider">
 <?php
    include 'footer.php';
 ?>