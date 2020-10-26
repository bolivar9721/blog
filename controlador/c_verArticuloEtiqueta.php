<?php
  require_once('modelo/BD.php');
  $bd = new BD();
  $etiquetaArticulos = $_GET['etiqueta'];
  $articuloIndividual = $bd->getArticulosEtiqueta($etiquetaArticulos);
?>
