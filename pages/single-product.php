<?php
    require ('../functions/database.php');
    require ('../functions/read-prod.php');
    if (isset($_GET['id'])) {
        $get_id = $_GET['id'];
    }
    $SELECTED_ID = mysqli_query($CON, "SELECT Id, Product_Name, Price, Image, Category, brand_name FROM tblproducts p INNER JOIN tblbrands b ON b.brand_id = p.Brand WHERE Id = '$get_id'");
    while ($ROW = mysqli_fetch_array($SELECTED_ID)) {
        $get_brandName = $ROW['brand_name'];
        $get_productName = $ROW['Product_Name'];
        $get_price = $ROW['Price'];
		$get_image = $ROW['Image'];
    }  
?>
<!DOCTYPE html>
<html>
<head>
	<title>Products</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/navigation.css">
	<link rel="stylesheet" type="text/css" href="../css/header.css">
	<link rel="stylesheet" type="text/css" href="../css/footer.css">
    <link rel="stylesheet" type="text/css" href="../css/single-prod.css">
	<script type="text/javascript" src="../js/hamburger-pages-js.js"></script>
	<script src="https://kit.fontawesome.com/433a86411d.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="../js/products.js"></script>
</head>
<body>
	<div class="main-container">
		<div class="navigation">
			<ul>
				<li class="logo-icon"><a href="../index.php"><img src="../images/vaping-apes-logo.jpg"></a></li>
				<li class="hamburger-icon" id="show" onclick="show_menu()"><a href="#"><img src="../images/hamburger-menu-icon-white.png"></a></li>
				<li class="close-icon" id="close" onclick="close_menu()"><a href="#"><img src="../images/close-menu-icon.png"></a></li>
				<li class="cart-icon" id="cart-icon-id"><a href="#"><img id="cart-img" src="../images/cart-icon-white.png"></a></li>
				<li class="show_fname" id="show_fname" onclick="signin_or_profile()"><a href="#"><?php require('get-session-name.php'); ?></a></li>
			</ul>
		</div>
		<div class="header" id="header-id" style="width: 100%; height: 100px;">
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

		<div class="products-div" id="products-id">
            <br>
			<h2>CATEGORY</h2>
			<br>
			<div class="container single-product-div">
                <div class="row">
                    <div class="col left-info"><img class="img-fluid" src="<?php echo substr($get_image,6); ?>" alt=""></div>
                    <div class="col right-info">
                        <div class="prod-info">
                            <h1><?php echo $get_brandName?></h1>
                            <h2><?php echo $get_productName?></h2>
                            <h4>&#8369;<?php echo $get_price?></h4>
                        </div>
						<form action="cart.php?id=<?php echo $get_id?>" method="POST">
                        <div class="prod-info-1">
							<input type="hidden" name="add_id" value="<?php echo $get_id?>">
                            <input type="submit" name="addtocart" id="btnAddToCart" value="ADD TO CART">
                        </div>
						</form>
                    </div>
                </div>
            </div>
        </div>

		<div class="footer" id="footer-id">
			<p>Vaping Apes Vape Shop &#169; 2021</p>
		</div>
	</div>
</body>
</html>