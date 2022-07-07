<?php 
	require('database.php');
	
	$RESULT = mysqli_query($CON,
    "SELECT p.Id, c.Category, p.Product_Name, b.brand_name, p.Price, p.Image
    FROM tblproducts p
    INNER JOIN tblbrands b ON b.brand_id = p.Brand
    INNER JOIN tblprodcat c ON c.Id = p.Category;")
	or die("Error in executing query...");
 ?>