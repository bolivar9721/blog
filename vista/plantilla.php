<!doctype>
<html>
<head>
  <?php require_once('vista/bootstrap.php') ?>
  <link rel="shortcut icon" href="vista/img/logos/logotipo.jpeg">
  <title>
    <?php
      switch($lugar){
      case 0:
        echo "Artículos";
        break;
      case 1:
        echo "Etiquetas";
        break;
      case 2:
        echo "Contacto";
        break;
      } 
    ?>
  </title>
</head>
<body class="bg-dark" style="">
<?php require_once('controlador/c_nav.php');?>
  <div class="container">
    <div class="row">
    <!--
     Aquí van a ir cada una de las secciones que vayan a ir apareciendo
    -->
    <?php lugar($lugar); ?>
    </div>
  </div>
</body>
</html>
