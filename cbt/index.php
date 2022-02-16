<?php
if (version_compare(PHP_VERSION, '5.3.7', '<')) {
    exit("Sorry, Simple PHP Login does not run on a PHP version smaller than 5.3.7 !");
} else if (version_compare(PHP_VERSION, '5.5.0', '<')) {
    require_once("libraries/password_compatibility_library.php");
}

require dirname(__DIR__) . "/vendor/autoload.php";

require_once("./config/settings.php");

require_once("./config/db.php");

require_once ("./functions/helper.php");
require_once ("./functions/project_functions.php");

require_once("./classes/Login.php");

$login = new Login();


if ($login->isUserLoggedIn() == true) {
    include("./src/views/logged_in.php");
} else {
    include("./src/views/not_logged_in.php");
}
