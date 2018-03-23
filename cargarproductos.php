<?php
require('../clases/bd.php');
$bd=new bd();
$products=$bd->query('select * from products');
?>

    <?php foreach($products as $product):
            $imagenes=scandir('../src/img/products/' . $product['referencia'] . '/');?>

             <div class="row" id="product-<?= $product['id'] ?>">

                  <div class="col-md-6">
                       <div class="form-group">
                            <input type="text" class="form-control modelo" data value="<?= $product['modelo'] ?>" placeholder="Modelo" />
                       </div>
                       <div class="form-group">
                            <textarea class="form-control descripcion" row="3" col="20" placeholder="Descripcion">
                                 <?= trim($product['descripcion']) ?>
                            </textarea>
                       </div>
                       <div class="form-group">
                            <input type="text" class="form-control precio" value="<?= $product['precio'] ?>" placeholder="Precio" />
                       </div>
                      <div class="form-group">
                            <input type="text" class="form-control tallas" value="<?= $product['tallas'] ?>" placeholder="Tallas" />
                      </div>
                      <div class="form-group">
                            <input type="text" class="form-control colores" value="<?= $product['colores'] ?>" placeholder="Colores" />
                      </div>
                  </div>
                  <div class="col-md-6">
                      <div class="row">
                      <?php foreach($imagenes as $imagen):
                            if($imagen!='.' && $imagen!='..'): 
                            ?>
                                 <div class="col-md-4">
                                     <div class="row">
                                          <div class="col-md-12">
                                               <img src="../src/img/products/<?= $product['referencia'] . '/' . $imagen ?>" style="width:100%" />
                                          </div>
                                          <div class="col-md-12">
                                               <div class="form-group p-2">
                                                   <input type="radio" class="imagen_default form-check-input" 
                                                   name="opt-<?= $product['referencia']?>" <?= 
                                                   $imagen==$product['imagen_default']?'checked':'' ?> data-imagen="<?= $imagen ?>" /> Portada
                                               </div>
                                          </div>
                                     </div>
                                 </div>
                            <?php endif;?>
                      <?php endforeach;?>
                      </div>
                  </div>
                  <div class="col-md-12 text-center p-2">
                       <a href="#" class="btn btn-primary btn-save" data-id="<?= $product['id'] ?>" data-referencia="<?= $product['referencia'] ?>">Guardar</a>
                  </div>
                  <div class="col-md-12"><hr></div>
            </div>
      <?php endforeach;?>

<script src="../js/jquery-2.2.3.min.js"></script>
<script>
$(document).ready(function(){
     $(".btn-save").click(function(e){
          e.preventDefault();
          var id=$(this).data("id");
          var referencia=$(this).data("referencia");
          var modelo=$("#product-" + id).find('.modelo').first().val();
          var descripcion=$("#product-" + id).find('.descripcion').first().val();
          var precio=$("#product-" + id).find('.precio').first().val();
          var tallas=$("#product-" + id).find('.tallas').first().val();
          var colores=$("#product-" + id).find('.colores').first().val();
//          var imagen_default=document.getElementByName("opt-" + referencia).value; 
          var imagen_default=$("#product-" + id).find('input.imagen_default:checked').first().attr("data-imagen");
          var elem=$(this);
          elem.addClass("disabled");
          var obj={
                   method:'update',
                   id:id,
                   modelo:modelo,
                   descripcion:descripcion,
                   precio:precio,
                   tallas:tallas,
                   colores:colores,
                   imagen_default:imagen_default
          };
          
          $.ajax({
                url:"../controllers/products.php",
                data:obj,
                type:"POST",
                dataType:"json",
                success:function(data){
                       if(data.result=="ok"){
                         alert("Actualizado");
                     }else{
                         alert("Error desconocido");
                     }
                     elem.removeClass("disabled");
                },
                error:function(xhr){
                     console.log(xhr);
                }
          });
          
     });
});
</script>