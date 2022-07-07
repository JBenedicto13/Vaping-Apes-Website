<?php
    session_start();
    $_SESSION['status'] = "invalid";
    unset($_SESSION['fname']);
    echo "<script>window.location.href = '../pages/Signin.php'</script>";
?>