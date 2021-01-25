<?php require_once 'konfiguracija.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>
<?php
$suma=0;


foreach($_GET as $k => $v){
     $suma=$suma+$v;
    
}

echo $suma;


?></title>
<link rel ="stylesheet" href="css/foundation.css">
<link rel ="stylesheet" href="css/app.css">
</head>
<body>
    <div class="grid-container">
        <div class="grid-x">
            <div class="large-2 cell">
            <?php require_once 'izbornik.php';?>
            </div>
            <div class="large-10 cell">
            
            </div>
        </div>
    </div>

<?php require_once 'skripte.php';?>
</body>
</html>