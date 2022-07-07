<?php require ('admin-session.php'); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contents</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/contents.css">
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
                        <a href="admin-products.php">Products</a>
                        <a href="admin-contents.php" class="active">Contents</a>
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
                <div class="col-sm-12 content-div">
                    <div class="col-sm-10 nav-page">
                        <ul class="nav nav-pills mb-3 .justify-content-end" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Index Page</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Home Page</button>
                            </li>
                        </ul>
                    </div>

                    <div class="tab-content page-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            <form action="" method="post">
                                <table>
                                    <tr>
                                        <td><label for="txttitle">Title: </label></td>
                                        <td><Input type="text" id="txttitle" name="txttitle" placeholder="Enter Title"></Input></td>
                                    </tr>
                                    <tr>
                                        <td><label for="txtsubtitle">Subtitle: </label></td>
                                        <td><Input type="text" id="txttitle" name="txttitle" placeholder="Enter Subtitle"></Input></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <form action="" method="post">
                                <table>
                                    <tr>
                                        <td><label for="txttitle">Title: </label></td>
                                        <td><Input type="text" id="txttitle" name="txttitle" placeholder="Enter Title"></Input></td>
                                    </tr>
                                    <tr>
                                        <td><label for="txtsubtitle">Subtitle: </label></td>
                                        <td><Input type="text" id="txttitle" name="txttitle" placeholder="Enter Subtitle"></Input></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>