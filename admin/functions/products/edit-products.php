<?php 
    require('database.php');
    require ('../../admin-session.php');
    require ('view-products.php');
    $category_result = mysqli_query($CON,"SELECT * FROM tblprodcat");
    $brand_result = mysqli_query($CON,"SELECT * FROM tblbrands");

    $edit_id = "";
    $edit_category = "";
    $edit_category_id = "";
    $edit_prodname = "";
    $edit_brand = "";
    $edit_brand_id = "";
    $edit_price = "";
    $edit_img = "";

    $cmb_Category = "";
    $cmb_Brand_Name = "";
    $text_Category = "";
    $text_Brand_Name = "";
    $temp_loc = "";
    $file_store = "";

    if (isset($_POST['btnEdit'])) {
		$edit_id = $_POST['edit_id'];
        $edit_category = $_POST['edit_category'];
        $cat_res_id = mysqli_query($CON,"SELECT * FROM tblprodcat WHERE Category = '$edit_category';");
        while($ROW = mysqli_fetch_array($cat_res_id)) {
            $edit_category_id = $ROW['Id'];
        }

        $edit_prodname = $_POST['edit_prodname'];
        $edit_brand = $_POST['edit_brand'];
        $cat_res_id = mysqli_query($CON,"SELECT * FROM tblbrands WHERE brand_name = '$edit_brand';");
        while($ROW = mysqli_fetch_array($cat_res_id)) {
            $edit_brand_id = $ROW['brand_id'];
        }
        
        $edit_price = $_POST['edit_price'];
        $edit_img = $_POST['edit_img'];

        $RESULT_EDIT = mysqli_query($CON,
        "SELECT p.Id, c.Category, p.Product_Name, b.brand_name, p.Price, p.Image
        FROM tblproducts p
        INNER JOIN tblbrands b ON b.brand_id = p.Brand
        INNER JOIN tblprodcat c ON c.Id = p.Category
        WHERE p.Id = '$edit_id';");
        
	}

	if (isset($_POST['btnSave'])) {
        $edit_id = $_POST['hidden_txtid'];
        $cmb_Category = $_POST['listCategory'];
        $txt_product_name = $_POST['txtProductName'];
        $txt_price = $_POST['txtPrice'];
        $cmb_Brand_Name = $_POST['listBrandName'];
        $file_name = $_FILES['prod-image']['name'];
        $hidden_img = $_POST['hidden-img'];

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
        
        if ($file_name != "") {
            $temp_loc = $_FILES['prod-image']['tmp_name'];
            $file_store = "../../../images/".$text_Category."/".$text_Brand_Name."/".$file_name;
            if (move_uploaded_file($temp_loc, $file_store)) {
                mysqli_query($CON, "UPDATE tblproducts SET Category = '$cmb_Category', Product_Name = '$txt_product_name', Brand = '$cmb_Brand_Name', Price = '$txt_price', Image = '$file_store' WHERE Id = '$edit_id';");
                echo '<script> alert("Product Updated!") </script>';
                echo '<script> window.location.href = "../../admin-products.php" </script>';
            }
        }
        else {
            $file_store = $hidden_img;
            mysqli_query($CON, "UPDATE tblproducts SET Category = '$cmb_Category', Product_Name = '$txt_product_name', Brand = '$cmb_Brand_Name', Price = '$txt_price', Image = '$file_store' WHERE Id = '$edit_id';");
            echo '<script> alert("Product Updated!") </script>';
            echo '<script> window.location.href = "../../admin-products.php" </script>';
            
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
    <link rel="stylesheet" href="../../css/main.css">
    <link rel="stylesheet" href="../../css/style-products.css">
    <script src="https://kit.fontawesome.com/433a86411d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="../../js/login.js"></script>

</head>
<body>
    <div class="container-fluid main-container">
        <div class="row">
            <div class="col-sm-2 left-col">
                <div class="sidenav navbar-expand-lg col-sm-2">
                    <div class="title-div">
                        <h2>Admin</h2>
                    </div>
                    <div class="items">
                        <a href="../../admin-panel.php">Dashboard</a>
                        <a href="../../admin-orders.php">Orders</a>
                        <a href="../../admin-products.php" class="active">Products</a>
                        <a href="../../admin-contents.php">Contents</a>
                        <a href="../../admin-accounts.php">Accounts</a>
                    </div>
                    <div class="settings-div">
                        <a href="#">Settings</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-10 right-col">
                <div class="topnav">
                    <a data-bs-toggle="collapse" href="#collapseLogout" role="button" aria-expanded="false" aria-controls="collapseLogout"><img src="../../../images/vaping-apes-logo.jpg" alt=""></a>
                    <a href="#">Username</a>
                </div>
                <div class="collapse" id="collapseLogout">
                    <div class="card card-body">
                        <ul>
                            <li><form action="admin-logout.php" method="post"><input class="btn btn-dark" type="submit" name="btnLogout" value="Logout"></form></li>
                        </ul>
                    </div>
                </div>
                <br>
                <div class="col-sm-10 mx-auto add-form">
                    <form action="edit-products.php" method="POST" enctype="multipart/form-data">
                        <div class="row mx-auto">
                        <h3>Edit Product</h3>
                            <div class="col-sm-5 cols">
                                <label for="txtId" class="form-label">Product Id: </label>
                                <input type="text" value="<?php echo $edit_id;?>" id="txtId" name="txtId" class="form-text" disabled>
                                <input type="hidden" value="<?php echo $edit_id;?>" id="hidden_txtid" name="hidden_txtid">
                                <br><br>
                                <label for="cmbCategory" class="form-label">Category: </label>
                                <select name="listCategory" id="cmbCategory">
                                    <option disabled selected>Select Category</option>
                                    <?php while ($cat_row = mysqli_fetch_array($category_result)) { ?>
                                    <option id="cmbCategoryOption" value="<?php echo $cat_row['Id']?>"><?php echo $cat_row['Category'] ?></option>
                                    <?php } ?>
                                </select>
                                
                                <input type="hidden" value="<?php echo $edit_category_id?>" id="hidden_cat">
                                <br><br>
                                <label for="txtProductName" class="form-label">Prodcut Name: </label>
                                <input type="text" placeholder="Enter Product Name" id="txtProductName" name="txtProductName" class="form-text" value="<?php echo $edit_prodname ?>">
                            </div>
                            <div class="col-sm-5 cols">
                                <label for="cmbBrandName" class="form-label">Brand Name: </label>
                                <select name="listBrandName" id="cmbBrandName">
                                    <option disabled selected>Select Brand</option>
                                    <?php while ($brand_row = mysqli_fetch_array($brand_result)) { ?>
                                    <option id="cmbBrandOption" value="<?php echo $brand_row['brand_id'] ?>"><?php echo $brand_row['brand_name'] ?></option>
                                    <?php } ?>
                                </select>
                                
                                <input type="hidden" value="<?php echo $edit_brand_id?>" id="hidden_brand">
                                <br><br>
                                <label for="txtPrice" class="form-label">Price: </label>
                                <input type="text" placeholder="Enter Price" id="txtPrice" name="txtPrice" class="form-text" value="<?php echo $edit_price ?>">
                                <br><br>
                                <label for="prod-image" class="form-label">Image: </label>
                                <input type="file" id="prod-image" name="prod-image">
                            </div>
                            <div class="col" id="preview-img">
                                <img id="img-prev" class="img-fluid" src="<?=$edit_img?>" alt="">
                                <input type="hidden" name="hidden-img" value="<?=$edit_img?>">
                            </div>
                        </div>
                        <div class="row add-prod">
                            <div class="col"><input type="submit" class="btn btn-light btn-add" id="btnSave" name="btnSave" value="Save Changes"></div>
                        </div>
                    </form>
                </div>
                <br><br>
            </div>
        </div>
    </div>
</body>
<script>
    const $hidden_cat = document.querySelector('#hidden_cat');
    const $select = document.querySelector('#cmbCategory');
    $select.value = $hidden_cat.value;

    const $hidden_brand = document.querySelector('#hidden_brand');
    const $select1 = document.querySelector('#cmbBrandName');
    $select1.value = $hidden_brand.value;

</script>
</html>