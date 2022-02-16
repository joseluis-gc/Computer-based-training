<?php
require_once "./classes/Upload.php";
$upload = new Upload();
$redirect =   implode(',',$upload->course_data);
MessagesRedirect($upload, "page=upload_training&course_id=$redirect");
?>




<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">
            <?php include("./src/includes/admin_sidebar.php") ?>
        </div>
        <div class="col py-3">
            <div class="container-fluid">
                <div class="card">
                    <form method="post" enctype="multipart/form-data">
                        <div class="row p-3">
                            <h5 class="mt-4 mb-5">Create a course</h5>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="formFile" class="form-label">Select Main Image</label>
                                    <input class="form-control" type="file" name="fileToUpload" id="formFile">
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="mb-3">
                                    <label for="title" class="form-label">Course Title</label>
                                    <input type="text" class="form-control" name="course_title" id="title" aria-describedby="title">
                                    <div id="title" class="form-text">Mandatory field <span class="text-danger">*</span></div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="mb-3">
                                    <label for="category"  class="form-label">Category</label>
                                    <select class="form-select" name="course_category" id="category" aria-label="category">
                                        <option selected>Open this select menu</option>
                                        <?php
                                        $categories = getCategory();
                                        foreach ($categories as $category):
                                            ?>
                                            <option value="<?php echo $category['category_id'] ?>"><?php echo $category['category_name'] ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                    <div id="category" class="form-text">Mandatory field <span class="text-danger">*</span></div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="mb-3">
                                    <label for="description" class="form-label">Description</label>
                                    <textarea type="text" rows="3" class="form-control" id="description" name="course_description" aria-describedby="description"></textarea>
                                    <div id="description" class="form-text">Mandatory field <span class="text-danger">*</span></div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="mb-3">


                                    <label for="exampleInputEmail1" class="form-label">Department</label>
                                    <?php
                                    $departments = getDepartments();
                                    foreach ($departments as $value ):
                                        ?>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="department[]" value="<?php echo $value['id'] ?>" id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <?php echo $value['name'] ?>
                                            </label>
                                        </div>
                                    <?php
                                    endforeach;
                                    ?>


                                    <div id="checkbox" class="form-text">Mandatory field <span class="text-danger">*</span></div>
                                </div>
                            </div>

                                <div class="col-lg-12 col-md-12 col-sm-12 pull-right">
                                    <div class="mb-3">
                                        <button class="btn btn-primary" name="create_course" type="submit">Create Course</button>
                                    </div>
                                </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
