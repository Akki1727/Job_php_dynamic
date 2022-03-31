<?php

  include "config.php";

  if(isset($_GET['id'])){
    $user_id = $_GET['id'];

    $sql = 'DELETE FROM basic_info WHERE id="'.$user_id.'"';

    $result = $conn->query($sql);

    if($result == true){
      echo "User Deleted....";
      
      header('Location:view.php');
    }
    else{
      echo "User Not Deleted...".$sql."------------->".$conn->error;
      // header('Location:')
    }
  }

?>