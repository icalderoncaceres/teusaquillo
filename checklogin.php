<?php
if($_POST['username']=="alexandergonzalez" && $_POST['password']=="Exito2017"){
   session_start();
   $_SESSION['user']="alexandergonzalez";
}

header('Location:  index.php');