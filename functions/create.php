<?php 
	require('../functions/database.php');

	if (isset($_POST['btnSignup'])) {
		$txt_Fname = $_POST['txtFname'];
		$txt_Lname = $_POST['txtLname'];
		$txt_Email= $_POST['txtEmail'];
		$txt_Password = $_POST['txtPassword'];

		mysqli_query($CON, "INSERT INTO tblaccounts(First_Name, Last_Name, Email, Password) VALUES('$txt_Fname','$txt_Lname','$txt_Email','$txt_Password');");

		echo '<script> alert("Account Created!") </script>';
		echo '<script> window.location.href = "/Vaping-Apes-Website/index.php" </script>';
	}
	else {
		echo '<script> window.location.href = "/Vaping-Apes-Website/index.php" </script>';
	}
 ?>