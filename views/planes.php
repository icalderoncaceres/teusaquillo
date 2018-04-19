<!-- page content -->
<?php
$tipos=['15 años','Bodas'];
$invitados=[];
for($i=40;$i<210;$i+=10){
	$invitados[]=$i . " Invitados";
}
$salones=['Victoria','Colonial','Imperial','Britania'];
$alternativas=['Premium','Gold','Platinium'];
include_once "clases/bd.php";
$bd=new bd();
?>
<div class="right_col" role="main">
     <div class="">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Evento</th>
					<th>Invitados</th>
					<th>Alternativa</th>					
					<th>Salon</th>
					<th>Monto</th>
					<th>Acciones</th>
				</tr>				
			</thead>
			<tbody>
				<?php
					for($tipo=0;$tipo<2;$tipo++):
						for($invitado=0;$invitado<10;$invitado++):
							for($alternativa=0;$alternativa<3;$alternativa++):
								for($salon=0;$salon<4;$salon++):
									$clave=$tipo . ($invitado<9?"0".$invitado:$invitado) . $alternativa . $salon;
									$result=$bd->doSingleSelect('planes','clave=' . $clave,'monto');
								?>
									<tr>
										<td><?= $tipos[$tipo] ?></td>
										<td><?= $invitados[$invitado] ?></td>
										<td><?= $alternativas[$alternativa] ?></td>
										<td><?= $salones[$salon] ?></td>
										<td><?= number_format($result['monto'],2,',','.') ?></td>
										<td><a href="#" class="btn btn-info btn-sm actualizar-plan" data-clave=<?= $clave ?>>Actualizar</a></td>
									</tr>
								<?php
								endfor;
							endfor;
						endfor;
					endfor;
				?>
			</tbody>
		</table>
     </div>

</div>
