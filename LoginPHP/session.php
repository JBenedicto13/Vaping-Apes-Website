<?php
    session_start();
    if ($_SESSION['status'] == "invalid" || empty($_SESSION['status'])) {
        $_SESSION['status'] = "invalid";
        unset($_SESSION['fname']);
        echo "<script>window.location.href = '../pages/Signin.php'</script>";
    }
?>