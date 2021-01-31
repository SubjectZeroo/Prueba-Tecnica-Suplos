<?php 
if(isset($_POST['add-bien'])){
 
 App::get('database')->insert('favoritos_bienes',[
    
    'bien_id' => $_GET['id'],
   

    ]);

    header("Location: /"); 
}