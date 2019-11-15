<header>
    <div class="default-header">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 col-md-2">
                    <div class="logo">
                        <a href="index.php"><p>ONLINE ANIMATED TEACHING AIDS</p>
                        </a>
                    </div>
                </div>
                <div class="col-sm-9 col-md-10">
                     <div class="header_info">
                   <div class="header_widgets">
              <div class="circle_icon"> <i class="fa fa-envelope" aria-hidden="true"></i> </div>
              <p class="uppercase_text">For Support Mail us : </p>
              <a href="mailto:athanak02.ak@gmail.com">athanak02.ak@gmail.com</a> </div>
              <div class="header_widgets">
               <div class="circle_icon"> <i class="fa fa-phone" aria-hidden="true"></i> </div>
              <p class="uppercase_text">Service Helpline Call Us: </p>
              <a href="tel:61-1234-5678-09">+254791537431</a> </div>
              
<!--               php code to make sure the user logs in-->
       
        <?php   if(strlen($_SESSION['login'])==0)
	{	
?>
       
        <div class="login_btn"> <a href="include/registration.php" class="btn btn-xs uppercase" data-toggle="modal" data-dismiss="modal">Register</a> </div>
<?php }
else{ 

echo "Welcome To Stiffler Animation portal";
 } ?>
<!--               code to welcome user after login       -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<!--    Navigation look-->


<nav id="navigation_bar" class="navbar navbar-default">
    <div class="container">
        <div class="nav-header">
            <button id="menu_slide" data-target="#navigation" aria-expanded="false" data-toggle="collapse" class="nav-toggle collapsed" type="button">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
            </button>
        </div>
        <div class="header_wrap">
           
            <div class="header_search">
          <div id="search_toggle"><i class="fa fa-search" aria-hidden="true"></i></div>
          <form action="#" method="get" id="header-search-form">
            <input type="text" placeholder="Search..." class="form-control">
            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
          </form>
        </div>
        </div>
        <div class="collapse navbar-collapse" id="branding">
            <ul class="nav navbar-nav">
                <li><a href="index.php">Home</a>    </li>         	 
              <li><a href="page.php?type=aboutus">About Us</a></li>
              <li><a href="animation-categories.php">Animation Categories</a></li>
              <li><a href="contact-us.php">Contact Us</a></li>
            </ul>
        </div>
    </div>
</nav>
  <!-- Navigation end --> 
</header>

