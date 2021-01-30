<?php require_once 'konfiguracija.php';?>
<!DOCTYPE html>
<html lang="en">
<head>
<?php require_once 'head.php';?>
</head>
<body>
    <div class="grid-container">
        <div class="grid-x">
            <div class="large-2 cell">
            <?php require_once 'izbornik.php';?>
            </div>
            <div class="large-10 cell">
                <?php             
$redovi = $_GET['redovi'];
$stupci =$_GET['stupci'];  

echo '<table>';
for($i=1;$i<$redovi+1;$i++){
    echo '<tr>';
    for($j=0; $j<$stupci;$j++){
        echo '<td>'.($i + ($j*$redovi)).'</td>';
    }
    echo '</tr>';
}
echo '</table>';

                ?>
            </div>
        </div>
    </div>

<?php require_once 'skripte.php';?>
</body>
</html>