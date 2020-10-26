<h1 class="text-white bold text-center mb-3 col-12">Etiquetas</h1>
<?php
foreach($etiquetas as $etiqueta){
?>
    <a class="text-center text-warning d-inline-block col-lg-4 col-sm-6 col-xs-12" href="index.php?lugar=4&etiqueta=<?php echo $etiqueta['id_etiqueta'] ?>">
      <h2 class="bg-dark shadow-lg pb-3 pt-3">
        <?php echo $etiqueta['etiqueta']; ?>
        (<?php print_r($bd->getVecesEtiqueta(strval($etiqueta['id_etiqueta']))[0]['COUNT(*)']); ?>)
      </h2>
    </a>
  <? 
}
?>
