<?php
require_once('modelo/BD.php');
$bd = new BD();
$logotipo = $bd->getLogotipo();
require_once('vista/v_nav.php');
?>
