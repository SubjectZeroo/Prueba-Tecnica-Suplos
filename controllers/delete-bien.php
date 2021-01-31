<?php 
$bien_id = $_GET['id'];
App::get('database')->delete('favoritos_bienes','id',
$bien_id); 
header("Location: /");