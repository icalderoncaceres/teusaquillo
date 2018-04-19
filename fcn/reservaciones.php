<?php
include_once '../clases/bd.php';
$metodo=filter_input(INPUT_POST,'metodo');
if($metodo)
	$metodo();

function save(){
	$bd=new bd();
	$identificacion=filter_input(INPUT_POST,"input-id-cliente");
	$nombre=filter_input(INPUT_POST,"input-nombre-cliente");
	$email=filter_input(INPUT_POST,"input-email-cliente");
	$telefono=filter_input(INPUT_POST,"input-tel-cliente");
	$direccion=filter_input(INPUT_POST,"input-dir-cliente");
	$observaciones=filter_input(INPUT_POST,"input-obs-cliente");
	$fecha_evento=filter_input(INPUT_POST,"input-fecha-reservacion");
	$hora_evento=filter_input(INPUT_POST,"select-hora-reservacion");
	$fecha_reserv=date("Y-m-d H:i:s",time());
	$tipo_evento=filter_input(INPUT_POST,"select-tipo-reservacion");
	$invitados=filter_input(INPUT_POST,"select-inv-reservacion");
	$salon=filter_input(INPUT_POST,"select-salon-reservacion");
	$alternativa=filter_input(INPUT_POST,"select-alt-reservacion");
	$monto=filter_input(INPUT_POST,"monto");
	$adiciones=filter_input(INPUT_POST,"adiciones");
	$sustracciones=filter_input(INPUT_POST,"sustracciones");
	$total=filter_input(INPUT_POST,"total");
	$valores=array(
				"identificacion"	=>	$identificacion,
				"nombre"			=>	$nombre,
				"email"				=>	$email,
				"telefono"			=>	$telefono,
				"direccion"			=>	$direccion,
				"observaciones"		=>	$observaciones,
				"fecha_evento"		=>	$fecha_evento,
				"hora_evento"		=>	$hora_evento,
				"fecha_reserv"		=>	$fecha_reserv,
				"tipo_evento"		=>	$tipo_evento,
				"invitados"			=>	$invitados,
				"salon"				=>	$salon,
				"alternativa"		=>	$alternativa,
				"monto"				=>	$monto,
				"adiciones"		=>	$adiciones,
				"sustracciones"		=>	$sustracciones,
				"total"				=>	$total,
	);
	$result=$bd->doInsert("reservaciones",$valores);
	if($result){
		$id=$bd->lastInsertId();
		echo json_encode(array('code'=>200,'id'=>$id));	
	}
	
}

function saveDetail(){
	$bd=new bd();
	$id=filter_input(INPUT_POST,"id");
	$f1=filter_input(INPUT_POST,"f1");
	$f2=filter_input(INPUT_POST,"f2");
	$f3=filter_input(INPUT_POST,"f3");
	$f4=filter_input(INPUT_POST,"f4");
	$f5=filter_input(INPUT_POST,"f5");
	$valores=array(
			"reservaciones_id"	=>	$id,
			"f1"	=>	$f1,
			"f2"	=>	$f2,
			"f3"	=>	$f3,
			"f4"	=>	$f4,
			"f5"	=>	$f5,
	);
	$result=$bd->doInsert("reservaciones_detalle",$valores);
	if($result){
		echo json_encode(array('code'=>200,"result"=>$result));	
	}else{
		echo json_encode(array('code'=>300));
	}
	
}

function updatePlan(){
	$monto=filter_input(INPUT_POST,"monto");
	$clave=filter_input(INPUT_POST,"clave");
	if($monto && $clave){
		$bd=new bd();
		$result=$bd->doUpdate("planes",array("monto"=>$monto),"clave=" . $clave);
		if($result){
			echo json_encode(array("code"=>200));
		}else{
			echo json_encode(array("code"=>300));
		}
	}
}