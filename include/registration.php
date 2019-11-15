<?php require_once 'authController.php' ?>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

    <style>
.form-div {
    margin: 50px auto 50px;
    padding: 25px 15px 10px 15px;
    border: 1px solid #80ced7;
    border-radius: 15px;
    font-size: 1.1em;
    font-family: 'Lora',serif;
    
}
.form-control:focus{
    box-shadow: none;
}
form p{
    font-size: .89em;
}

.form-div.login{
    margin-top: 100px;
}
</style>
     
      <div class="container">
	    <div class="row">
	       <div class="col-md-4 offset-md-4 form-div">
	           <form action="registration.php" method="post">
	               <h3 class="text-center">Register</h3>
	               
	               <?php if(count($errors)> 0):?>
	               <div class="alert alert-danger">
                   <?php foreach($errors as $error): ?>
	                   <li><?php echo $error;?></li>
	                   <?php endforeach; ?>
	               </div>
	               
	               <?php endif;?>
	               
	              <div class="form-group">
              `        <label for="user" class="label">Username</label>
                          <input name="username" type="text" value="<?php echo $username; ?>" class="form-control form-control-lg" >
                    </div>
                    <div class="form-group">
                        <label for="email" class="label">Email Address</label>
                        <input name="email" type="text" value="<?php echo $email; ?>" class="form-control form-control-lg" >
                    </div>
                    <div class="form-group">
                      <label for="password" class="label">Password</label>
                      <input name="password" type="password" class="form-control form-control-lg" data-type="password">
                    </div>
                    <div class="form-group">
                      <label for="passwordconf" class="label">Confirm Password</label>
                      <input name="passwordconf" type="password" class="form-control form-control-lg" data-type="password" >
                    </div>
                    <div class="form-group">
                      <input type="submit" name="signup-btn" class="btn btn-primary btn-block btn-lg" value="Sign Up">
                    </div>
<!--                <p class="text-center">Already a member?<a href="login.php">Sign In</a> </p>	   -->
	           </form>
	       </div> 
	    </div>
	</div>
  
  