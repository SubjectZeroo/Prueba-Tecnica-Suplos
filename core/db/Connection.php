<?php
class Connection 
{
/**
 * 
 * Conexion a la bd
 */
  public static function make($config) 
  {
    try {

      // return new PDO('mysql:host=localhost;dbname=todos', 'root', '');

      return new PDO (
        $config['connection'].';dbname='.$config['name'],
        $config['username'],
        $config['password'],
        $config['options']
      );

    } catch (PDOException $e) {

      die($e->getMessage());
    }
    
  }

}