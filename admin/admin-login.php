<?php
    require ('admin-database.php');

    session_start();

    if ($_SESSION['status'] == "invalid" || empty($_SESSION['status'])) {
        $_SESSION['status'] == "invalid";
    }
    if ($_SESSION['status'] == "valid") {
        echo "<script>window.location.href = 'admin-panel.php'</script>";
    }

    if (isset($_POST['btnLogin'])) {
        $txt_username = trim($_POST['txtUsername']);
        $txt_password = trim($_POST['txtPassword']);

        if (empty($txt_username) || empty($txt_password)) {
            echo "<script>alert('Please fill up all fields.');</script>";
        } else {
            
            $queryValidate = "SELECT * FROM tbladmin WHERE username = '$txt_username' AND password = '$txt_password'";
            $sqlValidate = mysqli_query($CON, $queryValidate);
            $rowValidate = mysqli_fetch_assoc($sqlValidate);

            if (mysqli_num_rows($sqlValidate) > 0) {
                $_SESSION['status'] = 'valid';
                $_SESSION['username'] = $rowValidate['username'];

                echo "<script>clear_form();</script>";

                echo "<script>window.location.href = 'admin-panel.php'</script>";
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
    <title>Admin Login</title>
    <link rel="stylesheet" href="css/login.css">
    <script src="https://kit.fontawesome.com/433a86411d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="js/login.js"></script>
</head>
<body>
    <div class="main-container">
        <div class="form-div">
            <form action="" method="post">
                <table class="tblLogin">
                    <tr><td><label for="txtUsername" class="form-label">Username</label></td></tr>
                    <tr><td><input type="text" name="txtUsername" class="form-text" placeholder="Enter your username"></td></tr>
                    
                    <tr><td><label for="txtPassword" class="form-label">Password</label></td></tr>
                    <tr><td><input type="password" name="txtPassword" id="txtPassword" class="form-text" placeholder="Enter your password"></td></tr>
                    
                    <tr><td><input type="checkbox" name="chkShowpass" id="chkShowpass" onclick="toggle()"> Show Password</input></td></tr>
                    <tr class="btnLogin">
                        <td><input type="submit" class="btn btn-dark" name="btnLogin" value="Login"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</body>
</html>