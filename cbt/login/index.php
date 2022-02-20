<?php

session_start();
//$session_token = $_SESSION['token_auth'];
//echo "token por " . $_GET['token_auth'] . " sesion " . $session_token;

//if( strcmp($_GET['token_auth'], $session_token) == 0  && $_GET['user_login_status'] == 1)
if( $_GET['user_login_status'] == 1)
{
    $_SESSION['user_name'] = $_GET['user_name'];
    $_SESSION['user_email'] = $_GET['user_email'];;
    $_SESSION['isadmin'] = $_GET['isadmin'];
    $_SESSION['manager'] = $_GET['manager'];
    $_SESSION['user_login_status'] = $_GET['user_login_status'];
    $_SESSION['global_login'] = 1;

} else
{
    $_SESSION['user_login_status'] = 0;
    $_SESSION['global_login'] = 1;
}

$protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";  
$CurPageURL = $protocol . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];  
$pos = strpos($CurPageURL, '/login/?');
$CurPageURL = substr($CurPageURL, 0, $pos);


//include("./../index.php");
header('Location: '. $CurPageURL);

