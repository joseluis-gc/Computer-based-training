<?php
use Ramsey\Uuid\Uuid;


function getAll($table)
{
    global $connection;

    $data=[];

    $query = "SELECT * FROM $table";
    $result = mysqli_query($connection, $query);
    while ($row = mysqli_fetch_array($result))
    {
        $data[] = $row;
    }
    return $data;
}

function getSingle($table, $id){

    global $connection;

    $data=[];

    $query = "SELECT * FROM $table WHERE $id";
    $result = mysqli_query($connection, $query);
    while ($row = mysqli_fetch_array($result))
    {
        $data[] = $row;
    }
    return $data;
}


function getDepartments(){
    global $connection;

    $data=[];

    $query = "SELECT * FROM departamentos";
    $result = mysqli_query($connection, $query);
    while ($row = mysqli_fetch_array($result))
    {
        $data[] = $row;
    }
    return $data;
}

function getCategory(){
    global $connection;

    $data=[];

    $query = "SELECT * FROM category";
    $result = mysqli_query($connection, $query);
    while ($row = mysqli_fetch_array($result))
    {
        $data[] = $row;
    }
    return $data;
}

function getResponseRedirect($class, $error, $message, $redirect){
    if (isset($class)) {
        echo "class";
        if ($class->errors) {
            foreach ($class->errors as $error) {
                echo $error;
            }
        }
        if ($class->messages) {
            foreach ($class->messages as $message) {
                echo $message . "redirect: " . $redirect;
            }
        }
    }

}


function MessagesRedirect($class, $redirect)
{
    if (isset($class)) {
        if ($class->errors) {
            foreach ($class->errors as $error) {
                echo"
                <script type='text/javascript'>
                    document.addEventListener('DOMContentLoaded', function(event) {
            
                    Swal.fire({
                        title: 'Error!',
                        text: '$error',
                        icon: 'error'
                    })
                });
                </script>
                ";
            }
        }
        if ($class->messages) {
            foreach ($class->messages as $message) {
                echo"
                 <script type='text/javascript'>
                    document.addEventListener('DOMContentLoaded', function(event) {
            
                    Swal.fire({
                        title: 'Error!',
                        text: '$message',
                        icon: 'error'
                    }).then(function() {
                        window.location = 'index.php?$redirect';
                    });
                });
                </script>
                ";
            }
        }
    }

}

function randomString(){
   return $uuid = Uuid::uuid4();
}
