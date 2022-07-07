<?php 
    session_start();
    if ($_SESSION['status'] == "invalid" || empty($_SESSION['status'])) {
        $_SESSION['status'] = "invalid";
        echo $_SESSION['fname'] = "Signin/Signup";
    }
    else {
        echo $_SESSION['fname'];
    }
?>