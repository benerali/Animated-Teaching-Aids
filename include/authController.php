<?php 

session_start();

require 'database.php'; 

$errors     =array();
$username   ="";
$email      ="";

//if user clicks sign up buttton
if (isset($_POST['signup-btn'])){
    $username       =$_POST['username'];
    $email          =$_POST['email'];
    $password       =$_POST['password'];
    $passwordconf   =$_POST['passwordconf'];
    
//validation
if(empty($username)){
    $errors['username']="Username required" ;
    }
    
if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
    $errors['email']="Invalid Email Address" ;
    }
    
if(empty($email)){
    $errors['email']="Email required" ;
    }
    

if(empty($password)){
    $errors['password']="Password required" ;
    }
    
if ($password!==$passwordconf){
    $errors['password'] ="the two password do not match";
    }
    
 
   
if(count($errors)===0){
    $password=password_hash($password, PASSWORD_DEFAULT);
    $verified = false;

    
   $sql="INSERT INTO  tblusers(username, email, verified, password) VALUES(:username,:email,:verified,:password)";
$query = $conn->prepare($sql);
$query->bindParam(':username',$username,PDO::PARAM_STR);
$query->bindParam(':email',$email,PDO::PARAM_STR);
$query->bindParam(':verified',$verified,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);
$query->execute();
$lastInsertId = $conn->lastInsertId();
if($lastInsertId)
{
$msg="Successfully signed up";
}
else 
{
$error="Something went wrong. Please try again";
}
    //login user
        $user_id =$conn->insert_id;
        $_SESSION['id']=$user_id;
        $_SESSION['username']=$username;
        $_SESSION['email']=$email;
        $_SESSION['verified']=$verified;
    
        //set flash message
        $_SESSION['message']="You are now logged in!";
        $_SESSION['alert-class']="alert-success";
        header ('location: ../index.php');
        exit();
    }else{
        $errors['db_error'] ="Database error: failed to register";
    }
}    


?>
<script>
function checkAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'emailid='+$("#emailid").val(),
type: "POST",
success:function(data){
$("#user-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
<script type="text/javascript">
function valid()
{
if(document.signup.password.value!= document.signup.confirmpassword.value)
{
alert("Password and Confirm Password Field do not match  !!");
document.signup.confirmpassword.focus();
return false;
}
return true;
}
</script>

<?php
//if user clicks on login button

if (isset($_POST['login-btn'])){
    $username       =$_POST['username'];
    $password       =$_POST['password'];
//validation
if(empty($username)){
    $errors['username']="Username required" ;
    }
    
if(empty($password)){
    $errors['password']="Password required" ;
    }
if(count($errors)===0){
    $username=$_GET['user'];
    $sql = "SELECT * FROM tblusers WHERE email=? OR username=? LIMIT 1" ;
    $query = $conn -> prepare($sql);
    $query->execute();
    $results=$query->fetchAll(PDO::FETCH_OBJ);
    
    
    if (password_verify($password,$user['password'])){
       
        //login success
        $_SESSION['id']=$user['id'];
        $_SESSION['username']=$user['username'];
        $_SESSION['email']=$user['email'];
        $_SESSION['verified']=$user['verified'];
       
        //set flash message
        $_SESSION['message']="You are now logged in!";
        $_SESSION['alert-class']="alert-success";
        header ('location: index.php');
        exit();
    } else{
        $errors['login_fail'] = "Wrong Credentials";
    }
} 
}

//logout user
if (isset($_GET['logout'])){
    session_destroy();
    unset($_SESSION ['id']);
    unset($_SESSION ['username']);
    unset($_SESSION ['email']);
    unset($_SESSION ['verified']);
    header('location:login.php');
    exit();
}