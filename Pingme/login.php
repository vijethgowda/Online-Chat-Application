<?php
//session_destroy();
include('database_connection.php');

session_start();

$message = '';

if(isset($_SESSION['user_id']))
{
 header('location:index.php');
}

if(isset($_POST["login"]))
{
 $query = "
   SELECT * FROM login 
    WHERE username ='".mysqli_real_escape_string($link,$_POST['username'])."' LIMIT 1";
      $result=mysqli_query($link,$query);   
  
  if(mysqli_num_rows($result)>0)
 {
   
    while ($row=mysqli_fetch_array($result))   
    {
      if($_POST["password"]== $row["password"])
      {
        $_SESSION['user_id'] = $row['user_id'];
        $_SESSION['username'] = $row['username'];
        $sub_query = "
        INSERT INTO login_details 
        (user_id) 
        VALUES ('".$row['user_id']."')
        ";
         $result=mysqli_query($link,$sub_query); 
        $_SESSION['login_details_id'] = mysqli_insert_id($link);
        header("location:index.php");
        echo $_SESSION['login_details_id'];
      }
      else
      {
       $message = "<label>Wrong Password</label>";
      }
    }
 }
 else
 {
  $message = "<label>Wrong Username</labe>";
 }
}

?>

<html>  
    <head>
       
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>PiNg-Me</title>  
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://cdn.rawgit.com/mervick/emojionearea/master/dist/emojionearea.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.js"></script>  
    </head>  
    <body>  
        <div class="container">
   <br />
   
   <h3 align="center" style="font-family:Comic Sans MS;">PiNg-Me</h3><br />
   <br />
   <div class="panel panel-default">
      <div class="panel-heading">Chat Application Login</div>
    <div class="panel-body">
     <form method="post">
      <p class="text-danger"><?php echo $message; ?></p>
      <div class="form-group">
       <label>Enter Username</label>
       <input type="text" name="username" class="form-control" required />
      </div>
      <div class="form-group">
       <label>Enter Password</label>
       <input type="password" name="password" id="password" class="form-control" required />
       <input type="checkbox" onclick="myFunction()"><span>Show Password</span> 
      </div>
      <div class="form-group">
       <input type="submit" name="login" class="btn btn-info" value="Login" />
      </div>
     </form>
    </div>
   </div>
  </div>
    </body>  
    <script>
       function myFunction() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
 
      </script>
      
</html>