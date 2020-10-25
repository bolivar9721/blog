<h1 class="text-white text-center bold col-12">Artículos</h1>
<?php
foreach($articulos as $articulo){
?>
    <div class="card bg-dark text-white shadow-lg p-3 mb-2 rounded col-12">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="vista/img/imagenes/<?php print_r($bd->getImagenes(strval($articulo['imagenes_id']))[0]['imagen1']); ?>"
                class="img-card" style="max-height : 200px ; !max-whidth : 400px ;" alt="<?php print_r($bd->getImagenes(strval($articulo['imagenes_id']))[0]['imagen1']); ?>">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h3 class="card-title"><?php echo $articulo['titulo'] ?></h3>
                    <p class="card-text"><?php echo $articulo['articulo'] ?></p>
                    <p class="card-text"><small class="text-muted"><?php echo $articulo['fecha'] ?></small></p>
                </div>
            </div>
        </div>
    </div>
<?php
}
?>
