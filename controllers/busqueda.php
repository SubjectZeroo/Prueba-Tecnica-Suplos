<?php
$tipo_bienes = App::get('database')->selectAll('tipo_bienes');
$ciudades  = App::get('database')->selectAll('ciudad');
$bienes_favoritos = App::get('database')->selectFavoritesBienes('favoritos_bienes');
// if(isset($_GET['Buscar'])){

    $ciudad =   $_POST['ciudad'];
    $tipo =     $_POST['tipo'];
    $precio =   $_POST['precio'];

    /**
     * Cortamos el string para obterner el resultado minimo y maximo
     */
    $precioChunks = explode(";",  $precio);



    $precioMinimo =  number_format($precioChunks[0]);
    $precioMaximo = number_format($precioChunks[1]);
 
  
    $busquedaBienes = App::get('database')->busquedaBienes( $ciudad,  $tipo, $precioMinimo,  $precioMaximo);

// }



require 'views/busqueda.view.php';