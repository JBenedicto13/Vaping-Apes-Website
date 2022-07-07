<?php
    require ('../functions/database.php');
    require ('../functions/read-prod.php');

    session_start();

    if ($_SESSION['status'] == "invalid" || empty($_SESSION['status'])) {
        $_SESSION['status'] == "invalid";
    }
    if ($_SESSION['status'] == "valid") {
        if(isset($_POST['add_id'])) {
            $get_session_id = $_SESSION['session_id'];
            $get_session_name = $_SESSION['fname'];
            $get_id = $_POST['add_id'];

            $FETCH_CART = mysqli_query($CON, "SELECT a.First_Name, a.customer_id, c.product_id, b.brand_name, p.Product_Name, c.quantity, p.Price, c.status, p.Image FROM tblcart c
            INNER JOIN tblaccounts a ON a.customer_id = c.customer_id
            INNER JOIN tblproducts p ON p.Id = c.product_id
            INNER JOIN tblbrands b ON b.brand_id = c.brand_id
            WHERE a.customer_id = '$get_session_id';");

            if (mysqli_num_rows($FETCH_CART) > 0)
            {
                echo '<script>cart_notempty();</script>';
                while ($ROW = mysqli_fetch_array($FETCH_CART)) {
                    $get_custname = $ROW['First_Name'];
                    $get_custId = $ROW['customer_id'];
                    $get_productId = $ROW['product_id'];
                    $get_productName = $ROW['Product_Name'];
                    $get_brandName = $ROW['brand_name'];
                    $get_quantity = $ROW['quantity'];
                    $get_price = $ROW['Price'];
                    $get_img = $ROW['Image'];
                    $get_status = $ROW['status'];
                }
            }
            else {
                echo '<script>cart_empty();</script>';
            }
        }
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
    <link rel="stylesheet" type="text/css" href="../css/style-cart.css">
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
				<li class="show_fname" id="show_fname" onclick="signin_or_profile()"><a href="#"><?php echo $get_session_name; ?></a></li>
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

		<div class="cart-div" id="cart-id">
            <br>
			<h2>MY SHOPPING CART</h2>
			<br>
			<div class="container prod-div">
                <div class="row mx-auto empty" id="empty" style="width: 800px;">
                    <div class="col" style="text-align:center;"><i class="fas fa-shopping-cart cart-big" style="font-size: 150px; padding: 50px 0;"></i></div>
                    <div class="col" style="text-align: center; align-self: center;"><h2>You got an empty cart.</h2></i></div>
                </div>
                
                <div class="row mx-auto notempty" id="notempty" style="width: 800px;">
                    <div class="col left-info"><img class="img-fluid mx-auto d-block" src="<?= substr($get_img,6);?>" alt=""></div>
                    <div class="col right-info">
                        <div class="prod-info">
                            <h1><?php echo $get_brandName?></h1>
                            <h2><a href="#"><?php echo $get_productName?></a></h2>
                            <h4>&#8369;<?php echo $get_price?></h4>
                        </div>
                        <form action="" method="POST">
                        <div class="prod-info-1">
                            <div class="btnIncrease">
                                <table>
                                    <tr>
                                        <td class="controls" onclick="plus_qty()"><h5><i class="fas fa-plus"></i></h5></td>
                                        <td><input type="text" id="txtqty" name="btnquantity" value="1"></td>
                                        <td class="controls" onclick="minus_qty()"><h5><i class="fas fa-minus"></i></h5></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="btnRemove">
                                <input type="submit" name="btnremove" value="Remove">
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
                <br>
            </div>
        </div>
		<div class="footer" id="footer-id">
			<p>Vaping Apes Vape Shop &#169; 2021</p>
		</div>
	</div>
</body>
    <script src="../js/cart.js"></script>
</html>