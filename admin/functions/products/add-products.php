<?php 
	require('database.php');

	$category_result = mysqli_query($CON,"SELECT * FROM tblprodcat");
    $brand_result = mysqli_query($CON,"SELECT * FROM tblbrands");

    if (isset($_POST['btnAdd'])) {
        $cmb_Category = "";
        $cmb_Brand_Name = "";
        $text_Category = "";
        $text_Brand_Name = "";
        
        if(!empty($_POST['listCategory'])) {
            $cmb_Category = $_POST['listCategory'];
            
            $RESULT = mysqli_query($CON,"SELECT * FROM tblprodcat WHERE Id ='$cmb_Category';");
            while ($ROW = mysqli_fetch_array($RESULT)) {
                $text_Category = $ROW['Category'];
            }
        }
        if(!empty($_POST['listBrandName'])) {
            $cmb_Brand_Name = $_POST['listBrandName'];

            $RESULT = mysqli_query($CON,"SELECT * FROM tblbrands WHERE brand_id ='$cmb_Brand_Name';");
            while ($ROW = mysqli_fetch_array($RESULT)) {
                $text_Brand_Name = $ROW['brand_name'];
            }
        }

        $txt_product_name = $_POST['txtProductName'];
        $txt_price = $_POST['txtPrice'];

        $file_name = $_FILES['prod-image']['name'];
        $temp_loc = $_FILES['prod-image']['tmp_name'];
        //$file_store = "../../../images/".$text_Category."/".$text_Brand_Name."/".$file_name;
        $file_store = "../../../images/".$text_Category."/".$file_name;

        if (move_uploaded_file($temp_loc, $file_store)) {
            mysqli_query($CON, "INSERT INTO tblproducts(Category_Id, Product_Name, Brand_Id, Price, Image) VALUES('$cmb_Category','$txt_product_name','$cmb_Brand_Name','$txt_price','$file_store');");
			echo '<script> alert("Product Added!") </script>';
			echo '<script> window.location.href = "../../admin-products.php" </script>';
		}
    }
	else {
		echo '<script> window.location.href = "../../admin-products.php" </script>';
	}
 ?>