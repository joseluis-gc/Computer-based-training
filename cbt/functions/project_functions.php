<?php

function getCourseData($id){
    global $connection;


        $data = [];
        $query = "SELECT * from course WHERE course_id = $id";
        $result = mysqli_query($connection, $query);
        $row = mysqli_fetch_array($result);
        $data[] = $row;

    return $data;
    //var_dump($data);
}

