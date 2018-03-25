<?php
if(!isset($_SESSION)){
   session_start();
}
//session_destroy();
$_SESSION['user']='nouser';
header('Location:  login.html');