<?php
class BD{
    private $con;

    public function __construct(){
     $this->con = new mysqli('localhost','root', '' ,'blog');
     if($this->con-> connect_error){
        die("Conexión fallida: " . $this->con-> connect_error . "<br />");
     };
    }
    
    public function retorno($query){
      $retorno = [];
      $i = 0;
      while($fila = $query->fetch_assoc()){
        $retorno[$i] = $fila;
        $i++;
      }
      return $retorno;
    }

    public function getArticulo(){
      $query = $this->con->query('SELECT * FROM articulo');
      $retorno = $this->retorno($query);
      return $retorno;
    }

    public function getImagenes($imagen){
      $query = $this->con->query("SELECT * FROM imagenes WHERE id_imagen = ".$imagen."");
      $retorno = $this->retorno($query);
      return $retorno;
    }

    public function getEtiqueta(){
      $query = $this->con->query("SELECT * FROM etiqueta");
      $retorno = $this->retorno($query);
      return $retorno;
    }

    public function getVecesEtiqueta($etiqueta){
      $query = $this->con->query("SELECT COUNT(*) FROM `articulo` WHERE etiqueta_id = \"".$etiqueta."\"");
      $retorno = $this->retorno($query);
      return $retorno;
    }

    public function getLogotipo(){ 
      $query = $this->con->query("SELECT logotipo FROM logotipo");
      $retorno = $this->retorno($query);
      return $retorno;
    }

    public function getIndice(){
      $query = $this->con->query("SELECT * FROM indice");
      $retorno = $this->retorno($query);
      return $retorno;
    }

    public function getArticulosEtiqueta($etiqueta){
      $query = $this->con->query("SELECT * FROM articulo WHERE etiqueta_id =\"".$etiqueta."\"");
      $retorno = $this->retorno($query);
      return $retorno;
    }
}
?>;
