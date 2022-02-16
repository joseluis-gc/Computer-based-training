<?php
//echo "yaya";
class Upload
{
    /**
     * @var object The database connection
     */
    private $db_connection = null;

    /**
     * @var array Collection of error messages
     */
    public $errors = array();

    /**
     * @var array Collection of success / neutral messages
     */
    public $messages = array();

    /**
     * @var array
     */
    public $course_data = array();




    public function __construct()
    {

        if (isset($_POST["create_course"])) {
            $this->createCourse();
        }
        elseif (isset($_POST["upload_content"])) {
            $this->uploadContent();
        }
        elseif (isset($_POST["update_content"])) {
            $this->dologinWithPostData();
        }
    }


    private function createCourse()
    {
        if (empty($_POST['course_title']))
        {
            $this->errors[] = "course must have a title.";
        }
        elseif (empty($_POST['course_description']))
        {
            $this->errors[] = "description can't be empty.";
        }
        elseif (empty($_POST['course_category']))
        {
            $this->errors[] = "category can't be empty.";
        }
        elseif (empty($_POST['department']))
        {
            $this->errors[] = "department can't be empty.";
        }
        elseif (
            !empty($_POST['course_title']) && !empty($_POST['course_description']) &&
            !empty($_POST['course_category']) && !empty($_POST['department'])
        ) {
            $this->db_connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

            if (!$this->db_connection->set_charset("utf8")) {
                $this->errors[] = $this->db_connection->error;
            }


            if (!$this->db_connection->connect_errno) {


                $course_title = $this->db_connection->real_escape_string($_POST['course_title']);
                $course_description = $this->db_connection->real_escape_string($_POST['course_description']);
                $course_category = $this->db_connection->real_escape_string($_POST['course_category']);


                $sql = "SELECT course_title, course_category
                        FROM course
                        WHERE course_title = '" . $course_title . "' AND course_category = $course_category;";

                $result = $this->db_connection->query($sql);

                // if this user exists
                if($result->num_rows == 0)
                {
                    $insert = "INSERT INTO course (course_title, course_category, course_description) 
                    VALUES ('".$course_title."',  '".$course_category."', '".$course_description."')";

                    $result_insert = $this->db_connection->query($insert);
                    if($result_insert)
                    {
                        $this->course_data[] = $course_id = $this->db_connection->insert_id;

                        $this->uploadMedia("course", "course_image", "course_id", $course_id);

                        $cont_error = 0;
                        foreach ($_POST['department'] as $department)
                        {
                            $item = $this->db_connection->real_escape_string($department);
                            $insert_department = "INSERT INTO course_department (course_id, department_id) VALUES ($course_id, $item)";
                            $result_department_insert = $this->db_connection->query($insert_department);
                            if(!$result_department_insert)
                            {
                                $cont_error++;
                            }
                        }


                        if($cont_error > 0)
                        {
                            $this->errors[] = "Error inserting departments";
                            exit();
                        }


                        $this->messages[] = "Course created successfully! You are ready to add content";



                    }
                    else
                    {
                        $this->errors[] = "Error creating course: $insert.";
                    }
                }
                else
                {
                    $this->errors[] = "This course already exists.";
                }

            } else {
                $this->errors[] = "Database connection problem.";
            }
        }
    }



    private function uploadContent()
    {

        if (empty($_POST['title']))
        {
            $this->errors[] = "post must have a title.";
        }
        elseif (empty($_POST['description']))
        {
            $this->errors[] = "description can't be empty.";
        }
        elseif (empty($_POST['category']))
        {
            $this->errors[] = "category can't be empty.";
        }
        elseif (empty($_POST['department']))
        {
            $this->errors[] = "At least one department must be selected.";
        }

        elseif (
            !empty($_POST['title'])
            && !empty($_POST['description'])
            && !empty($_POST['category'])
            && !empty($_POST['department'])
        ) {

            $this->db_connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

            if (!$this->db_connection->set_charset("utf8")) {
                $this->errors[] = $this->db_connection->error;
            }


            if (!$this->db_connection->connect_errno) {


                $title = $this->db_connection->real_escape_string($_POST['title']);
                $description = $this->db_connection->real_escape_string($_POST['description']);
                $category = $this->db_connection->real_escape_string($_POST['category']);
                $test = $this->db_connection->real_escape_string($_POST['test']);
                $user_name = $_SESSION['user_name'];

                $sql = "SELECT title, category
                        FROM post
                        WHERE title = '" . $title . "' AND category = $category;";

                $result = $this->db_connection->query($sql);

                // if this user exists
                if($result->num_rows == 0)
                {
                    $insert = "INSERT INTO post 
                    (title, category, description, test, user_name)  
                    VALUES ('".$title."', '".$category."', '".$description."', '".$test."', '".$user_name."' )";
                    $result_insert = $this->db_connection->query($insert);

                    if($result_insert)
                    {
                        $this->course_data[] = $post_id = $this->db_connection->insert_id;

                        foreach ($_POST['department'] as $department)
                        {
                            $item = $this->db_connection->real_escape_string($department);
                            $insert_department = "INSERT INTO post_department (post_id, department_id) VALUES ($post_id, $item)";
                            $result_department_insert = $this->db_connection->query($insert_department);
                        }

                        $this->uploadMedia($post_id);

                    }
                    else
                    {
                        $this->errors[] = "Error creating course: $insert.";
                    }
                }
                else
                {
                    $this->errors[] = "This course already exists.";
                }







            } else {
                $this->errors[] = "Database connection problem.";
            }
        }
    }








    public function uploadMedia($table, $column, $conditioncol, $id){

        $this->db_connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        if (!$this->db_connection->set_charset("utf8"))
        {
            $this->errors[] = $this->db_connection->error;
        }
        if (!$this->db_connection->connect_errno)
        {

            $target_dir = "src/uploads/";
            $target_file = $target_dir . randomString() .basename($_FILES["fileToUpload"]["name"]);
            $uploadOk = 1;
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));



            if (file_exists($target_file))
            {
                $this->errors[] = "File already exists.";
                //echo "Sorry, file already exists.";
                $uploadOk = 0;
            }

            if ($_FILES["fileToUpload"]["size"] > 10000000)
            {
                $this->errors[] = "File is too large.";
                //echo "Sorry, your file is too large.";
                $uploadOk = 0;
            }


            if(
                $imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                && $imageFileType != "gif" && $imageFileType != "mp4" && $imageFileType != "MP4"
                && $imageFileType != "pptx" && $imageFileType != "PPTX" && $imageFileType != "ppt"
                && $imageFileType != "PPT" && $imageFileType != "pdf" && $imageFileType != "PDF"
            ) {
                $this->errors[] = "Sorry, only JPG, JPEG, PNG, GIF, MP4, PPTX, PPT, PDF files are allowed.";
                //echo "Sorry, only JPG, JPEG, PNG, GIF, MP4, PPTX, PPT, PDF files are allowed.";
                $uploadOk = 0;
            }


            if ($uploadOk == 0)
            {
                echo "Sorry, your file was not uploaded.";

            }
            else
            {
                if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file))
                {
                    //echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";

                    $query = "UPDATE $table SET $column = '".$target_file."' WHERE $conditioncol = $id";
                    $result = $this->db_connection->query($query);
                    if($result)
                    {
                        return 0;
                    }
                }
                else {
                    //echo "Sorry, there was an error uploading your file.";
                    $this->errors[] = "File was not uploaded";

                }
            }

        }
    }

    /**
     * log in with post data
     */
    private function dologinWithPostData()
    {
        // check login form contents
        if (empty($_POST['user_name'])) {
            $this->errors[] = "Username field was empty.";
        } elseif (empty($_POST['user_password'])) {
            $this->errors[] = "Password field was empty.";
        } elseif (!empty($_POST['user_name']) && !empty($_POST['user_password'])) {

            // create a database connection, using the constants from config/db.php (which we loaded in index.php)
            $this->db_connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

            // change character set to utf8 and check it
            if (!$this->db_connection->set_charset("utf8")) {
                $this->errors[] = $this->db_connection->error;
            }

            // if no connection errors (= working database connection)
            if (!$this->db_connection->connect_errno) {

                // escape the POST stuff
                $user_name = $this->db_connection->real_escape_string($_POST['user_name']);

                // database query, getting all the info of the selected user (allows login via email address in the
                // username field)
                $sql = "SELECT user_name, user_email, user_password_hash, isadmin, manager
                        FROM users
                        WHERE user_name = '" . $user_name . "' OR user_email = '" . $user_name . "';";
                $result_of_login_check = $this->db_connection->query($sql);

                // if this user exists
                if ($result_of_login_check->num_rows == 1) {

                    // get result row (as an object)
                    $result_row = $result_of_login_check->fetch_object();

                    // using PHP 5.5's password_verify() function to check if the provided password fits
                    // the hash of that user's password
                    if (password_verify($_POST['user_password'], $result_row->user_password_hash)) {

                        // write user data into PHP SESSION (a file on your server)
                        $_SESSION['user_name'] = $result_row->user_name;
                        $_SESSION['user_email'] = $result_row->user_email;
                        $_SESSION['isadmin'] = $result_row->isadmin;
                        $_SESSION['manager'] = $result_row->manager;
                        $_SESSION['user_login_status'] = 1;

                    } else {
                        $this->errors[] = "Wrong password. Try again.";
                    }
                } else {
                    $this->errors[] = "This user does not exist.";
                }
            } else {
                $this->errors[] = "Database connection problem.";
            }
        }
    }

    /**
     * perform the logout
     */
    public function doLogout()
    {
        // delete the session of the user
        $_SESSION = array();
        session_destroy();
        // return a little feeedback message
        $this->messages[] = "You have been logged out.";

    }

    /**
     * simply return the current state of the user's login
     * @return boolean user's login status
     */
    public function isUserLoggedIn()
    {
        if (isset($_SESSION['user_login_status']) AND $_SESSION['user_login_status'] == 1) {
            return true;
        }
        // default return
        return false;
    }
}