<?php
/**
 * Created by ryan_w_frank
 * Date: Feb 01 2019
 * Time: 8:00 PM EST
 */
    defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Dash Board Home</title>
        <script async src="<?php echo base_url('application/js/jquery-3.3.1.min.js');?>"></script>
        <script async src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="<?php echo site_url('application/css/dashboard.css');?>">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800&amp;subset=cyrillic,cyrillic-ext">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    </head>
    <script>
        var loginStatus = "<?php echo $loginRequired; ?>";
        $(document).ready( function() {
            <?php if ( $loginRequired ) { ?>
                errorDiv = document.getElementById('loginError');
                $('#login').off('reset');
                $('#login').on('reset',function () { 
                    errorDiv.classList.remove('visible');
                    errorDiv.classList.add('hidden');
                });
                $('#login').off('submit');
                $('#login').submit(function (e){
                    e.preventDefault();
                    var user = document.getElementById("userName").value, pass = document.getElementById("userPass").value;
                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url(); ?>" + "User/login",
                        dataType: "json",
                        data: { "login": user, "password": pass },
                        success: function (result) {
                            if ( result.status === "success" ){
                                $(".dashboard__login-page--login-box").slideUp("slow", function(){
                                    $(".dashboard__login-page--login-box").hide('fast', function(){
                                        location.reload(true);
                                    });
                                });
                            }
                            else {
                                document.getElementById("loginError").innerHTML = result.message;
                                errorDiv.classList.remove('hidden');
                                errorDiv.classList.add('visible');
                            }
                        }
                    });
                });
            <?php } ?>
        });
    </script>
    <body>
        <div class="container-fluid dashboard dashboard__home-page dashboard__page--full-page" id="mainPage">
            <?php if ( $loginRequired ) { ?>
                <div class="row align-items-center">
                    <div class="row-fluid dashboard__login-page--login-box">
                        <div class="dashboard__login-page--login-box-container">
                            <div class="row-fluid">
                                <div class="dashboard__login-page--login-title">Home Dashboard Login</div>
                            </div>
                            <div class="row-fluid" style="margin-top: .5vw;">
                            <form role="form" id="login" data-toggle="validator">
                                <div class="form-group col-12 dashboard__login-page--login-user">
                                    <label for="userName" class="align-content-center">User Name</label>
                                    <input type="text" class="dashboard__login-page--login-input" id="userName" onmouseover="this.focus();"  >
                                    <div class="invalid-feedback">Please provide a valid user name of 5 characters</div>
                                    <div class="valid-feedback">UserName looks valid!</div>
                                </div>
                            </div>
                            <div class="row-fluid" style="margin-top: .5vw;">
                                <div class="form-group col-12 dashboard__login-page--login-user">
                                    <label for="inputPassword" class="align-content-center">Password</label>
                                    <input type="password" class="dashboard__login-page--login-input" id="userPass" data-minlength="8" onmouseover="this.focus();"  >
                                    <div class="invalid-feedback">Please provide a password of at least 8 characters</div>
                                    <div class="valid-feedback">Password is valid!</div>
                                </div>
                            </div>
                            <div class="row-fluid" style="margin-top: .8vw;">
                                <div class="text-center">
                                    <button type="submit" id="loginUser" class="dashboard__login-page--login-button">Login</button>
                                    <button type="reset" class="dashboard__login-page--login-button">Reset</button>
                                </div>
                            </div>
                        </form>
                            <div class="row-fluid" style="margin-top: .1vw;">
                                <div class="dashboard__login-page--login-error hidden" id="loginError"></div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </body>
</html>