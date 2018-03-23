if(!isset($_SESSION)){
   session_start();
}

$_SESSION['user']='nouser';
header('Location:  index.php');