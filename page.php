<?php
session_start();
include('include/database.php');
error_reporting(0);

?>

<!DOCTYPE html>
<html>
<head>
  <title>Online Animated Teaching Aids </title>

  <link rel="stylesheet" href="assets/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="assets/slick.css" type="text/css">
<link rel="stylesheet" href="assets/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/owl.transitions.css" type="text/css">
<link href="assets/bootstrap-slider.min.css" rel="stylesheet">
<link href="assets/font-awesome.min.css" rel="stylesheet">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!--   <link rel="stylesheet"2href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.0/css/bootstrap.min.css">-->
	<link rel="stylesheet" href="https://maxcdn.bootstrap/3.2.1/css/bootstrap.theme.mini.css">
	<link rel="stylesheet"  href="assets/master.css">
</head>
<body>
      
<!--Header-->
<?php include('include/header.php');?>
<?php 
$pagetype=$_GET['type'];
$sql = "SELECT type,detail,PageName from tblpages where type=:pagetype";
$query = $conn -> prepare($sql);
$query->bindParam(':pagetype',$pagetype,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{
    ?>
<section class="page-header aboutus_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1><?php   echo htmlentities($result->PageName); ?></h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="index.php">Home</a></li>
        <li><?php   echo htmlentities($result->PageName); ?></li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<section class="about_us section-padding">
  <div class="container">
    <div class="section-header text-center">


      <h2><?php
    echo htmlentities($result->PageName); 
          ?></h2>
      <p><?php  
    echo $result->detail; 
          ?> </p>
    </div>
   <?php } }?>
  </div>
</section>
<!-- /About-us-->

<!--Footer -->
<?php include('include/footer.php');?>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 
   
   <!--Login-Form -->
<?php //include('include/login.php');?>
<!--/Login-Form --> 

<!--Register-Form -->
<?php// include('include/registration.php');?>

<!--/Register-Form -->
    </body>
</html>