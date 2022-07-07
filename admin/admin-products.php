<?php
    require ('admin-session.php');
    require ('functions/products/view-products.php');
    $category_result = mysqli_query($CON,"SELECT * FROM tblprodcat");
    $brand_result = mysqli_query($CON,"SELECT * FROM tblbrands");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/style-products.css">
    <script src="https://kit.fontawesome.com/433a86411d.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="js/login.js"></script>

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
                        <a href="admin-panel.php">Dashboard</a>
                        <a href="admin-orders.php">Orders</a>
                        <a href="admin-products.php" class="active">Products</a>
                        <a href="admin-contents.php">Contents</a>
                        <a href="admin-accounts.php">Accounts</a>
                    </div>
                    <div class="settings-div">
                        <a href="#">Settings</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-10 right-col">
                <div class="topnav">
                    <a data-bs-toggle="collapse" href="#collapseLogout" role="button" aria-expanded="false" aria-controls="collapseLogout"><img src="../images/vaping-apes-logo.jpg" alt=""></a>
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
                    <form action="functions/products/add-products.php" method="POST" enctype="multipart/form-data">
                        <div class="row mx-auto">
                        <h3>Add New Product</h3>
                            <div class="col-sm-5 cols">
                                <label for="txtId" class="form-label">Product Id: </label>
                                <input type="text" value="" id="txtId" name="txtid" class="form-text" disabled>
                                <br><br>
                                <label for="cmbCategory" class="form-label">Category: </label>
                                <select name="listCategory" id="cmbCategory">
                                    <option disabled selected>Select Category</option>
                                    <?php while ($cat_row = mysqli_fetch_array($category_result)) { ?>
                                    <option id="cmbCategoryOption" value="<?php echo $cat_row['Id'] ?>"><?php echo $cat_row['Category'] ?></option>
                                    <?php } ?>
                                </select>
                                <input type="hidden" value="" id="hidden_cat">
                                <br><br>
                                <label for="txtProductName" class="form-label">Prodcut Name: </label>
                                <input type="text" placeholder="Enter Product Name" id="txtProductName" name="txtProductName" class="form-text">
                            </div>
                            <div class="col-sm-5 cols">
                                <label for="cmbBrandName" class="form-label">Brand Name: </label>
                                <select name="listBrandName" id="cmbBrandName">
                                    <option disabled selected>Select Brand</option>
                                    <?php while ($brand_row = mysqli_fetch_array($brand_result)) { ?>
                                    <option id="cmbBrandOption" value="<?php echo $brand_row['brand_id'] ?>"><?php echo $brand_row['brand_name'] ?></option>
                                    <?php } ?>
                                </select>
                                <br><br>
                                <label for="txtPrice" class="form-label">Price: </label>
                                <input type="text" placeholder="Enter Price" id="txtPrice" name="txtPrice" class="form-text">
                                <br><br>
                                <label for="prod-image" class="form-label">Image: </label>
                                <input type="file" id="prod-image" name="prod-image">
                            </div>
                        </div>
                        <div class="row add-prod">
                            <div class="col"><input type="submit" class="btn btn-light btn-add" id="btnAdd" name="btnAdd" value="Add Product"></div>
                        </div>
                    </form>
                </div>
                <br><br>
                <div class="col-sm-12 Products-div">
                <h1>PRODUCTS</h1>
                    <table class="tblProducts">
                        <th>Id</th>
                        <th>Category</th>
                        <th>Product Name</th>
                        <th>Brand Name</th>
                        <th>Price</th>
                        <th>Action</th>
                        <?php while ($ROW = mysqli_fetch_array($RESULT)) { ?>
                        <tr>
                            <td><?php echo $ROW['Id'] ?></td>
                            <td><?php echo $ROW['Category'] ?></td>
                            <td><?php echo $ROW['Product_Name'] ?></td>
                            <td><?php echo $ROW['brand_name'] ?></td>
                            <td>&#8369;<?php echo $ROW['Price'] ?></td>
                            <td class="table_action">
                                <form name="frmEdit" action="functions/products/edit-products.php" method="post">
                                    <input class="btn btn-primary" type="submit" name="btnEdit" value="Edit">
                                    <input type="hidden" name="edit_id" value="<?php echo $ROW['Id'] ?>">
                                    <input type="hidden" name="edit_category" value="<?php echo $ROW['Category'] ?>">
                                    <input type="hidden" name="edit_prodname" value="<?php echo $ROW['Product_Name'] ?>">
                                    <input type="hidden" name="edit_brand" value="<?php echo $ROW['brand_name'] ?>">
                                    <input type="hidden" name="edit_price" value="<?php echo $ROW['Price'] ?>">
                                    <input type="hidden" name="edit_img" value="<?php echo $ROW['Image'] ?>">
                                </form>
                                <form name="frmDel" action="functions/products/delete-products.php" method="post">
                                    <input class="btn btn-primary" type="submit" name="btnDel" value="Delete">
                                    <input type="hidden" name="del_id" value="<?php echo $ROW['Id'] ?>">
                                </form>
                            </td>
                        </tr>
                        <?php } ?>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>

</html>