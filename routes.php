<?php


/**
 * 
 * Manejo de la rutas del proyecto
 */
$router->get('', 'controllers/index.php');
$router->post('busqueda', 'controllers/busqueda.php');
$router->post('add-bien', 'controllers/add-bien.php');
$router->get('delete-bien', 'controllers/delete-bien.php');
$router->post('excel', 'controllers/excel-bienes.php');


