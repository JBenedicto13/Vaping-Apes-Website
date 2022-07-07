<?php 
	require('../functions/database.php');
	
	$RESULT = mysqli_query($CON, "SELECT * FROM tblaccounts;")
	or die("Error in executing query...");
 ?>