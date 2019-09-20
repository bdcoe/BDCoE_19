<?php
require('C:\xampp\htdocs\fpdf181 (1)\fpdf.php');
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file);

//$image="th.jpg";
$pdf =new FPDF();
$pdf-> AddPage();
$pdf-> SetFont("Arial","B",10);
$pdf-> Image($target_file,150,15,35,35);


$pdf->Output();
?>