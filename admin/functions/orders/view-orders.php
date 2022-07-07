<?php
    if (isset($_POST['btnSubmit'])) {
        $category = $_POST['category'];
        $brand = $_POST['brand'];
        $file_name = $_FILES['img_file']['name'];
        $temp_loc = $_FILES['img_file']['tmp_name'];
        $file_store = "../../../images/".$category."/".$brand."/".$file_name;

        if (move_uploaded_file($temp_loc, $file_store)) {
            echo "File Upload Successful!";
        }
    }

    
 ?>

 <!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Orders</title>
 </head>
 <body>
     <div class="container">
         <form action="?" method="POST" enctype="multipart/form-data">
             <table style="margin-left: auto; margin-right: auto; margin-top: 200px; border: 1px solid black;">
                <tr>
                    <label for="category">Category:</label>
                </tr>
                <tr>
                    <select name="category" id="category">
                        <option value="Automizer">Automizer</option>
                        <option value="Juice">Juice</option>
                        <option value="Coil">Coil</option>
                    </select>
                </tr>
                <tr>
                    <label for="brand">Brand:</label>
                </tr>
                <tr>
                    <select name="brand" id="brand">
                        <option value="Chill Yo">Chill Yo</option>
                        <option value="CloudCheck">Cloud Check</option>
                        <option value="DR FOG n CHILL">DR FOG n CHILL</option>
                    </select>
                </tr>
                <tr>
                    <td><label for="img_file">Upload Image</label></td>
                </tr>
                <tr>
                    <td><input type="file" id="img_file" name="img_file"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="btnSubmit" value="Upload"></td>
                </tr>
             </table>
         </form>
     </div>
 </body>
 </html>