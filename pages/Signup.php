<?php
    session_start();

    if ($_SESSION['status'] == "invalid" || empty($_SESSION['status'])) {
        $_SESSION['status'] == "invalid";
    }
    if ($_SESSION['status'] == "valid") {
        echo "<script>window.location.href = '../pages/home.php'</script>";
    }
?>

<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/navigation.css">
	<link rel="stylesheet" type="text/css" href="../css/header.css">
	<link rel="stylesheet" type="text/css" href="../css/footer.css">
	<link rel="stylesheet" type="text/css" href="../css/style-signup.css">
	<script type="text/javascript" src="../js/hamburger-pages-js.js"></script>
</head>
<body>
	<div class="main-container">
		<div class="navigation">
			<ul>
				<li class="logo-icon"><a href="../index.php"><img src="../images/vaping-apes-logo.jpg"></a></li>
				<li class="hamburger-icon" id="show" onclick="show_menu()"><a href="#"><img src="../images/hamburger-menu-icon-white.png"></a></li>
				<li class="close-icon" id="close" onclick="close_menu()"><a href="#"><img src="../images/close-menu-icon.png"></a></li>
				<li class="cart-icon" id="cart-icon-id"><a href="#"><img id="cart-img" src="../images/cart-icon-white.png"></a></li>
			</ul>
		</div>
		<div class="header" id="header-id" style="width: 100%; height: 150px;">
			<div class="hamburger-menu" id="hamburger-menu-id">
				<ul>
					<li><a href="home.php"><b>HOME</b></a></li>
					<li><a href="products.php"><b>PRODUCTS</b></a></li>
					<li><a href="#"><b>ABOUT</b></a></li>
					<li><a href="#"><b>CONTACT</b></a></li>
				</ul>
			</div>
			<div class="hamburger-menu-side" id="hamburger-menu-side-id">
				<ul>
					<li style="font-size: 18px;">Login or Create Account</li>
					<li><a href="Signin.php">LOGIN</a></li>
					<li><a href="Signup.php">CREATE ACCOUNT</a></li>
				</ul>
			</div>
		</div>

		<div class="contents" id="contents-id" style="padding-bottom: 100px;">
			<div class="contents-container">
				<form class="frmSignup" id="frmSignup-id" action="../functions/create.php" method="POST">
					<h1 style="text-align: center;">Sign Up</h1>
					<br>
					<p style="text-align: center; font-size: 16px;">Please fill in the information below:</p>
					<br>
					<table class="tblSignup">
						<tr>
							<td><label>First Name</label></td>
						</tr>
						<tr class="textbox">
							<td><input type="text" name="txtFname" placeholder="Enter First Name"></td>
						</tr>

						<tr>
							<td><label>Last Name</label></td>
						</tr>
						<tr class="textbox">
							<td><input type="text" name="txtLname" placeholder="Enter Last Name"></td>
						</tr>

						<tr>
							<td><label>Email</label></td>
						</tr>
						<tr class="textbox">
							<td><input type="text" name="txtEmail" placeholder="Enter Email"></td>
						</tr>

						<tr>
							<td><label>Password</label></td>
						</tr>
						<tr class="textbox">
							<td><input type="password" name="txtPassword" placeholder="Enter Password"></td>
						</tr>
						<tr class="btnSignup" style=" text-align: center;">
							<td><input type="submit" name="btnSignup" value="Sign Up"></td>
						</tr>
					</table>
					<p class="alt-sign"><a href="Signup.php">Already have an account? Login here</a></p>
				</form>
			</div>
		</div>
		<div class="footer" id="footer-id">
			<p>Vaping Apes Vape Shop &#169; 2021</p>
		</div>
	</div>
</body>
</html>