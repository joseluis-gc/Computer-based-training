<style>
    .container-signin {
    display: flex;
    align-items: center;
    padding-top: 40px;
    padding-bottom: 40px;
    background-color: #f5f5f5;
    height: 100vh;
  }
  
  .form-signin {
    width: 100%;
    max-width: 330px;
    padding: 15px;
    margin: auto;
  }
  
  .form-signin .checkbox {
    font-weight: 400;
  }
  
  .form-signin .form-floating:focus-within {
    z-index: 2;
  }
  
  .form-signin input[type="email"] {
    margin-bottom: -1px;
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
  }
  
  .form-signin input[type="password"] {
    margin-bottom: 10px;
    border-top-left-radius: 0;
    border-top-right-radius: 0;
  }
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
<div class="container-signin text-center">
<form class="form-signin" method="post">
    <img class="mb-4" src="assets/img/transparente.png" alt="">
    <h1 class="h5 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="user_name" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">Username or Email address</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="user_password" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg btn-danger" type="submit" name="login">Sign in</button>

    
  </form>

  <form class="form-signin" action="http://localhost/auth-global/public/request-authentication" method="get">
    
    <?php 

    
      $token = "" . randomString(); 
      //$redirection = "http://localhost/Computer-based-training/cbt/login/";
      $system = "System1";
      $_SESSION['system'] = $system;
      $_SESSION['token_auth'] = $token;
      //$_SESSION['redirection'] = $redirection;
    ?> 
    <input  name="system" type="hidden" value="<?php echo $system ?>">
    <input  name="token_auth" type="hidden" value="<?php echo $token ?>">
    <!--<input  name="redirection" type="hidden" value="<?php echo $redirection ?>">-->
    
    <button class="w-100 btn btn-lg btn-info mt-4" type="submit" name="login">Sign in With Global Auth</button>
  </form>

</div>
