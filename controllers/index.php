<?php 
 $bienes = App::get('database')->selectBienes('bienes');
 
 $bienes_favoritos = App::get('database')->selectFavoritesBienes('favoritos_bienes');

 $tipo_bienes = App::get('database')->selectAll('tipo_bienes');

 $ciudades  = App::get('database')->selectAll('ciudad');


require 'views/index.view.php';