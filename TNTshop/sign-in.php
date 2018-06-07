<?php
session_start();
require 'conect.php';

if (isset($_POST['signin'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    if ($username == "" || $password == "") {
        echo "<script type='text/javascript'>alert('vui lòng nhập đầy đủ thông tin.');</script>";
        require 'signin.php';
        exit;
    } else {
        $sql     = "exec manager_login_account '$username'";
        $params  = array();
        $options = array("Scrollable" => SQLSRV_CURSOR_KEYSET);
        $stmt    = sqlsrv_query($conn, $sql, $params, $options);
        if (sqlsrv_num_rows($stmt) == 1) {
            echo "<script type='text/javascript'>alert('Tên đăng nhập hoặc mật khẩu không đúng, vui lòng nhập lại');</script>";
            require 'sign.php';
            exit;
        } else {
            $_SESSION['username'] = $username;
            echo "<script type='text/javascript'>alert('Đăng nhập thành công!');</script>";
            $message='Đăng nhập thành công';
            header('location: index.php');
            exit;
        }
    }
}
