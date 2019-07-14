<?php

//group_chat.php

include('database_connection.php');

session_start();
 $time = strtotime(date("Y-m-d H:i:s") . '00 second');
 $time = date('Y-m-d H:i:s', $time);

if($_POST["action"] == "insert_data")
{
  $query="INSERT INTO `chat_message` (`from_user_id`, `chat_message`, `timestamp`, `status`) VALUES ('".$_SESSION['user_id']."', '".$_POST['chat_message']."', '".$time."', '1')";
mysqli_query($link,$query);
  
  echo fetch_group_chat_history($link);
}

if($_POST["action"] == "fetch_data")
{
 echo fetch_group_chat_history($link);
}

?>
