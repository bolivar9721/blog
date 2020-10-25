<h1 class="text-white text-center bold col-12">Índice</h1>
<?php
foreach($indices as $indice){
?>
    <div class="card bg-dark text-white shadow-lg p-3 mb-2 rounded col-12">
        <div class="row no-gutters">
            <div class="col-md-4">
            <img src="vista/img/indice/<?php echo $indice['imagen'] ?> " class="img-card" style="max-height : 200px ; !max-whidth : 400px ;" 
              alt="<?php echo $indice['imagen']; ?>">
            </div>
            <div class="col-md-8">
                <div class="card-body">
                    <h3 class="card-title"><?php echo $indice['titulo'] ?></h3>
                    <p class="card-text"><?php echo $indice['descripcion'] ?></p>
                </div>
            </div>
        </div>
    </div>
<?php
}
?>
