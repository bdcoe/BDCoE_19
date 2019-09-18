<?php
require('C:\xampp\htdocs\fpdf181 (1)\fpdf.php');

 $name = $number = $altnumber = $dob = $address = $email = $nation = $text = $school1 = $percent1
 = $year1 = $school2 = $percent2 = $year2 = $college = $course = $branch = $percent3 = $year3 = 
 $company = $date1 = $date2 = $project = $tech = $projects = $acheive = $skill1 = $skill2 = $skill3 = 
 $experience = $interest = $date = $place = "";
 if ($_SERVER["REQUEST_METHOD"] == "POST")
{
$name=test_input($_POST["name"]);
$number=test_input($_POST["number"]);
$altnumber=test_input($_POST["altnumber"]);
$dob=test_input($_POST["dob"]);
$address=test_input($_POST["address"]);
$email=test_input($_POST["email"]);
$nation=test_input($_POST["nation"]);
$text=test_input($_POST["text"]);
$school1=test_input($_POST["school1"]);
$percent1=test_input($_POST["percent1"]);
$year1=test_input($_POST["year1"]);
$school2=test_input($_POST["school2"]);
$percent2=test_input($_POST["percent2"]);
$year2=test_input($_POST["year2"]);
$college=test_input($_POST["college"]);
$course=test_input($_POST["course"]);
$branch=test_input($_POST["branch"]);
$percent3=test_input($_POST["percent3"]);
$year3=test_input($_POST["year3"]);
$company=test_input($_POST["company"]);
$date1=test_input($_POST["date1"]);
$date2=test_input($_POST["date2"]);
$project=test_input($_POST["project"]);
$tech=test_input($_POST["tech"]);
$projects=test_input($_POST["projects"]);
$acheive=test_input($_POST["acheive"]);
$skill1=test_input($_POST["skill1"]);
$skill2=test_input($_POST["skill2"]);
$skill3=test_input($_POST["skill3"]);
$experience=test_input($_POST["experience"]);
$interest=test_input($_POST["interest"]);
$date=test_input($_POST["date"]);
$place=test_input($_POST["place"]);
}
function test_input($data)
{
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
}

   
    
  
 

    $name=($_POST["name"]);
	$number=($_POST["number"]);
	$altnumber = $_POST["altnumber"];
	$dob=($_POST["dob"]);
	$address=($_POST["address"]);
	$email=($_POST["email"]);
	$nation=($_POST["nation"]);
	$text=($_POST["text"]);
	$school1=($_POST["school1"]);
    $percent1=($_POST["percent1"]);
    $year1=($_POST["year1"]);
    $school2=($_POST["school2"]);
    $percent2=($_POST["percent2"]);
    $year2=($_POST["year2"]);
    $college = ($_POST["college"]);
    $course = ($_POST["course"]);
    $branch = ($_POST["branch"]);
    $percent3 = ($_POST["percent3"]);
    $year3 = ($_POST["year3"]);
    $company = ($_POST["company"]);
    $date1 = ($_POST["date1"]);
    $date2 = ($_POST["date2"]);
    $project = ($_POST["project"]);
    $tech = ($_POST["tech"]);
    $projects = ($_POST["projects"]);
    $acheive = ($_POST["acheive"]);
    $skill1 = ($_POST["skill1"]);
    $skill2 = ($_POST["skill2"]);
    $skill3 = ($_POST["skill3"]);
    $experience = ($_POST["experience"]);
    $interest = ($_POST["interest"]);
    $date = ($_POST["date"]);
	$place = ($_POST["place"]);

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',12);

$pdf->Cell(200,10,"CURRICULUM VITAE",0,1,'C');
$pdf->Cell(50,10,"Personal Details",0,1);
$pdf->Cell(50,10,"Name:",1,0);
$pdf->Cell(70,10,$name,1,1);
$pdf->Cell(50,10,"Mobile Number:",1,0);
$pdf->Cell(70,10,$number,1,1);
$pdf->Cell(50,10,"Alternate Mob. No.:",1,0);
$pdf->Cell(70,10,$altnumber,1,1);
$pdf->Cell(50,10,"Date of birth:",1,0);
$pdf->Cell(70,10,$dob,1,1);
$pdf->Cell(50,10,"Address:",1,0);
$pdf->Cell(70,10,$address,1,1);
$pdf->Cell(50,10,"E-mail address:",1,0);
$pdf->Cell(70,10,$email,1,1);
$pdf->Cell(50,10,"Nationality:",1,0);
$pdf->Cell(70,10,$nation,1,1);
$pdf->Cell(50,10,"Career Objective",0,1);
$pdf->Cell(190,10,$text,1,1);
$pdf->Cell(50,10,"Educational Qualifications",0,1);
$pdf->Cell(50,10,"Class 10",0,1);
$pdf->Cell(50,10,"School Name: ",1,0);
$pdf->Cell(70,10,$school1,1,1);
$pdf->Cell(50,10,"Passing Year:",1,0);
$pdf->Cell(70,10,$year1,1,1);
$pdf->Cell(50,10,"Percentage:",1,0);
$pdf->Cell(70,10,$percent1,1,1);
$pdf->Cell(50,10,"Class 12",0,1);
$pdf->Cell(50,10,"School Name: ",1,0);
$pdf->Cell(70,10,$school2,1,1);
$pdf->Cell(50,10,"Passing Year:",1,0);
$pdf->Cell(70,10,$year2,1,1);
$pdf->Cell(50,10,"Percentage:",1,0);
$pdf->Cell(70,10,$percent2,1,1);
$pdf->Cell(50,10,"Graduation",0,1);
$pdf->Cell(50,10,"College Name:",1,0);
$pdf->Cell(70,10,$college,1,1);
$pdf->Cell(50,10,"Course:",1,0);
$pdf->Cell(70,10,$course,1,1);
$pdf->Cell(50,10,"Branch:",1,0);
$pdf->Cell(70,10,$branch,1,1);
$pdf->Cell(50,10,"Passing Year:",1,0);
$pdf->Cell(70,10,$year3,1,1);
$pdf->Cell(50,10,"Percentage:",1,0);
$pdf->Cell(70,10,$percent3,1,1);
$pdf->Cell(50,10,"Summer Training",0,1);
$pdf->Cell(50,10,"Company Name:",1,0);
$pdf->Cell(70,10,$company,1,1);
$pdf->Cell(50,10,"Starting Date:",1,0);
$pdf->Cell(70,10,$date1,1,1);
$pdf->Cell(50,10,"Ending Date:",1,0);
$pdf->Cell(70,10,$date2,1,1);
$pdf->Cell(50,10,"Project Undertaken:",1,0);
$pdf->Cell(70,10,$project,1,1);
$pdf->Cell(50,10,"Technology Used:",1,0);
$pdf->Cell(70,10,$tech,1,1);
$pdf->Cell(50,10,"Final Year Project",0,1);
$pdf->Cell(50,10,"Project Undertaken:",1,0);
$pdf->Cell(70,10,$projects,1,1);
$pdf->Cell(50,10,"Acheivements",0,1);
$pdf->Cell(190,10,$acheive,1,1);
$pdf->Cell(50,10,"Skills",0,1);
$pdf->Cell(50,10,"Skill 1:",1,0);
$pdf->Cell(70,10,$skill1,1,1);
$pdf->Cell(50,10,"Skill 2:",1,0);
$pdf->Cell(70,10,$skill2,1,1);
$pdf->Cell(50,10,"Skill 3:",1,0);
$pdf->Cell(70,10,$skill3,1,1);
$pdf->Cell(50,10,"Experience",0,1);
$pdf->Cell(190,10,$experience,1,1);
$pdf->Cell(50,10,"Areas of Interest",0,1);
$pdf->Cell(190,10,$interest,1,1);
$pdf->Cell(50,10,"Date:",0,0);
$pdf->Cell(70,10,$date,0,1);
$pdf->Cell(50,10,"Place:",0,0);
$pdf->Cell(70,10,$place,0,1);



$pdf->Output();
?>