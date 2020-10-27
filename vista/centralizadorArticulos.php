<?php
if(isset($articuloIndividual)){
    $iteraciones = $articuloIndividual;
}else if(isset($articulos)){
    $iteraciones = $articulos;
}else if(isset($indices)){
    $iteraciones = $indices;
}
if(isset($etiquetaArticulos)){
?>
<h1 class="text-white bold text-center mb-3 col-12">Articulos de <?php echo $etiquetaArticulos; ?></h1>
<?php
}
if(isset($iteraciones)){
  foreach($iteraciones as $iteracion){
?>
  <div class="card bg-dark text-white shadow-lg p-3 mb-2 rounded col-12">
      <div class="row no-gutters">
          <div class="col-md-4">
              <img src="vista/img/imagenes/<?php print_r($bd->getImagenes(strval($iteracion['imagenes_id']))[0]['imagen1']); ?>"
              class="img-card" style="max-height : 200px ; !max-whidth : 400px ;" alt="<?php print_r($bd->getImagenes(strval($iteracion['imagenes_id']))[0]['imagen1']); ?>">
          </div>
          <div class="col-md-8">
              <div class="card-body">
                  <h3 class="card-title"><?php echo $iteracion['titulo'] ?></h3>
                  <p class="card-text"><?php echo $iteracion['articulo'] ?></p>
                  <p class="card-text"><small class="text-muted"><?php echo $iteracion['fecha'] ?></small></p>
              </div>
            </div>
        </div>
    </div>
<?php
}}
?>
