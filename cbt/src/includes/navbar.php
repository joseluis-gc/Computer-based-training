 <nav class="navbar navbar-light bg-white border-bottom p-0">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php"><img src="assets/img/transparente.png" style="width: 8rem;" alt=""></a>
            <form class="d-md-none d-lg-block d-xl-block d-sm-block d-none mb-1">
                <div class="input-group" style="width: 22rem;">
                    <input class="form-control rounded-pill mr-1 pr-5 text-black-50" type="search" value="Search" id="example-search-input">
                    <span class="input-group-append">
                        <button class="btn rounded-pill border-0 ml-n5" type="button">
                            <i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
            <div class="px-lg-5 px-md-0 px-sm-0 d-lg-flex">
                <div class="dropdown">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenu1" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-bell fa-xl text-black"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-lg-start pt-0" style="max-width: 200px;" aria-labelledby="dropdownMenu1">
                        <li><button class="dropdown-header border-0 w-100 bg-secondary text-light mt-0" type="button">Notificaciones</button></li>
                        <li><button class="dropdown-item" type="button">Another action</button></li>
                        <li><button class="dropdown-item" type="button">Something else here</button></li>
                    </ul>
                </div>
                <div class="dropdown d-sm-block d-none d-md-none d-lg-block">
                    <button class="btn dropdown-toggle" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-circle-user fa-xl text-black"></i>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-lg-end" aria-labelledby="dropdownMenu2">
                        <li><a href="" class="dropdown-item" type="button"><i class="fa-solid fa-user me-4"></i>Profile</a></li>


                        <?php if($_SESSION['isadmin'] > 0): ?>

                            <li><a href="index.php?page=dashboard" class="dropdown-item bg-light" type="button"><i class="fa-solid fa-unlock me-4"></i>Admin</a></li>

                        <?php endif; ?>


                        <li><a href="index.php?logout" class="dropdown-item" type="button"><i class="fa-solid fa-right-from-bracket me-4"></i>Logout</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
    <nav class="navbar navbar-expand-lg justify-content-center navbar-light bg-light shadow p-1 ">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                <div class="offcanvas-header">
                    <a class="navbar-brand" href="#"><img src="assets/img/transparente.png" style="width: 8rem;" alt=""></a>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-center flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.php?page=all_trainings">All trainings</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Dropdown
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Dropdown
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <form class="d-md-block d-lg-none d-xl-none d-sm-block mt-5">
                            <div class="input-group">
                                <input class="form-control py-2 rounded-pill mr-1 pr-5 text-black-50" type="search" value="Search" id="example-search-input">
                                <span class="input-group-append">
                                    <button class="btn rounded-pill border-0 ml-n5" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </ul>
                    <div class="mt-auto">
                        <div class="d-sm-block d-md-block d-lg-none">
                            <a class="nav-link mt-5 link-dark" href="#"><i class="fa-solid fa-user me-4"></i>Profile</a>
                        </div>
                        <div class="d-sm-block d-md-block d-lg-none">
                            <a class="nav-link link-dark" href="#"><i class="fa-solid fa-unlock me-4"></i>Admin</a>
                        </div>
                        <div class="d-sm-block d-md-block d-lg-none">
                            <a class="nav-link text-danger" href="#"><i class="fa-solid fa-right-from-bracket me-4"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
