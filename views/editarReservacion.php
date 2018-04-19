<?php
$id=$_GET['id'];
include_once('clases/bd.php');
$bd=new bd();
$reservacion=$bd->doSingleSelect('reservaciones','id=' . $id);
$detalles=$bd->doFullSelect("reservaciones_detalle",'reservaciones_id=' . $id);
?>
<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<form id="form-nueva-reservacion" name="form-nueva-reservacion">
			<div class="row" id="opt-gen-res">
				<div class="col-md-12">
					<div class="row x_panel">
						<h1 class="pull-right">Nº <?= $reservacion['id'] ?></h1>
						<h3>Datos del cliente</h3>
						
						<hr>
						<div class="form-group col-md-3">
							Identificación
							<input type="text" class="form-control requerido disabled" disabled name="input-id-cliente" id="input-id-cliente" value=<?= $reservacion['identificacion'] ?>></input>
						</div>
						<div class="form-group col-md-3">
							Nombre
							<input type="text" class="form-control requerido disabled" disabled name="input-nombre-cliente" id="input-nombre-cliente" value=<?= $reservacion['nombre'] ?>></input>
						</div>
						<div class="form-group col-md-3">
							Email
							<input type="email" class="form-control requerido" name="input-email-cliente" id="input-email-cliente" value=<?= $reservacion['email'] ?>></input>
						</div>
						<div class="form-group col-md-3">
							Teléfono
							<input type="text" class="form-control requerido" name="input-tel-cliente" id="input-tel-cliente" value=<?= $reservacion['telefono'] ?>></input>
						</div>
						<div class="form-group col-md-6">
							Dirección
							<textarea type="text" class="form-control requerido" name="input-dir-cliente" id="input-dir-cliente" ><?= $reservacion['direccion'] ?></textarea>
						</div>
						<div class="form-group col-md-6">
							Observaciones
							<textarea type="text" class="form-control" name="input-obs-cliente" id="input-obs-cliente"><?= $reservacion['observaciones'] ?></textarea>
						</div>					
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="row x_panel">
						<h3>Fecha y hora</h3>
						<hr>				
						<div class="form-group col-xs-6 col-sm-7 col-md-6">
							<input type="date" class="form-control requerido" name="input-fecha-reservacion" id="input-fecha-reservacion" value=<?= $reservacion['fecha_evento'] ?> />
						</div>
						<div class="form-group col-xs-6 col-sm-5 col-md-6">						
							<select class="form-control requerido" name="select-hora-reservacion" id="select-hora-reservacion">
								<option value="">Seleccione</option>
								<option value="0" <?= $reservacion['hora_evento']==0?"selected":"" ?>>07:00 PM</option>
								<option value="1" <?= $reservacion['hora_evento']==1?"selected":"" ?>>07:30 PM</option>
								<option value="2" <?= $reservacion['hora_evento']==2?"selected":"" ?>>08:00 PM</option>
								<option value="3" <?= $reservacion['hora_evento']==3?"selected":"" ?>>08:30 PM</option>
								<option value="4" <?= $reservacion['hora_evento']==4?"selected":"" ?>>09:00 PM</option>
								<option value="5" <?= $reservacion['hora_evento']==5?"selected":"" ?>>09:30 PM</option>
								<option value="6" <?= $reservacion['hora_evento']==6?"selected":"" ?>>10:00 PM</option>
							</select>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="row x_panel">
						<h3>Salon</h3>
						<hr>
						<div class="form-group">
							<select class="form-control requerido" name="select-salon-reservacion" id="select-salon-reservacion">
								<option value="">Seleccione</option>
								<option value="0" <?= $reservacion['salon']==0?"selected":"" ?>>Salón Victoria</option>
								<option value="1" <?= $reservacion['salon']==1?"selected":"" ?>>Salón Colonial</option>
								<option value="2" <?= $reservacion['salon']==2?"selected":"" ?>>Salón Imperial</option>
								<option value="3" <?= $reservacion['salon']==3?"selected":"" ?>>Salón Britania</option>
							</select>
						</div>
					</div>
				</div>	
				<div class="col-xs-12 col-md-4">
					<div class="row x_panel">
						<h3>Alternativa</h3>
						<hr>				
						<div class="form-group">					
							<select class="form-control requerido" name="select-alt-reservacion" id="select-alt-reservacion">
								<option value="">Seleccione</option>
								<option value="0"  <?= $reservacion['alternativa']==0?"selected":"" ?>>Premiun</option>
								<option value="1"  <?= $reservacion['alternativa']==1?"selected":"" ?>>Gold</option>
								<option value="2"  <?= $reservacion['alternativa']==2?"selected":"" ?>>Platinum</option>
							</select>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="row x_panel">
						<h3>Número de personas</h3>
						<hr>
						<select class="form-control requerido" name="select-inv-reservacion" id="select-inv-reservacion">
							<option value="">Seleccione</option>
							<?php for($i=40;$i<210;$i+=10):?>
								<?php $indice=$i>130?($i-40)/10:"0".($i-40)/10;?>
								<option value="<?= $indice ?>" <?= $reservacion['invitados']==$indice?"selected":"" ?>><?= $i ?> Invitados</option>
							<?php endfor;?>
						</select>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<div class="row x_panel">
						<h3>Tipo de evento</h3>
						<hr>					
						<select class="form-control requerido" name="select-tipo-reservacion" id="select-tipo-reservacion">
							<option value="">Seleccione</option>
							<option value="0" <?= $reservacion['tipo_evento']==0?"selected":"" ?>>15 años</option>
							<option value="1" <?= $reservacion['tipo_evento']==1?"selected":"" ?>>Boda</option>
						</select>
					</div>
				</div>
			</form>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="row">
					<div class="col-md-6">
						<a class="btn btn-primary btn-lg disabled" id="btn-recalcular">Recalcular</a>
					</div>				
					<div class="col-md-6">
						<a class="btn btn-success btn-lg disabled" id="btn-actualizar">Actualizar</a>
					</div>
				</div>
				<hr />
				<div class="row">
					<div class="col-md-6">
						<a class="btn btn-warning btn-lg" id="btn-limpiar">Limpiar</a>
					</div>
					<div class="col-md-6">
						<a class="btn btn-danger btn-lg" id="btn-volver">Volver</a>
					</div>					
				</div>				
			</div>
			<div class="col-md-12" id="container-presupuesto">
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
							<a href="#" class="btn btn-primary" id="btn-agregar">Agregar</a>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-9">
						<table class="table table-striped" id="lista-items">
							<caption><h3>DETALLE DEL PRESUPUESTO</h3></caption>
							<thead>
								<th><input type="checkbox" checked disabled></input></th>
								<th>Nº</th>
								<th class="hidden"></th>
								<th>Item</th>
								<th>Valor retirar<th>
							</thead>
							<tbody id="items-plan">
								<?php foreach($detalles as $detalle):?>								
									<tr>
										<th><?= $detalle['f1'] ?></th>
										<td><?= $detalle['f2'] ?></td>
										<td class="hidden"><?= $detalle['f3'] ?></td>
										<td><?= $detalle['f4'] ?></td>
										<td class="text-right"><?= $detalle['f5'] ?></td>
									</tr>
								<?php endforeach;?>
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
								$<span id="span-monto"> <?= number_format($reservacion['monto'],2,',','.') ?></span>
							</div>
						</div>
						<hr />
						<div class="row">
							<div class="col-md-6">
								Adiciones:
							</div>
							<div class="col-md-6 red text-right">
								$<span id="span-adiciones"> <?= number_format($reservacion['adiciones'],2,',','.') ?></span>
							</div>
						</div>
						<hr />
						<div class="row">
							<div class="col-md-6">
								Retiros:
							</div>
							<div class="col-md-6 red text-right">
								$<span id="span-retiros"> <?= number_format($reservacion['sustracciones'],2,',','.') ?></span>
							</div>
						</div>
						<hr />
						<div class="row">
							<div class="col-md-6">
								TOTAL:
							</div>
							<div class="col-md-6 red text-right">
								$ <span id="span-total"><?= number_format($reservacion['total'],2,',','.') ?></span>
							</div>
						</div>
					</div>
				</div>			
			</div>
		</div>
	</div>
	<script>
		setTimeout(()=>{
			addSelect();
		iniciar(<?= $reservacion['monto'] ?>,<?= $reservacion['monto'] ?>,<?= $reservacion['sustracciones'] ?>);
		},1500);
	</script>
</div>