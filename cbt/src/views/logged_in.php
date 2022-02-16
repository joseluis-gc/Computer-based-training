<?php
include_once("./src/includes/header.php");
include_once("./src/includes/navbar.php");

switch ($page) {

    case "home":
        include("./src/views/home/home.php");
        break;


    case "new_course":
        include("./src/views/admin_dashboard/trainings/new_course.php");
        break;

    case "course":
        include("./src/views/course/course.php");
        break;

    case "dashboard":
        include("./src/views/admin_dashboard/dashboard.php");
        break;

    case "upload_training":
        include("./src/views/admin_dashboard/trainings/upload_training.php");
        break;

    case "manage_training":
        include("./src/views/admin_dashboard/trainings/manage_trainings.php");
        break;

    case "all_trainings":
        include("./src/views/admin_dashboard/trainings/all_trainings.php");
        break;        

    default:
        include("./src/views/home/home.php");
        break;
}

include_once("./src/includes/footer.php");
