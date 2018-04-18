<!-- page content -->
<div class="right_col" role="main">
	<div class="container">
		<form id="form-nueva-reservacion" name="form-nueva-reservacion">
			<div class="row" id="opt-gen-res">
				<div class="col-md-12">
					<div class="row x_panel">
						<h3>Datos del cliente</h3>
						<hr>
						<div class="form-group col-md-3">
							Identificación
							<input type="text" class="form-control requerido" name="input-id-cliente" id="input-id-cliente"></input>
						</div>
						<div class="form-group col-md-3">
							Nombre
							<input type="text" class="form-control requerido" name="input-nombre-cliente" id="input-nombre-cliente"></input>
						</div>
						<div class="form-group col-md-3">
							Email
							<input type="email" class="form-control requerido" name="input-email-cliente" id="input-email-cliente"></input>
						</div>
						<div class="form-group col-md-3">
							Teléfono
							<input type="text" class="form-control requerido" name="input-tel-cliente" id="input-tel-cliente"></input>
						</div>
						<div class="form-group col-md-6">
							Dirección
							<textarea type="text" class="form-control requerido" name="input-dir-cliente" id="input-dir-cliente"></textarea>
						</div>
						<div class="form-group col-md-6">
							Observaciones
							<textarea type="text" class="form-control" name="input-obs-cliente" id="input-obs-cliente"></textarea>
						</div>					
					</div>
				</div>

				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="row x_panel">
						<h3>Fecha y hora</h3>
						<hr>				
						<div class="form-group col-xs-6 col-sm-7 col-md-6">
							<input type="date" class="form-control requerido" name="input-fecha-reservacion" id="input-fecha-reservacion" />
						</div>
						<div class="form-group col-xs-6 col-sm-5 col-md-6">						
							<select class="form-control requerido" name="select-hora-reservacion" id="select-hora-reservacion">
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
							<select class="form-control requerido" name="select-salon-reservacion" id="select-salon-reservacion">
								<option value="">Seleccione</option>
								<option value="0">Salón Victoria</option>
								<option value="1">Salón Colonial</option>
								<option value="2">Salón Imperial</option>
								<option value="3">Salón Britania</option>
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
								<option value="0">Premiun</option>
								<option value="1">Gold</option>
								<option value="2">Platinum</option>
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
								<option value="<?= $i>130?($i-40)/10:"0".($i-40)/10?>"><?= $i ?> Invitados</option>
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
							<option value="0">15 años</option>
							<option value="1">Boda</option>
						</select>
					</div>
				</div>
			</form>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<div class="row">
					<div class="col-md-6">
						<a class="btn btn-primary btn-lg" id="btn-generar">Generar</a>
					</div>
					<div class="col-md-6">
						<a class="btn btn-success btn-lg disabled" id="btn-guardar">Guardar</a>
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
			</div>
		</div>
	</div>
</div>