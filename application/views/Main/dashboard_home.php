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
        <script src="<?php echo base_url('application/js/jquery-3.3.1.min.js');?>"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="<?php echo site_url('application/css/dashboard.css');?>">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800&amp;subset=cyrillic,cyrillic-ext">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    </head>
    <script>
    $(document).ready( function() {
        <?php if ( !$loginRequired ) { ?>
            $('#logout').on('click',function () { 
                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url(); ?>" + "User/logout",
                    dataType: "json",
                    data: { "id": this.id },
                    success: function (result) {
                        if ( result.status === "success" ){
                            location.reload(true);
                        }
                    }
                });
            });
        <?php } ?>
    });
    </script>
    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
        
        </nav>
        <div class="container-fluid dashboard dashboard__home-page dashboard__page--full-page" id="mainPage">
            <button id="logout">Logout</button>
        </div>
    </body>
</html>