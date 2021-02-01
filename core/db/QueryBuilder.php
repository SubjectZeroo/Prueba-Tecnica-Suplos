<?php
  class QueryBuilder
  {

    /**
     * En este archivo consultas a la bd todo serapado del html
     * 
     */
    protected $pdo;

    public function __construct($pdo)
    {
      $this->pdo = $pdo;
    }
  
    public function selectAll($table)
    {

      $statement = $this->pdo->prepare("SELECT * FROM {$table}");

      $statement->execute();

      return $statement->fetchAll(PDO::FETCH_CLASS);
    }

    
    public function insert($table, $parameters)
    {

    //  die(var_dump(array_keys($parameters))); 
 
     $sql = sprintf(
        'INSERT INTO %s (%s) VALUES (%s)',

        $table,
        implode(', ', array_keys($parameters)),
        ':' . implode(', :', array_keys($parameters))
      );

      try {    
      $statement = $this->pdo->prepare($sql);

        var_dump($statement);


      $statement->execute($parameters);

      }catch(PDOException $e) {
        die('whoops, something went wrong');

      } 
      // die(var_dump($sql));
    }


    
public function selectBienes($table){
  $statement = $this->pdo->prepare("SELECT  
                                            B.id,
                                            B.direccion, 
                                            B.telefono, 
                                            B.codigo_postal, 
                                            B.precio, 
                                            C.name AS ciudad , 
                                            TB.name AS tipo ,                                          
                                            CASE 
                                            WHEN bien_id IS NULL THEN 2
                                            WHEN bien_id IS NOT NULL THEN 1
                                            END AS  saved
                                            FROM {$table} B 
                                            INNER JOIN ciudad C ON B.ciudad_id = C.id
                                            INNER JOIN tipo_bienes TB ON B.tipo_id = TB.id
                                            LEFT  JOIN favoritos_bienes FB ON B.id = FB.bien_id");

                                           $statement->execute();
                                           return $statement->fetchAll(PDO::FETCH_CLASS);

}


    public function busquedaBienes($ciudad, $tipo, $precioMinimo, $precioMaximo)
    {
        try
            {
               $statement = $this->pdo->prepare("SELECT 
                                                      B.id,
                                                      B.direccion, 
                                                      B.telefono, 
                                                      B.codigo_postal, 
                                                      B.precio,
                                                      C.name AS ciudad,
                                                      TB.name AS tipo,
                                                      CASE 
                                                      WHEN bien_id IS NULL THEN 2
                                                      WHEN bien_id IS NOT NULL THEN 1
                                                      END AS  saved
                                                      FROM bienes B 
                                                      INNER JOIN ciudad C ON B.ciudad_id = C.id
                                                      INNER JOIN tipo_bienes TB ON B.tipo_id = TB.id
                                                      LEFT  JOIN favoritos_bienes FB ON B.id = FB.bien_id
                                                      WHERE C.id = {$ciudad} AND 
                                                      TB.id = {$tipo} AND 
                                                  precio BETWEEN CONCAT('$', {$precioMinimo}) AND  CONCAT('$', {$precioMaximo})");

              $statement->execute();

              return $statement->fetchAll(PDO::FETCH_CLASS);

            }catch(Exception $e)
              {
                echo $e;
      }
    }


    public function selectFavoritesBienes($tabla)
    {
        try
            {
                $statement = $this->pdo->prepare("SELECT FB.id, 
                                                          FB.bien_id,
                                                          B.direccion, 
                                                          B.telefono, 
                                                          B.codigo_postal, 
                                                          B.precio, C.name AS ciudad, TP.name AS tipo   
                                                          FROM {$tabla} FB
                                                          INNER JOIN bienes B ON FB.bien_id = B.id
                                                          INNER JOIN ciudad C ON B.ciudad_id = C.id
                                                        INNER JOIN tipo_bienes TP ON B.tipo_id = TP.id");

              $statement->execute();

              return $statement->fetchAll(PDO::FETCH_CLASS);

            }catch(Exception $e)
              {
                echo $e;
      }
    }

      
        public function delete($table, $row, $id){
          try
          {
                $statement = $this->pdo->prepare("DELETE FROM $table WHERE $row = $id");
                $statement->execute();
                if ($statement->rowCount() > 0) {
                          return "exito";
                  } else {
                          return "fallo";
                  }
              } catch(Exception $e) {
                  echo $e;
        }
          
    }

       
public function excel($table,$ciudad, $tipo){

    $statement = $this->pdo->prepare("SELECT                                         
                                            C.name AS ciudad,
                                            TB.name AS tipo
                                            FROM {$table} B 
                                            INNER JOIN ciudad C ON B.ciudad_id = C.id
                                            INNER JOIN tipo_bienes TB ON B.tipo_id = TB.id
                                            WHERE C.id = {$ciudad} AND 
                                            TB.id = {$tipo} ");

                                        $statement->execute();
                                        return $statement->fetchAll(PDO::FETCH_ASSOC);

}
 
}