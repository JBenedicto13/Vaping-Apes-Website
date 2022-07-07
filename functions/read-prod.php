<?php 
	require('../functions/database.php');
	
	$RESULT = mysqli_query($CON,
	"SELECT Id, Product_Name, Price, Image, Category, brand_name FROM tblproducts p
	INNER JOIN tblbrands b ON b.brand_id = p.Brand
	ORDER BY Product_Name ASC")
	or die("Error in executing query...");

 ?>