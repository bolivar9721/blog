<?php 
  require_once('modelo/BD.php');
  $bd = new BD();
  $articulos = $bd->getArticulo();
?>
