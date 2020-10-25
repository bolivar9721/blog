  <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-lg p-3 mb-2 sticky-top d-flex">
    <a class="flex-grow-1" href="index.php?lugar=3">
    <img class="rounded-circle" src="vista/img/logos/<?php 
          echo $logotipo[0]['logotipo'];
        ?>"/>
    </a>
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link<?php if($lugar == 0){echo " active";} ?>" href="index.php?lugar=0">Artículos</a> 
      </li>
      <li class="nav-item">
        <a class="nav-link<?php if($lugar == 1){echo " active";} ?>" href="index.php?lugar=1">Etiquetas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link<?php if($lugar == 2){echo " active";} ?>" href="index.php?lugar=2">Contacto</a>
      </li>
    </ul>
  </nav>
