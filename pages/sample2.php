<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Grid</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        .container {
            margin-left: auto;
            margin-right: auto;
        }
        h1 {
            text-align: center;
            color: royalblue;
        }
        .col {
            border: 1px solid black;
            height: 300px;
            width: 300px;
            margin: 20px 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>BOOTSTRAP GRID</h1>
        <div class="row">
            <div class="col">1</div>
            <div class="col">2</div>
            <div class="col">3</div>
            <div class="col">4</div>
        </div>
        <div class="row">
            <div class="col">1</div>
            <div class="col">2</div>
            <div class="col">3</div>
        </div>
    </div>
</body>
</html>