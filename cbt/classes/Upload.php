<?php
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


    public function __construct()
    {

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
                    $query = "UPDATE $table SET $column = '".$target_file."' WHERE $conditioncol = $id";
                    $result = $this->db_connection->query($query);
                    if($result)
                    {
                        $this->messages[] = "File was uploaded";
                    }
                }
                else {
                    //echo "Sorry, there was an error uploading your file.";
                    $this->errors[] = "File was not uploaded";

                }
            }

        }
    }
}
