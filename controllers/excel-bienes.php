<?php 
$ciudad =   $_POST['ciudad'];
$tipo   =   $_POST['tipo'];

$rows = App::get('database')->excel('bienes',$ciudad, $tipo);
//El nombre del archivo excel
//Para descargardo.
$filename = 'members.xls';

// Enviamos los header para que el navegador sepa que es 
//que esta descargando un archivo excel.
header("Content-Type: application/xls");    
header("Content-Disposition: attachment; filename=$filename");  
header("Pragma: no-cache"); 
header("Expires: 0");

//Definimos el separador de la linea
$separator = "\t";

//Si el query retornal algo
if(!empty($rows)){
    
    //Dinamicamente imprimimor las nombres de las columnas como el primer row del documento
    //la hoja de excel va tener heades
    echo implode($separator, array_keys($rows[0])) . "\n";
    
    //Ciclo de rows
    foreach($rows as $row){
        
        //Limpiamos la data para evitar cualquier conflicto
        foreach($row as $k => $v){
            $row[$k] = str_replace($separator . "$", "", $row[$k]);
            $row[$k] = preg_replace("/\r\n|\n\r|\n|\r/", " ", $row[$k]);
            $row[$k] = trim($row[$k]);
        }
        
        //Implode y pintamos las data
        //$separator como el pegamento 
        echo implode($separator, $row) . "\n";
    }
}