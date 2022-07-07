<?php
	require('../functions/database.php');

	$RESULT_CHECKOUT = mysqli_query($CON,
	"SELECT Id, Product_Name, Price, Image, Category, brand_name FROM tblproducts p
	INNER JOIN tblbrands b ON b.brand_id = p.Brand
	WHERE Id > 5 AND Id < 9");

	$RESULT_FEATURED = mysqli_query($CON,
	"SELECT idtblfeatured, Product_Id, c.Category, Product_Name, Image, Description FROM tblfeatured f
	INNER JOIN tblproducts p ON p.Id = f.Product_Id
	INNER JOIN tblprodcat c ON c.Id = f.Category_Id");

	$RESULT_CAROUSEL = mysqli_query($CON,
	"SELECT idtblcarousel, Product_Id, Image FROM tblcarousel c
	INNER JOIN tblproducts p ON p.Id = c.Product_Id");

	$RESULT_COLLECTION = mysqli_query($CON, "SELECT c.Brand_Id, b.brand_name, b.logo FROM tblcollection c
	INNER JOIN tblbrands b ON b.brand_id = c.Brand_Id");

	$car_arr = array();
	$car_id = array();
	$ctr = 0;
	while ($CAR_ROW = mysqli_fetch_array($RESULT_CAROUSEL)) {
		$car_arr[$ctr] = substr($CAR_ROW['Image'],6);
		$car_id[$ctr] = $CAR_ROW['Product_Id'];
		$ctr++;	
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Vaping Apes - Home</title>
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/navigation.css">
	<link rel="stylesheet" type="text/css" href="../css/header.css">
	<link rel="stylesheet" type="text/css" href="../css/footer.css">
	<link rel="stylesheet" type="text/css" href="../css/style-home.css">
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
				<li class="cart-icon" id="cart-icon-id"><a href="#"><img id="cart-img" src="../images/cart-icon-white.png"></a></li>
				<li class="show_fname" id="show_fname" onclick="signin_or_profile()"><a href="#"><?php require('get-session-name.php'); ?></a></li>
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

		<div class="contents" id="contents-id">
		<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleControls" data-bs-slide-to="3" aria-label="Slide 4"></button>
			</div>
			
			<div class="carousel-inner div-carousel">
				<div class="carousel-item active" data-bs-interval="3000">
				<a href="single-product.php?id=<?= $car_id[0]; ?>"><img src="<?= $car_arr[0] ?>" class="d-block" alt="..."></a>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
				<a href="single-product.php?id=<?= $car_id[1]; ?>"><img src="<?= $car_arr[1] ?>" class="d-block" alt="..."></a>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
				<a href="single-product.php?id=<?= $car_id[2]; ?>"><img src="<?= $car_arr[2] ?>" class="d-block" alt="..."></a>
				</div>
				<div class="carousel-item" data-bs-interval="3000">
				<a href="single-product.php?id=<?= $car_id[3]; ?>"><img src="<?= $car_arr[3] ?>" class="d-block" alt="..."></a>
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
			<div class="contents-products">
				<div class="home-product1" style="background-color: #f8f9fa;">
				<form action="" method="get">
				<?php while ($ROW = mysqli_fetch_array($RESULT_FEATURED)) { ?>
				<table>
					<tr>
						<td class="left-col"><p style="text-transform:uppercase;"><?php echo $ROW['Category']; ?></p></td>
						<td class="center-col"><img src="<?php echo substr($ROW['Image'],6); ?>"></td>
						<td class="right-col"><h2><?php echo $ROW['Product_Name']; ?></h2>
						<br>
						<p><?php echo $ROW['Description'];?></p>
						<br>
						<p class="btn-products" id="btn-pod"><a href="single-product.php?id=<?php echo $ROW['Product_Id']; ?>">See more ></a></p>
						</td>
					</tr>
				</table>
				<?php } ?>
				</div>
				</form>
			</div>
			<div class="contents-checkoutnew">
				<h2>CHECK OUT</h2>
				<br>
				<h1>NEW E-JUICE</h1>
				<br>
				<div class="btsTable">
					<div class="row row-cols-4 divProdRow">
						<?php while ($ROW = mysqli_fetch_array($RESULT_CHECKOUT)) { ?>
						<form action="" method="GET" id="frm-single">
							<a href="single-product.php?id=<?php echo $ROW['Id']; ?>" id="hidden-id" style="text-decoration: none;">
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
				<br>
				<p class="btnViewAllProducts"><a href="products.php">View All Products</a></p>
			</div>

			<div class="contents-brands">
				<h1>COLLECTION BY BRANDS</h1>
				<div class="container brands-container">
					<div class="row row-cols-2">
						<?php while($ROW = mysqli_fetch_array($RESULT_COLLECTION)) { ?>
						<div class="col-sm-4 div-brand" onclick="location.href='products.php?catbrand=<?php echo $ROW['Brand_Id']; ?>';">
							<div class="row prod-img"><img src="<?= $ROW['logo'] ?>" alt="" class="img-fluid"></div>
							<a href="#"><?= $ROW['brand_name'] ?></a>
						</div>
						<?php } ?>
					</div>
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