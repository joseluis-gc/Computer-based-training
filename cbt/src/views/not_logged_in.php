<?php
include_once("./src/includes/header.php");

if (!empty($page)) {
    switch ($page){

        case "login":
            include ("./src/views/login/login.php");
            break;

        default:
            include ("./src/views/login/login.php");
            break;
    }
}else{
    include ("./src/views/login/login.php");
}