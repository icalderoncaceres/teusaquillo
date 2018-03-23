<?php
require('../clases/bd.php');
$bd=new bd();
$ventas=$bd->query('select * from ventas');
?>

<table class="table table-striped">
    <thead>
          <tr>
              <th>Nº</th>
              <th>Fecha</th>
              <th>Cliente</th>
              <th>Direcci&oacute;n</th>
              <th>Email</th>
              <th>Monto</th>
              <th>Acciones</th>
          </tr>
    </thead>
    <tbody>
         <?php
              $i=0;
              foreach($ventas as $venta):
                 $i++;
         ?>
                 <tr>
                     <td><?= $i ?></td>
                     <td><?= date("d/m/Y",strtotime($venta['fecha'])) ?></td>
                     <td><?= $venta['nombre'] ?></td>
                     <td><?= $venta['direccion'] ?></td>
                     <td><a href="mailto:<?= $venta['email']?>"><?= $venta['email'] ?></a></td>
                     <td><?= number_format($venta['monto'],2,',','.') ?></td>
                     <td>
                          <a class="btn btn-md btn-primary" href="detalle.php?id=<?= $venta['id'] ?>">Detalle</a>
                          <a class="btn btn-md btn-warning" href="#">Enviado</a>
                          <a class="btn btn-md btn-success" href="#">Cancelado</a>
                     </td>
                 </tr>
         <?php
              endforeach;
         ?>
    </tbody>
</table>