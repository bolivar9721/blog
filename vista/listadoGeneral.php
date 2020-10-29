<?php
if(isset($articuloIndividual)){
    $iteraciones = $articuloIndividual;
    ?>
        <h1 class="text-white bold text-center mb-3 col-12">Articulos de <?php echo $etiquetaArticulos; ?></h1>
    <?php
}else if(isset($articulos)){
    $iteraciones = $articulos;
    ?>
        <h1 class="text-white bold text-center mb-3 col-12">Articulos</h1>
    <?php
}else if(isset($indices)){
    $iteraciones = $indices;
    ?>
        <h1 class="text-white bold text-center mb-3 col-12">Indice</h1>
    <?php
}
if(isset($iteraciones)){
  foreach($iteraciones as $iteracion){
?>
    <a class="col-12" href="index.php?lugar=5&id=<?php if(!isset($indices)){echo $iteracion['id_articulo'];}; ?>">
  <div class="card bg-dark text-white shadow-lg p-3 mb-2 rounded col-12">
      <div class="row no-gutters">
          <div class="col-md-4">
              <img src="vista/img/<?php if(!isset($indices)){ echo "imagenes/"; }else{echo "indice/";} ; echo $iteracion['imagen']; ?>" class="img-card" style="max-height : 200px ; !max-whidth : 400px ;" alt"<?php echo $iteracion['imagen'];?>">
          </div>
          <div class="col-md-8">
              <div class="card-body">
                  <h3 class="card-title"><?php echo $iteracion['titulo'] ?></h3>
                  <p class="card-text"><?php echo $iteracion['descripcion']; ?></p>
                  <p class="card-text"><small class="text-muted"><?php if(!isset($indices)){echo $iteracion['fecha'];} ?></small></p>
              </div>
            </div>
        </div>
    </div>
</a>
<?php
}}
?>
