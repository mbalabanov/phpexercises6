<?php
    ob_start();
    session_start();

    require_once 'actions/db_connect.php';

    // if session is not set this will redirect to login page
    if( !isset($_SESSION['user' ]) ) {
        header("Location: index.php");
        exit;
    }

    if ($_GET['id']) {
        $id = $_GET['id'];
        $sql = "SELECT * FROM media WHERE media_id={$id}" ;
        $result = $connect->query($sql);
        $data = $result->fetch_assoc();
        $connect->close();
    }
?>

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <title>Delete media | Big Library</title>

</head>
<body class="bg-light">

<div class="container my-4">
    <div class="row pt-2">
        <div class="col-12">
            <div class="alert alert-danger p-4 text-center pb-4" role="alert">
                <h3 class="mt-2">Do you really want to delete '<?php echo $data['title'] ?>'?</h3>
                <form action ="actions/a_delete.php" method="post">
                    <input type="hidden" name= "id" value="<?php echo $data['media_id'] ?>" />
                    <button class="btn btn-danger" type="submit">Delete</button >
                    <a class="btn btn-secondary" href="index.php">Cancel</a>
                </form>
            </div>
        </div>
    </div>
</div >

<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>

</body>
</html>