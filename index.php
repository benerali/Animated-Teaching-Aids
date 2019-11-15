<?php
session_start();
include('include/database.php');
error_reporting(0);

?>


<!DOCTYPE html>
<html lang="en">
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
  <title>Online Animated Teaching Aids</title>
  <link rel="stylesheet" href="assets/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="assets/slick.css" type="text/css">
<link rel="stylesheet" href="assets/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/owl.transitions.css" type="text/css">
<link href="assets/bootstrap-slider.min.css" rel="stylesheet">
<link href="assets/font-awesome.min.css" rel="stylesheet">

  <link rel="stylesheet"  href="assets/master.css">

   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <link rel="stylesheet"2href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrap/3.2.1/css/bootstrap.theme.mini.css">
	
</head>

<body>
<!--Header-->
<?php include('include/header.php');?>
<!-- /Header -->

    <!-- Resent Animation-->
<section class="section-padding gray-bg">
  <div class="container">
    <div class="section-header text-center">
      <h2>What <span>We Do</span></h2>
      <p>If you are a teacher willing to go that extra mile for your students to understand what you are teaching them, then this is the place to be. Today’s learners need more than printouts and PowerPoint presentations. They need active, dynamic content that keeps them engaged. Storytelling is the most effective form of communication. Instead of talking at your learners, allow them to see the world through the eyes of accessible characters.</p>
      <p> At Online Animated Teaching Aids our animaters are eager to cater for your academic needs. Our main goal is to assist teachers and students to understand some of the complicated concepts that are taught in class. To drop a request go to the contact us page and our team will get back to you as soon as possible. Any educational animation that you need can be made available as per your request</p>
    </div>
    <div class="row"> 
      
      <!-- Nav tabs -->
      <div class="recent-tab">
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#approvedanimation" role="tab" data-toggle="tab">Approved New Animation</a></li>
        </ul>
      </div>
      <!-- New animations have recently been approved -->
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="approvedanimations">

<?php
            $sql = "SELECT tblanimations.AnimationsTitle,tblcategories.CategoryName,tblanimations.id,tblanimations.AnimationsOverview,tblanimations.Vimage1 from tblanimations join tblcategories on tblcategories.id=tblanimations.AnimationsCategory";
$query = $conn -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{  
?>  
<!--check out in the net, change together with the animation details code-->
<div class="col-list-3">
<div class="recent-animations">
<div class="animation-info-box"> <a href="animation-details.php?aid=<?php echo htmlentities($result->id);?>"> </a>
</div>
<div class="animation-title-m">
<h6><a href="animation-details.php?aid=<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->CategoryName);?> , <?php echo htmlentities($result->AnimationsTitle);?></a></h6>
</div>
<div class="inventory_info_m">
<p><?php echo substr($result->AnimationsOverview,0,70);?></p>
</div>
</div>
</div>
<li class="gray-bg">
                <div class="recent_post_img"> <a href="animation-details.php?aid=<?php echo htmlentities($result->id);?>"><video width="100%" controls>
              <source src="admin/img/vehicleimages/<?php echo htmlentities($result->Vimage1);?>" type="video/mp4">
                    </video></a></div>
                <div class="recent_post_title"> <a href="animation-details.php?aid=<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->CategoryName);?> , <?php echo htmlentities($result->AnimationsTitle);?></a>
                
                </div>
              </li>
<?php
}}
            ?>
         
          </div>
        </div>
    </div>
  </div>
</section>
<!-- /Resent Cat --> 

<!--request -->
<section class="section-padding request-section parallex-bg">
  <div class="container div_zindex">
    <div class="section-header white-text text-center">
      <h2>Some Customers Requests<span> to be Handled</span></h2>
    </div>
    <div class="row">
      <div id="request-slider">
      
      
      
<?php 
$tid=1;
$sql = "SELECT tblrequest.Request,tblusers.username from tblrequest join tblusers on tblrequest.UserEmail=tblusers.email where tblrequest.status=:tid";
$query = $conn -> prepare($sql);
$query->bindParam(':tid',$tid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ 
          ?>


        <div class="request-m">
          <div class="request-content">
            <div class="request-heading">
              <h5><?php echo htmlentities($result->username);?></h5>
            <p><?php echo htmlentities($result->Request);?></p>
          </div>
        </div>
        </div>
        <?php 
}}
          ?>
        
       
  
      </div>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /request--> 


<!--Footer -->
<?php include('include/footer.php');?>
<!-- /Footer--> 


<!--login -->
<?php // include('include/login.php');?>
<!-- /login--> 

<!--Registration -->
<?php
    //include('include/registration.php');
    ?>
<!-- /Registration--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 
   
  
    </body>
</html>