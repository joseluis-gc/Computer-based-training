<?php
$course_data = getCourseData($_GET['course_id'])
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
                            <h5 class="mt-4 mb-5">Upload training to <?php echo  $course_data[0] ?></h5>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="formFile" class="form-label">Select file</label>
                                    <input class="form-control" type="file" name="fileToUpload" id="formFile">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="mb-3">
                                    <label for="title" class="form-label">Title</label>
                                    <input type="text" class="form-control" name="title" id="title" aria-describedby="title">
                                    <div id="title" class="form-text">Mandatory field <span class="text-danger">*</span></div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="mb-3">
                                    <label for="category"  class="form-label">Category</label>
                                    <select class="form-select" name="category" id="category" aria-label="category">
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
                                    <textarea type="text" rows="3" class="form-control" id="description" name="description" aria-describedby="description"></textarea>
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
                            <div class="col-lg-6 col-md-12 col-sm-12">
                                <div class="mb-3">
                                    <label for="category" class="form-label">Q&A</label>
                                    <select class="form-select" id="category" name="test" aria-label="category">
                                        <option selected>Open this select menu</option>
                                        <option value="1">(YES) This training has a test</option>
                                        <option value="2">(NO) This training does NOT have a test</option>
                                    </select>
                                    <div id="qa" class="form-text">Mandatory field <span class="text-danger">*</span></div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
