<?php
    ob_start();
    session_start();
    require_once 'actions/db_connect.php';

    // it will never let you open index(login) page if session is set
    if( isset($_SESSION['user' ]) || isset($_SESSION['admin' ]) ) {
        header("Location: home.php");
        exit;
    }

    $error = false;
   
    if( isset($_POST['btn-login']) ) {
   
        // prevent sql injections/ clear user invalid inputs
        $email = trim($_POST['email']);
        $email = strip_tags($email);
        $email = htmlspecialchars($email);

        $pass = trim($_POST[ 'pass']);
        $pass = strip_tags($pass);
        $pass = htmlspecialchars($pass);
        // prevent sql injections / clear user invalid inputs
    
        if(empty($email)){
            $error = true;
            $emailError = "Please enter your email address.";
        } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
            $error = true;
            $emailError = "Please enter valid email address.";
        }
    
        if (empty($pass)){
            $error = true;
            $passError = "Please enter your password." ;
        }

        // if there's no error, continue to login
        if (!$error) {
            $password = hash( 'sha256', $pass); // password hashing
            $res=mysqli_query($connect, "SELECT * FROM users WHERE userEmail='$email'" );
            $row=mysqli_fetch_array($res, MYSQLI_ASSOC);
            $count = mysqli_num_rows($res); // if uname/pass is correct it returns must be 1 row

            if( $count == 1 && $row['userPass' ]==$password ) {
                if($row['userType']=='admin'){
                    $_SESSION['admin'] = $row['userId'];
                    header( "Location: admin.php");
                } else {
                    $_SESSION['user'] = $row['userId'];
                    header( "Location: index.php");
                }

            } else {
                $errMSG = "Incorrect Credentials, Try again..." ;
            }
    
    }
   
}
?>

<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <title>Big Media Library</title>
    </head>
    <body class="bg-light">

    <?php include('navbar.php'); ?>

    <div class="container my-5">
        <div class="row my-3">
            <div class="col-12 text-center">
                <h2>Welcome to the Big Media Library</h2>
                <h4>Please register and login as a user to proceed.</h4>
                <p>For a <span class="badge badge-pill badge-info">standard user</span> please use username <strong>test1@test.com</strong> and password <strong>tatata</strong><br />
                For an <span class="badge badge-pill badge-dark">admin user</span> please use username <strong>admin@admin.com</strong> and password <strong>tatata</strong></p>
            </div>
        </div>
            <div class="col-6 offset-3 mb-5 alert alert-primary pb-4 rounded-lg">
                <h2 class="my-4 text-center">Login</h2>
                <form method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete= "off">
                    <?php
                        if ( isset($errMSG) ) {
                        echo  $errMSG;
                    ?>
                    <?php } ?>
                    <div class="row my-2">
                        <div class="col-4 text-right">
                            <label for="email">Email Address</label>
                        </div>
                        <div class="col-8">
                            <input type="email" name="email" class="form-control" placeholder="Your email address" value="<?php echo $email; ?>"  maxlength="40" />
                            <span class="text-danger"><?php  echo $emailError; ?></span>
                        </div>
                    </div>
                    <div class="row my-2">
                        <div class="col-4 text-right">
                            <label for="pass">Password</label>
                        </div>
                        <div class="col-8">
                            <input type="password" name="pass"  class="form-control" placeholder="Your password" maxlength="15"  />
                            <span class="text-danger"><?php  echo $passError; ?></span>
                        </div>
                    </div>
                    <div class="row my-2">
                        <div class="col-4">
                        </div>
                        <div class="col-8 text-center">
                            <button class="btn btn-primary m-2" type="submit" name="btn-login">Login</button>
                            <a class="btn btn-secondary m-2" href="register.php">Go to registration</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>

    </div>

    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>

  </body>
</html>
<?php ob_end_flush(); ?>





