<?php
if(isset($_GET['lugar'])){
  $lugar = $_GET['lugar'];
}else{
  $lugar = 0;
}
require_once('vista/plantilla.php');
function lugar($i){
  switch($i){
  case 0:
    require_once('controlador/c_verArticulos.php'); 
    include('vista/listadoGeneral.php');
    break;
  case 1:
    require_once('controlador/c_verEtiquetas.php');
    include('vista/v_etiquetas.php');
    break;
  case 2:
    require_once('controlador/c_verContacto.php');
    include('vista/v_contacto.php');
    break;
  case 3: 
    require_once('controlador/c_verIndice.php');
    include('vista/listadoGeneral.php');
    break;
  case 4:
    require_once('controlador/c_verArticuloEtiqueta.php');
    include('vista/listadoGeneral.php');
    break;
  case 5:
    require_once('controlador/c_verArticulo.php');
    include('vista/v_articulo.php');
    break;
  }
}
?>
