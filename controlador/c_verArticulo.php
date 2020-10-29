<?php
  require_once('modelo/BD.php');
  $bd = new BD();
  $articuloIndividual = $bd->getArticuloIndividual($_GET['id']);
?>
