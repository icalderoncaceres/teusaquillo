<?php
	include_once('clases/bd.php');
	$bd=new bd();
	$items=$bd->doFullSelect('items');
?>

<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<div class="row" id="opt-gen-res">
			<div class="col-md-12">
				<div class="row x_panel">
					<h3>Datos del cliente</h3>
					<hr>
					<div class="form-group col-md-3">
						Identificación
						<input type="text" class="form-control requerido"></input>
					</div>
					<div class="form-group col-md-3">
						Nombre
						<input type="text" class="form-control requerido"></input>
					</div>
					<div class="form-group col-md-3">
						Email
						<input type="email" class="form-control requerido"></input>
					</div>
					<div class="form-group col-md-3">
						Teléfono
						<input type="text" class="form-control requerido"></input>
					</div>
					<div class="form-group col-md-6">
						Dirección
						<textarea type="text" class="form-control requerido"></textarea>
					</div>
					<div class="form-group col-md-6">
						Observaciones
						<textarea type="text" class="form-control"></textarea>
					</div>					
				</div>
			</div>

			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="row x_panel">
					<h3>Fecha y hora</h3>
					<hr>				
					<div class="form-group col-xs-6 col-sm-7 col-md-6">
						<input type="date" class="form-control requerido" />
					</div>
					<div class="form-group col-xs-6 col-sm-5 col-md-6">						
						<select class="form-control requerido">
							<option value="">Seleccione</option>
							<option value="0">07:00 PM</option>
							<option value="1">07:30 PM</option>
							<option value="2">08:00 PM</option>
							<option value="3">08:30 PM</option>
							<option value="4">09:00 PM</option>
							<option value="5">09:30 PM</option>
							<option value="6">10:00 PM</option>
						</select>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="row x_panel">
					<h3>Salon</h3>
					<hr>
					<div class="form-group">
						<select class="form-control requerido">
							<option value="">Seleccione</option>
							<option value="0">Salon 1</option>
							<option value="1">Salon 2</option>
							<option value="2">Salon 3</option>
							<option value="3">Salon 4</option>
						</select>
					</div>
				</div>
			</div>	
			<div class="col-xs-12 col-md-4">
				<div class="row x_panel">
					<h3>Alternativa</h3>
					<hr>				
					<div class="form-group">					
						<select class="form-control requerido">
							<option value="">Seleccione</option>
							<option value="0">Premiun</option>
							<option value="1">Golden</option>
							<option value="2">Platinum</option>
						</select>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="col-xs-12 col-sm-5 col-md-6">
				<div class="row x_panel">
					<h3>Número de personas</h3>
					<hr>
					<div class="form-group col-md-9">
						<select class="form-control requerido">
							<option value="">Seleccione</option>
							<option value="0">Máximo 30</option>
							<option value="1">Máximo 40</option>
							<option value="2">Máximo 50</option>
							<option value="2">Máximo 60</option>
							<option value="2">Máximo 70</option>
							<option value="2">Máximo 80</option>
							<option value="2">Máximo 90</option>
							<option value="2">Máximo 100</option>
						</select>
					</div>
					<div class="col-md-3">
						<a href="#" id="btn-generar" class="btn btn-primary">Generar</a>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-sm-7 col-md-6">
				<div class="row x_panel">
					<h3>Items de producción</h3>
					<hr>
					
					<div class="form-group col-md-10">
						<select class="form-control">
							<option value="-1">Seleccione</option>
							<?php foreach($items as $item):?>
								<option value="<?= $item['id'] ?>"><?= $item['description'] ?></option>
							<?php endforeach;?>
						</select>
					</div>
					<div class="col-md-2">
						<a href="#" class="btn btn-primary">Agregar</a>
					</div>
				</div>
			</div>			
		</div>
	</div>
</div>