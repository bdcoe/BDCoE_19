<?php
$nameErr = $numberErr = $altnumberErr = $dobErr = $addressErr = $emailErr = $nationErr = $textErr = $school1Err = $percent1Err
 = $year1Err = $school2Err = $percent2Err = $year2Err = $collegeErr = $courseErr = $branchErr = $percent3Err = $year3Err = 
 $companyErr = $date1Err = $date2Err = $projectErr = $techErr = $projectsErr = $skill1Err =$skill2Err = $skill3Err = 
 $experienceErr = $interestErr = $dateErr = $placeErr = "";
 
 $name = $number = $altnumber = $dob = $address = $email = $nation = $text = $school1 = $percent1
 = $year1 = $school2 = $percent2 = $year2 = $college = $course = $branch = $percent3 = $year3 = 
 $company = $date1 = $date2 = $project = $tech = $projects = $skill1  =$skill2 = $skill3 = 
 $experience = $interest = $date = $place = "";

if ($_SERVER["REQUEST_METHOD"] == "POST")
	{
		echo "PERSONAL DETAILS"."<br>";
  if (empty($_POST["name"]))
	  {
    $nameErr = "Name is required";
  }
  else 
  {
    $name=($_POST["name"]);
	echo "Name: ".$name."<br>";
  }
   if (empty($_POST["number"]))
	   {
    $numberErr = "Number is required";
  }
  else 
  {
    $number=($_POST["number"]);
	echo "Mobile number: ".$number."<br>";
  } 
  
   $altnumber = $_POST["altnumber"];
   {
	   echo "Alternate mobile number: ".$altnumber."<br>";
   }
   if (empty($_POST["dob"]))
	   {
    $dobErr = "Date of birth is required";
  }
  else 
	  
  {
    $dob=($_POST["dob"]);
	echo "Date of birth: ".$dob."<br>";
  } 
   if (empty($_POST["address"]))
	   {
    $addressErr = "Address is required";
  }
  else 
  {
    $address=($_POST["address"]);
	echo "Address: ".$address."<br>";
  }
	if (empty($_POST["email"]))
	   {
    $emailErr = "Email is required";
  }
  else 
  {
    $email=($_POST["email"]);
	echo "E-mail ID: ".$email."<br>";
  } 
  if (empty($_POST["nation"]))
	   {
    $nationErr = "Nationality is required";
  }
  else 
  {
    $nation=($_POST["nation"]);
	echo "Nationality: ".$nation."<br>";
  } 
  echo "CAREER OBJECTIVE"."<br>";
  if (empty($_POST["text"]))
	   {
    $textErr = "Objectivity is required";
  }
  else 
  {
    $text=($_POST["text"]);
	echo $text."<br>";
  } 
  echo "CLASS 10 DETAILS"."<br>";
  if (empty($_POST["school1"]))
	   {
    $school1Err = "School name is required";
  }
  else 
  {
    $school1=($_POST["school1"]);
	echo "School: ".$school1."<br>";
  } 
  if (empty($_POST["percent1"]))
	   {
    $percent1Err = "Percentage is required";
  }
  else 
  {
    $percent1=($_POST["percent1"]);
	echo "Percentage: ".$percent1."<br>";
  } 
  if (empty($_POST["year1"]))
	   {
    $year1Err = "Year is required";
  }
  else 
  {
    $year1=($_POST["year1"]);
	echo "Year: ".$year1."<br>";
  } 
  echo "CLASS 12 DETAILS"."<br>";
if (empty($_POST["school2"]))
	   {
    $school2Err = "School name is required";
  }
  else 
  {
    $school2 = ($_POST["school2"]);
	echo "School: ".$school2."<br>";
  } 
  if (empty($_POST["percent2"]))
	   {
    $percent2Err = "Percentage is required";
  }
  else 
  {
    $percent2=($_POST["percent2"]);
	echo "Percentage: ".$percent2."<br>";
  } 
  if (empty($_POST["year2"]))
	   {
    $year2Err = "Year is required";
  }
  else 
  {
    $year2=($_POST["year2"]);
	echo "Year: ".$year2."<br>";
  } 
  echo "COLLEGE DETAILS"."<br>";
  if (empty($_POST["college"]))
	   {
    $collegeErr = "College name is required";
  }
  else 
  {
    $college = ($_POST["college"]);
	echo "College: ".$college."<br>";
  } 
  if (empty($_POST["course"]))
	   {
    $courseErr = "Course name is required";
  }
  else 
  {
    $course = ($_POST["course"]);
	echo "Course: ".$course."<br>";
	}
	if (empty($_POST["branch"]))
	   {
    $branchErr = "Branch name is required";
  }
  else 
  {
    $branch = ($_POST["branch"]);
	echo "Branch: ".$branch."<br>";
  }
  if (empty($_POST["percent3"]))
	   {
    $percent3Err = "Percentage is required";
  }
  else 
  {
    $percent3 = ($_POST["percent3"]);
	echo "Percentage: ".$percent3."<br>";
  }
  if (empty($_POST["year3"]))
	   {
    $year3Err = "Year is required";
  }
  else 
  {
    $year3 = ($_POST["year3"]);
	echo "Year: ".$year3."<br>";
  }
  echo "SUMMER TRAINING"."<br>";
  if (empty($_POST["company"]))
	   {
    $companyErr = "Company name is required";
  }
  else 
  {
    $company = ($_POST["company"]);
	echo "Company: ".$company."<br>";
	}
	if (empty($_POST["date1"]))
	   {
    $date1Err = "Starting date is required";
  }
  else 
  {
    $date1 = ($_POST["date1"]);
	echo "Start Date: ".$date1."<br>";
	}
	if (empty($_POST["date2"]))
	   {
    $date2Err = "Ending date is required";
  }
  else 
  {
    $date2 = ($_POST["date2"]);
	echo "End Date: ".$date2."<br>";
  }
  if (empty($_POST["project"]))
	   {
    $projectErr = "Project name is required";
  }
  else 
  {
    $project = ($_POST["project"]);
	echo "Project: ".$project."<br>";
  }
  if (empty($_POST["tech"]))
	   {
    $techErr = "Technology used is required";
  }
  else 
  {
    $tech = ($_POST["tech"]);
	echo "Technology Used: ".$tech."<br>";
	}
	echo "PROJECTS UNDERTAKEN"."<br>";
	if (empty($_POST["projects"]))
	   {
    $projectsErr = "Project name is required";
  }
  else 
  {
    $projects = ($_POST["projects"]);
	echo "Final Year Project: ".$projects."<br>";
  }
  if (empty($_POST["skill1"]))
	   {
    $skill1Err = "Skill is required";
  }
  else 
  {
    $skill1 = ($_POST["skill1"]);
	echo "SKILL 1: ".$skill1."<br>";
  }
  if (empty($_POST["skill2"]))
	   {
    $skill2Err = "Skill is required";
  }
  else 
  {
    $skill2 = ($_POST["skill2"]);
	echo "SKILL 2: ".$skill2."<br>";
  }
  if (empty($_POST["skill3"]))
	   {
    $skill3Err = "Skill is required";
  }
  else 
  {
    $skill3 = ($_POST["skill3"]);
	echo "SKILL 3: ".$skill3."<br>";
  }
  if (empty($_POST["experience"]))
	   {
    $experienceErr = "Experience is required";
  }
  else 
  {
    $experience = ($_POST["experience"]);
	echo "EXPERIENCE: ".$experience."<br>";
	}
	if (empty($_POST["interest"]))
	   {
    $interestErr = "Field of interest is required";
  }
  else 
  {
    $interest = ($_POST["interest"]);
	echo "AREAS OF INTEREST: ".$interest."<br>";
  }
  if (empty($_POST["date"]))
	   {
    $dateErr = "Date s required";
  }
  else 
  {
    $date = ($_POST["date"]);
	echo "DATE: ".$date."<br>";
  }
  if (empty($_POST["place"]))
	   {
    $placeErr = "Date s required";
  }
  else 
  {
    $place = ($_POST["place"]);
	echo "PLACE: ".$place."<br>";
  }
  
	}
?>