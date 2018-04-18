<?php
include_once 'bd.php';
/**
 * @property string table;
 * @property int id;
 * @property date fecha_reserv;
 * @property date fecha_event;
 * @property int salon_id;
 * @property int plan_id;
 * @property double monto;
 * @property int cliente_id;
 * @property string observaciones;
 */
class reservaciones{
	protected $table="reservaciones";
	private $id;
	private $fecha_reserv;
	private $fecha_event;
	private $salon_id;
	private $plan_id;
	private $monto;
	private $cliente_id;
	private $observaciones;
	
	public function reservaciones($id=NULL){
		if(!is_null($id)){
			$this->buscarReservacion($id);
		}
	}
	public function nuevoReservacion($params){  //Funcion que se mejorara a medida que se utilice la clase
		$bd = new bd();
		$result = $bd->doInsert($this->table, $params);
		if($result){
			return $this->id;
		}else{
			return false;
		}
	}
	public function buscarReservacion($id){
		$this->id = $id;
		$bd = new bd();
		$result = $bd->doSingleSelect($this->table,"id = {$this->id}");
		if($result){
			$valores["id"] = $result["id"];
			$valores["fecha_reserv"] = $result["fecha_reserv"];
			$valores["fecha_event"] = $result["fecha_event"];
			$valores["salon_id"] = $result["salon_id"];
			$valores["plan_id"] = $result["plan_id"];
            $valores["monto"] = $result["monto"];
			$valores["cliente_id"] = $result["cliente_id"];
			$valores["observaciones"] = $result["observaciones"];
			$this->setReservacion($valores);
			return true;
		}else {
			return false;
		}
	}
	public function setReservacion($params){
		if(!empty($params)){
			foreach ($params as $key => $values){
				$this->$key = $values;
			}
			return true;
		}else{
			throw "Error Publicar 001: No se recibieron parametros";
			return false;
		}
	}
	
	public function getList(){
		$bd=new bd();
		$strSql="select * from reservaciones order by id DESC";
		$reservaciones=$bd->query($strSql);
		return $reservaciones->fetchAll();
	}
}