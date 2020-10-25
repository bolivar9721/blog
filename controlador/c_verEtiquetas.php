<?php
require_once('modelo/BD.php');
  $bd = new BD();
  $etiquetas = $bd->getEtiqueta();
?>
