<?php
    require ('../LoginPHP/session.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .container {
            width: 100%;
            height: 100vh;
            margin: 0;
            padding: 0;
        }
        .tblSample {
            margin-left: auto;
            margin-right: auto;
            text-align: center;
            border: solid 1px black;
            border-collapse: collapse;
        }
        .tblSample tr td{
            border: solid 1px black;
        }

    </style>
</head>
<body>
    <?php
        require('../functions/database.php');
        $RESULT = mysqli_query($CON, "SELECT * FROM tblproducts;");
        $NUM_ROWS = mysqli_fetch_array(mysqli_query($CON, "SELECT COUNT(*) FROM tblproducts;"))[0];
        $NUM_COLS = 4;
    ?>
    <div class="container">
        <table class="tblSample">
            <tr>
                <td>Hello</td>
                <td>World</td>
            </tr>
        </table>
    </div>
</body>
</html>

<!--
    int matrix[2][2] = {{1,2},{3,4}};
	int i, j;
	int ROWS = 2;
	int COLS = 2;
	
	for (i = 0; i < ROWS; i++) {
    	for (j = 0; j < COLS; j++) {
        	cout << matrix[i][j];
    	}
    	cout << endl;
	}
-->
