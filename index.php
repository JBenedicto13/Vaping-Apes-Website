<?php
	require('functions/database.php');

	$Result_Index = mysqli_query($CON, "SELECT * FROM tblindex");
	while ($ROW = mysqli_fetch_array($Result_Index)) {
		
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Vaping Apes Vape Shop</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/style-index.css">
	<link rel="stylesheet" type="text/css" href="css/navigation.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
</head>
<body>
	<div class="main-container">
		<div class="navigation">
			<ul>
				<li class="logo-icon"><a href="#"><img src="images/vaping-apes-logo.jpg"></a></li>
				<li class="hamburger-icon" id="show" onclick="show_menu()"><a href="#"><img src="images/hamburger-menu-icon-white.png"></a></li>
				<li class="close-icon" id="close" onclick="close_menu()"><a href="#"><img src="images/close-menu-icon.png"></a></li>
				<li class="cart-icon" id="cart-icon-id"><a href="#"><img id="cart-img" src="images/cart-icon-white.png"></a></li>
			</ul>
		</div>
		<div class="header" id="header-id" style="background-color: transparent;">
			<div class="hamburger-menu" id="hamburger-menu-id">
				<ul>
					<li><a href="pages/home.php"><b>HOME</b></a></li>
					<li><a href="pages/products.php"><b>PRODUCTS</b></a></li>
					<li><a href="#"><b>ABOUT</b></a></li>
					<li><a href="#"><b>CONTACT</b></a></li>
				</ul>
			</div>
			<div class="hamburger-menu-side" id="hamburger-menu-side-id">
				<ul>
					<li style="font-size: 18px;">Login or Create Account</li>
					<li><a href="pages/Signin.php">LOGIN</a></li>
					<li><a href="pages/Signup.php">CREATE ACCOUNT</a></li>
				</ul>
			</div>

			<div class="header-contents" id="header-contents-id">
				<h1>Vaping Apes Vape Shop</h1>
				<br><br>
				<p>High quality, pitch-ready liquid yeast for Probrewers and Homebrewers</p>
				<video id="vid-banner" poster="images/banner-video.png" autoplay muted loop>
					<source src="videos/banner-video.mp4" type="video/mp4">
				</video>
				<br><br>
				<p id="btn-explore"><a href="pages/home.php">EXPLORE</a></p>
			</div>
		</div>
		<div class="footer" id="footer-id">
			<p>Vaping Apes Vape Shop &#169; 2021</p>
		</div>
	</div>
	<script type="text/javascript" src="js/hamburger-js.js"></script>
</body>
	
</html>