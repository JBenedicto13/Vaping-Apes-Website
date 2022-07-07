<?php 
	require('database.php');
	if (isset($_POST['btnDel'])) {

		$txt_deleteId = $_POST['del_id'];

		$del_img = mysqli_query($CON, "SELECT * FROM tblproducts WHERE Id = '$txt_deleteId';");
        while ($ROW = mysqli_fetch_array($del_img)) {
            $file_pointer = $ROW['Image'];

            if (unlink($file_pointer)) { 
                 
            } 
            else {
                echo ("$file_pointer cannot be deleted due to an error");
            }
            
            if (mysqli_query($CON, "DELETE FROM tblproducts WHERE Id = '$txt_deleteId';")) {
                echo '<script> alert("Product Deleted!") </script>';
                echo '<script> window.location.href = "../../admin-products.php" </script>';
            }
        }
	}
	else {
		echo '<script> window.location.href = "../../admin-products.php" </script>';
	}
 ?>