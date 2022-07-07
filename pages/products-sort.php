<?php
	
	require ('../functions/read-prod.php');
	if (isset($_GET['sort'])) {
		$get_sort = $_GET['sort'];
	}
    $query_str = mysqli_query($CON, "SELECT Id, Product_Name, Price, Image, Category, brand_name FROM tblproducts p INNER JOIN tblbrands b ON b.brand_id = p.Brand ORDER BY Product_Name ".$get_sort.";");
?>
<!DOCTYPE html>
<html>
<head>
	<title>Products</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/navigation.css">
	<link rel="stylesheet" type="text/css" href="../css/header.css">
	<link rel="stylesheet" type="text/css" href="../css/footer.css">
	<link rel="stylesheet" type="text/css" href="../css/style-products.css">
	<script src="https://kit.fontawesome.com/433a86411d.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>
<body>
	<div class="main-container">
		<div class="navigation">
			<ul>
				<li class="logo-icon"><a href="../index.php"><img src="../images/vaping-apes-logo.jpg"></a></li>
				<li class="hamburger-icon" id="show" onclick="show_menu()"><a href="#"><img src="../images/hamburger-menu-icon-white.png"></a></li>
				<li class="close-icon" id="close" onclick="close_menu()"><a href="#"><img src="../images/close-menu-icon.png"></a></li>
				<li class="cart-icon" id="cart-icon-id"><a href="cart.php"><img id="cart-img" src="../images/cart-icon-white.png"></a></li>
				<li class="show_fname" id="show_fname" onclick="signin_or_profile()"><a href="#"><?php require('get-session-name.php'); ?></a></li>
				<li><form action="../loginphp/logout.php" method="POST"><input type="submit" name="btnLogout" value="Logout"></form></li>
			</ul>
		</div>
		<div class="header" id="header-id" style="width: 100%; height: 100px;">
			<div class="hamburger-menu" id="hamburger-menu-id">
				<ul>
					<li><a href="home.php"><b>HOME</b></a></li>
					<li><a href="#"><b>PRODUCTS</b></a></li>
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
			<h2>PRODUCTS</h2>
			<br>
			<div class="row prod-nav-row">
				
				<nav class="nav justify-content-center">
                <form action="" method="get">
					<ul class="nav nav-pills">
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="#">All</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Vape</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Mod</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Pod</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Juice</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Coil</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Battery</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Glass</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">Automizer</a>
						</li>
						<li class="nav-item dropdown drp-sort">
							<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Sort</a>
							<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="products-sort.php?sort=<?='ASC';?>">Ascending Product Name</a></li>
							<li><a class="dropdown-item" href="products-sort.php?sort=<?='DESC';?>">Descending Product Name</a></li>
							<li><a class="dropdown-item" href="#">Something else here</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Separated link</a></li>
							</ul>
						</li>
					</ul>
                </form>
				</nav>
			</div>
			<br>
			<div class="btsTable">
				<div class="row row-cols-4 divProdRow">
					<?php while ($ROW = mysqli_fetch_array($query_str)) { ?>
					<form action="" method="GET" id="frm-single">
						<a href="single-product.php?id=<?php echo $ROW['Id']; ?>" style="text-decoration: none;">
						<div class="col divProd">
							<img class="img-fluid" src="<?php echo substr($ROW['Image'],6); ?>">
							<div class="divDesc">
								<span><?php echo $ROW['brand_name']; ?></span>
								<hr>
								<h5><?php echo $ROW['Product_Name']; ?></h5>
								<div class="divStars">
									<i class="fas fa-star"></i>
									<i class="fas fa-star"></i>
									<i class="fas fa-star"></i>
									<i class="far fa-star"></i>
									<i class="far fa-star"></i>
								</div>
								<h4>&#8369;<?php echo $ROW['Price']; ?></h4>
							</div>
							<a href="#"><i class="fas fa-shopping-cart cart"></i></a>
						</div>
						</a>
					</form>
					<?php } ?>
				</div>
			</div>
		</div>
		<div class="footer" id="footer-id">
			<p>Vaping Apes Vape Shop &#169; 2021</p>
		</div>
	</div>
	<script type="text/javascript" src="../js/hamburger-pages-js.js"></script>
</body>

</html>