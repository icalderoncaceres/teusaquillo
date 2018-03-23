<?php
if($_POST['username']=="dianacalderon" && $_POST['password']=="Exito2017"){
   session_start();
   $_SESSION['user']="dianacalderon";
}

header('Location:  index.php');