<?php 
	require('../functions/database.php');

    if (isset($_GET['id'])) {
        $get_id = $_GET['id'];

        $query_str = mysqli_query($CON, "SELECT Id, Product_Name, Price, Image, Category, brand_name FROM tblproducts p INNER JOIN tblbrands b ON b.brand_id = p.Brand");
        while($ROW = mysqli_fetch_array($query_str)) {
            
        }

        INSERT INTO tblcart(customer_id, product_id, brand_id, quantity, status) VALUES ();

        mysqli_query($CON, "INSERT INTO tblaccounts(First_Name, Last_Name, Email, Password) VALUES('$txt_Fname','$txt_Lname','$txt_Email','$txt_Password');");

		echo '<script> alert("Account Created!") </script>';
		echo '<script> window.location.href = "/Vaping-Apes-Website/index.php" </script>';
    }
	else {
		echo '<script> window.location.href = "/Vaping-Apes-Website/index.php" </script>';
	}
 ?>