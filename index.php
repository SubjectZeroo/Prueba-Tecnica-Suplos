<?php 

require 'vendor/autoload.php';
$database = require 'core/bootstrap.php';

/**
 * Redirigimos a la vista principal siempre
 */

$router =  Router::load('routes.php');
require $router->direct(Request::uri(),Request::method());

?>

