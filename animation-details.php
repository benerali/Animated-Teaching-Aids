<?php 
session_start();
include('include/database.php');
error_reporting(0);
if(isset($_POST['submit']))
{
$dateapproved=$_POST['dateapproved']; 
$message=$_POST['message'];
$useremail=$_SESSION['login'];
$status=0;
$aid=$_GET['aid'];
$sql="INSERT INTO  tblapproved(userEmail,AnimationId,Dateapproved,message,Status) VALUES(:useremail,:aid,:dateapproved,:message,:status)";
$query = $conn->prepare($sql);
$query->bindParam(':useremail',$useremail,PDO::PARAM_STR);
$query->bindParam(':aid',$aid,PDO::PARAM_STR);
$query->bindParam(':dateapproved',$dateapproved,PDO::PARAM_STR);
$query->bindParam(':message',$message,PDO::PARAM_STR);
$query->bindParam(':status',$status,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $conn->lastInsertId();
if($lastInsertId)
{
echo "<script>alert('Approved successfully.');</script>";
}
else 
{
echo "<script>alert('Something went wrong. Please try again');</script>";
}

}

?>


<!DOCTYPE HTML>
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

   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   
<!--   <link rel="stylesheet"2href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.0/css/bootstrap.min.css">-->
	<link rel="stylesheet" href="https://maxcdn.bootstrap/3.2.1/css/bootstrap.theme.mini.css">
	<link rel="stylesheet"  href="assets/master.css">
	
</head>

<body>
<!--Header-->
<?php include('include/header.php');?>
<!-- /Header -->

<!--Listing-Image-Slider-->

<?php 
$aid=intval($_GET['aid']);
$sql = "SELECT tblanimations.*,tblcategories.CategoryName,tblcategories.id as cid  from tblanimations join tblcategories on tblcategories.id=tblanimations.AnimationsCategory where tblanimations.id=:aid";
$query = $conn -> prepare($sql);
$query->bindParam(':aid',$aid, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{  
$_SESSION['brndid']=$result->cid;  
?>  
<!--listing video slide-->
<section id="listing_img_slider">
  <div><source src="admin/img/vehicleimages/<?php echo htmlentities($result->Vimage1);?>" class="img-responsive" alt="video" width="900" height="560"></div>
  <?php if($result->Vimage1=="")
{

} else {
  ?>
  <div><source src="admin/img/vehicleimages/<?php echo htmlentities($result->Vimage5);?>" class="img-responsive" alt="video" width="900" height="560"></div>
  <?php } ?>
</section>
<!--/Listing-Image-Slider-->


<!--Listing-detail-->
<section class="listing-detail">
  <div class="container">
    <div class="listing_detail_head row">
      <div class="col-md-9">
        <h2><?php echo htmlentities($result->CategoryName);?> , <?php echo htmlentities($result->AnimationsTitle);?></h2>
      </div>
      <div class="col-md-3">
        <div class="price_info">
          <p><?php echo htmlentities($result->RenderDate);?> </p>
         
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-9">
        <div class="listing_more_info">
          <div class="listing_detail_wrap"> 
            <!-- Nav tabs -->
            <ul class="nav nav-tabs gray-bg" role="tablist">
              <li role="presentation" class="active"><a href="#animation-overview " aria-controls="animation-overview" role="tab" data-toggle="tab">Animation Overview </a></li>
          
            </ul>
            
            <!-- Tab panes -->
            <div class="tab-content"> 
              <!-- animation-overview -->
              <div role="tabpanel" class="tab-pane active" id="animation-overview">
                
                <p><?php echo htmlentities($result->AnimationsOverview);?></p>
              </div>
              
              
              
            </div>
          </div>
          
        </div>
<?php }} ?>
   
      </div>
      
      
      <!--/Side-Bar--> 
    </div>
    
    <div class="space-20"></div>
    <div class="divider"></div>
    
    
  </div>
</section>
<!--/Listing-detail--> 

<!--Footer -->
<?php include('include/footer.php');?>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 




</body>
</html>