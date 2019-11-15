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
<!-- /Header -->

<!--Page Header-->
<section class="page-header listing_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Animation Categories</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="index.php">Home</a></li>
        <li>Animation Categories</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<!--Listing-->
<section class="listing-page">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-md-push-3">
        <div class="result-sorting-wrapper">
          <div class="sorting-count">
<?php 
//Query for Listing count
$sql = "SELECT id from tblanimations";
$query = $conn -> prepare($sql);
$query->bindParam(':aid',$aid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=$query->rowCount();
?>
<p><span><?php echo htmlentities($cnt);?> Listings</span></p>
</div>
</div>

<?php $sql = "SELECT tblanimations.*,tblcategories.CategoryName,tblcategories.id as cid  from tblanimations join tblcategories on tblcategories.id=tblanimations.AnimationsCategory";
$query = $conn -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{  ?>
        <div class="product-listing-m gray-bg">
          <div class="product-listing-img"><video src="admin/img/vehicleimages/<?php echo htmlentities($result->Vimage1);?>" ,,width="270" height="220" controls></video> </div>
          <div class="product-listing-content">
            <h5><a href="animation-details.php?aid=<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->CategoryName);?> , <?php echo htmlentities($result->AnimationsTitle);?></a></h5>
            <a href="animation-details.php?aid=<?php echo htmlentities($result->id);?>" class="btn">View Details <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a>
          </div>
        </div>
      <?php }} ?>
         </div>
      
      <!--Side-Bar-->
      <aside class="col-md-3 col-md-pull-9">
        <div class="sidebar_widget">
          <div class="widget_heading">
            <h5><i class="fa fa-filter" aria-hidden="true"></i> Recently Approved Animations </h5>
          </div>
          <div class="sidebar_filter">
            <ul>
<?php $sql = "SELECT tblanimations.*,tblcategories.CategoryName,tblcategories.id as cid  from tblanimations join tblcategories on tblcategories.id=tblanimations.AnimationsCategory order by id desc limit 1";
$query = $conn -> prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{  ?>

              <li class="gray-bg">
                <div class="recent_post_title"> <a href="animation-details.php?aid=<?php echo htmlentities($result->id);?>"><?php echo htmlentities($result->CategoryName);?> , <?php echo htmlentities($result->AnimationsTitle);?></a>
                </div>
              </li>
              <?php }} ?>
              
            </ul>
              </div>
             
              
        </div>
      </aside>
      <!--/Side-Bar-->
       
    </div>
    </div>
</section>
<!-- /Listing--> 

<!--Footer -->
<?php include('include/footer.php');?>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 




</body>
</html>
