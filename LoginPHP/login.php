<?php
    require ('../loginphp/database.php');

    session_start();

    if ($_SESSION['status'] == "invalid" || empty($_SESSION['status'])) {
        $_SESSION['status'] == "invalid";
    }
    if ($_SESSION['status'] == "valid") {
        echo "<script>window.location.href = '../pages/products.php'</script>";
    }

    if (isset($_POST['btnSignin'])) {
        $txt_email = trim($_POST['txtEmail']);
        $txt_password = trim($_POST['txtPassword']);

        if (empty($txt_email) || empty($txt_password)) {
            echo "<script>alert('Please fill up all fields.');</script>";
        } else {
            
            $queryValidate = "SELECT * FROM tblaccounts WHERE Email = '$txt_email' AND Password = '$txt_password'";
            $sqlValidate = mysqli_query($CON, $queryValidate);
            $rowValidate = mysqli_fetch_assoc($sqlValidate);

            if (mysqli_num_rows($sqlValidate) > 0) {
                $_SESSION['status'] = 'valid';
                $_SESSION['fname'] = $rowValidate['First_Name'];
                echo "<script>window.location.href = '../pages/products.php'</script>";
            } else {
                $_SESSION['status'] = 'invalid';
                echo "Invalid Credentials";
            }
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <form action="../loginphp/login.php" method="POST">
        <input type="text" name="txtEmail" placeholder="Enter your email">
        <input type="password" name="txtPassword" placeholder="Enter your password">
        <input type="submit" name="btnSignin" value="Submit">
    </form>
</body>
</html>