<?php 

/**
 * 
 * Configuracion de la bd
 */

return [
    'database' => [
      'name' => 'intelcost_bienes',
      'username' => 'root',
      'password' => '',
      'connection' => 'mysql:host=localhost',
      'options' => [
        PDO::ATTR_ERRMODE =>PDO::ERRMODE_EXCEPTION
      ]
    ]
  ];

