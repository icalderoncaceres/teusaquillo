<?php
    /*
    include_once("../clases/reservaciones.php");
    $bd=new reservaciones();
    $reservaciones=$reservaciones->getList();
    */
    $reservaciones=[
        array('id'=>1,'fecha'=>date(),'salon'=>'Principal','alternativa'=>'golden','monto'=>123,'abonado'=>120,'restante'=>3),
        array('id'=>2,'fecha'=>date(),'salon'=>'Principal','alternativa'=>'golden','monto'=>123,'abonado'=>120,'restante'=>3),
        array('id'=>3,'fecha'=>date(),'salon'=>'Principal','alternativa'=>'golden','monto'=>123,'abonado'=>120,'restante'=>3)
    ];
?>
        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Aquí puedes consultar toda la información de las reservaciones</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Buscar...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Ir!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Lista de reservaciones</h2>
                    <a class="btn btn-success pull-right" href="#"><i class="fa fa-blank"></i>Crear reservación</a>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">


                    <div class="table-responsive">
                      <table class="table table-striped jambo_table bulk_action">
                        <thead>
                          <tr class="headings">

                            <th class="column-title">Nº </th>
                            <th class="column-title">Fecha </th>
                            <th class="column-title">Salon </th>
                            <th class="column-title">Alternativa </th>
                            <th class="column-title">Cliente </th>
                            <th class="column-title">Monto </th>
                            <th class="column-title">Abonado </th>
                            <th class="column-title">Restante </th>
                            <th class="column-title no-link last"><span class="nobr">Acciones</span>
                            </th>
                            <th class="bulk-actions" colspan="7">
                              <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                            </th>
                          </tr>
                        </thead>

                        <tbody>
                          <?php
                              foreach($reservaciones as $reservacion):
                          ?>
                              <tr class="even pointer">
                                <td class=" "><?= $reservacion["id"] ?></td>
                                <td class=" "><?= $reservacion["fecha"] ?></td>
                                <td class=" "><?= $reservacion["salon"] ?> </td>
                                <td class=" "><?= $reservacion["alternativa"] ?> </td>
                                <td class=" "><?= $reservacion["cliente"] ?> </td>
                                <td class=" "><?= $reservacion["monto"] ?></td>
                                <td class="a-right a-right "><?= $reservacion["abonado"] ?></td>
                                <td class="a-right a-right "><?= $reservacion["restante"] ?></td>
                                <td class=" last">
                                    <a href="#" class="btn btn-warning">Ver</a>&nbsp;
                                    <a href="#" class="btn btn-danger"><i class="fa fa-trush"></i>Cancelar</a>&nbsp;

                                </td>
                              </tr>
                          <?php
                              endforeach;
                          ?>
                        </tbody>
                      </table>
                    </div>
							
						
                  </div>
                </div>
              </div>
            </div>
          </div>

        </div>
