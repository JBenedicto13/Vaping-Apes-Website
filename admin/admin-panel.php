<?php require ('admin-session.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="css/main.css">
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
                        <a href="admin-panel.php" class="active">Dashboard</a>
                        <a href="admin-orders.php">Orders</a>
                        <a href="admin-products.php">Products</a>
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

                <div class="col-sm-12 report">
                    <div class="rep-card">
                        <div><h1>156</h1></div>
                        <h5>SALES TODAY</h5>
                    </div>
                    <div class="rep-card">
                        <div><h1>156</h1></div>
                        <h5>SALES TODAY</h5>
                    </div>
                    <div class="rep-card">
                        <div><h1>156</h1></div>
                        <h5>SALES TODAY</h5>
                    </div>
                </div>
                <br><br>
                <div class="col-sm-12 Orders-div">
                <h1>ORDERS</h1>
                    <table class="tblOrders">
                        <th>Order No.</th>
                        <th>Customer Id</th>
                        <th>Product Id</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <th>Status</th>

                        <tr>
                            <td>124</td>
                            <td>27</td>
                            <td>85</td>
                            <td>2</td>
                            <td>&#8369;2000</td>
                            <td>Pending</td>
                        </tr>
                    </table>
                </div>

            </div>
        </div>
    </div>
</body>
</html>