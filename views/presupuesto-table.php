<?php
	include_once('../clases/bd.php');
	$bd=new bd();
	$items=$bd->doFullSelect('items');
	$clave=$_POST['clave'];
	$plan=$bd->doSingleSelect('planes','clave=' . $clave);
	$rt=filter_input(INPUT_POST,'rt');
	$ri=filter_input(INPUT_POST,'ri');
	$ra=filter_input(INPUT_POST,'ra');
	$rs=filter_input(INPUT_POST,'rs');
	if($rt=='0'){
		$detalles=$bd->doFullSelect('planes_detalle_quinces');
	}else{
		$detalles=$bd->doFullSelect('planes_detalle_bodas');
	}
?>
<div class="col-md-12">
	<div class="row x_panel">
		<h3>Items de producción</h3>
		<hr>					
		<div class="form-group col-md-10">
			<select class="form-control" id="select-items">
				<option value="-1">Seleccione</option>
				<?php foreach($items as $item):?>
					<option value="<?= $item['id'] ?>"><?= utf8_encode($item['description']) ?></option>
				<?php endforeach;?>
			</select>
		</div>
		<div class="col-md-2">
			<a href="#" class="btn btn-primary">Agregar</a>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-9">
		<table class="table table-striped">
			<caption><h3>DETALLE DEL PRESUPUESTO</h3></caption>
			<thead>
				<th><input type="checkbox" checked disabled></input></th>
				<th>Nº</th>
				<th>Item</th>
				<th>Valor retirar<th>
			</thead>
			<tbody>			
				<?php $contador=0;?>
				<?php foreach($detalles as $detalle):
					//Verificamos si el item debe ser agregado a la tabla
					$valido=false;
					if(strpos($detalle['salones'],$rs)!==false){ //Paso el filtro de salon
						switch($ra){
							case 0:
								$valido=$detalle['premium']==1;
								break;
							case 1:
								$valido=$detalle['gold']==1;
								break;
							case 2:
								$valido=$detalle['platinium']==1;
								break;
						}
					}
					if($valido):
						$contador++;
					?>
						<tr>
							<th>
								<?php if($detalle['valor_retirar']!=0):?>
									<input type="checkbox" checked class="input-actualizar" data-more=<?= $detalle['valor_adicional'] ?> data-less=<?= $detalle['valor_retirar'] ?>></input>
								<?php else:?>
									<span class="badge">R</span>
								<?php endif;?>
							</th>
							<td><?= $contador;?></td>
							<td><?= utf8_encode($detalle['elemento'])?></td>
							<td class="text-right">
								<?=
									$detalle['valor_retirar']!=-1?number_format($detalle['valor_retirar'],2,',','.'):'Consultar' 
								?>
							</td>
						</tr>
					<?php
					else:?>
						<span class="items-not hidden" >
							<?= utf8_encode($detalle['elemento']) ?>							
						</span>
					<?php
					endif;
				endforeach;?>
			</tbody>
		</table>
	</div>
	<div class="col-md-3" style="font-size:1.2em;">
		<h2>RESUMEN</h2>
		<hr />
		<div class="row">
			<div class="col-md-6">
				Monto:
			</div>
			<div class="col-md-6 red text-right">
				$ <?= number_format($plan['monto'],2,',','.') ?>
			</div>
		</div>
		<hr />
		<div class="row">
			<div class="col-md-6">
				Adiciones:
			</div>
			<div class="col-md-6 red text-right">
				$ 0,00
			</div>
		</div>
		<hr />
		<div class="row">
			<div class="col-md-6">
				Retiros:
			</div>
			<div class="col-md-6 red text-right">
				$ 0,00
			</div>
		</div>
		<hr />
		<div class="row">
			<div class="col-md-6">
				TOTAL:
			</div>
			<div class="col-md-6 red text-right">
				$ <?= number_format($plan['monto'],2,',','.') ?>
			</div>
		</div>
	</div>
	<script>		
		addSelect();		
	</script>
</div>