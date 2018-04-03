<?php
	include_once('clases/bd.php');
	$bd=new bd();
	$reservaciones=$bd->doFullSelect('reservaciones');
?>
        <!-- page content -->
        <div class="right_col" role="main">
        	Resumen
        </div>
