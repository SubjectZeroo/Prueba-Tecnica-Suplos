<?php require('partials/head.php'); ?>
<video src="img/video.mp4" id="vidFondo"></video>
  <div class="contenedor">
    <div class="card rowTitulo">
      <h1>Bienes Intelcost</h1>
    </div>
    <div class="colFiltros">
      <form action="/busqueda" method="POST" name="formulario" id="formulario">
        <div class="filtrosContenido">
          <div class="tituloFiltros">
            <h5>Filtros</h5>
          </div>
          <div class="filtroCiudad input-field">
            <p><label for="selectCiudad">Ciudad:</label><br></p>
            <select name="ciudad" id="selectCiudad">
              <option value="0" selected>Elige una ciudad</option>
              <?php foreach ($ciudades  as $ciudad): ?>
                <option value="<?= $ciudad->id ?>" ><?= $ciudad->name ?></option>
              <?php endforeach; ?>
            </select>
          </div>
          <div class="filtroTipo input-field">
            <p><label for="selecTipo">Tipo:</label></p>
            <br>
            <select name="tipo" id="selectTipo">
              <option value="0" selected>Elige un tipo</option>
              <?php foreach ($tipo_bienes as $tipo_bien): ?>
                  <option value="<?= $tipo_bien->id  ?>"><?=  $tipo_bien->name ?></option>
              <?php endforeach; ?>
            </select>
          </div>
          <div class="filtroPrecio">
            <label for="rangoPrecio">Precio:</label>
            <input type="text" id="rangoPrecio" name="precio" value="" />
          </div>
          <div class="botonField">
            <input type="submit" class="btn white" value="Buscar" id="submitButton">
          </div>
        </div>
      </form>

    </div>
    <div id="tabs" style="width: 75%;">
      <ul>
        <li><a href="#tabs-1">Bienes disponibles</a></li>
        <li><a href="#tabs-2">Mis bienes</a></li>
        <li><a href="#tabs-3">Reportes</a></li>
      </ul>
      <div id="tabs-1">
        <div class="colContenido" id="divResultadosBusqueda">
          <div class="tituloContenido card" style="justify-content: center;">
            <h5>Resultados de la búsqueda:</h5>
            <?php foreach ($busquedaBienes as $busquedabien): ?>
            <div class="divider"></div>        
                <div class="row">
                  <div class="col s7">
                      <img class="responsive-img" src="../public/img/home.jpg">
                  </div>
                  <div class="col s5 ">
                    <p>Direccion: <?=  $busquedabien->direccion ?></p>
                    <p>Ciudad  <?=  $busquedabien->ciudad ?></p>
                    <p>Telefono: <?=  $busquedabien->telefono ?></p>
                    <p>Codigo Postal: <?=  $busquedabien->codigo_postal ?></p>
                    <p>Tipo: <?=  $busquedabien->tipo ?></p>
                    <p>Precio <?=  $busquedabien->precio ?></p>
                    <form action="/add-bien?id=<?= $bien->id  ?>" method="POST">       
                              <button class="btn waves-effect waves-light" type="submit" name="add-bien">Guardar
                                <i class="material-icons right">send</i>
                              </button>  
                          </form>
                  </div>
                </div>  
            <?php endforeach; ?>
          </div>
        </div>
      </div> 
     
      <div id="tabs-2" >
        <div class="colContenido" id="divResultadosBusqueda">
          <div class="tituloContenido card" style="justify-content: center;">
            <h5>Bienes guardados:</h5>
            <div class="divider"></div>
            <?php foreach ( $bienes_favoritos as  $bien_favorito): ?>
            <div class="divider"></div>        
                <div class="row">
                  <div class="col s7">
                      <img class="responsive-img" src="../public/img/home.jpg">
                  </div>
                  <div class="col s5 ">
                    <p>Direccion: <?= $bien_favorito->direccion ?></p>
                    <p>Ciudad  <?= $bien_favorito->ciudad ?></p>
                    <p>Telefono: <?= $bien_favorito->telefono ?></p>
                    <p>Codigo Postal: <?= $bien_favorito->codigo_postal ?></p>
                    <p>Tipo: <?= $bien_favorito->tipo ?></p>
                    <p>Precio <?= $bien_favorito->precio ?></p>
                    
                    <a class="btn waves-effect waves-light" onClick="javascript: return confirm('Quiere eliminarlo?')"href='/delete-bien?id=<?= $bien_favorito->id  ?>'> 
                       <i class="material-icons right">send</i>
                       <span>Eliminar</span>
                    </a>                 
                  </div>
                </div>  
            <?php endforeach; ?>
          </div>
        </div>
      </div>
      <div id="tabs-3" >
        <div class="colContenido" id="divResultadosBusqueda">
          <div class="tituloContenido card" style="justify-content: center;">
            <h1>Exportar Reporte</h1>
            <h5>Filtros</h5>
            <form action="/excel" method="POST">
              <div class="filtroCiudad input-field">
                <p><label for="selectCiudad">Ciudad:</label><br></p>
                <select name="ciudad" id="selectCiudad">
                  <option value="0" selected>Elige una ciudad</option>
                  <?php foreach ($ciudades  as $ciudad): ?>
                    <option value="<?=$ciudad->id?>" ><?= $ciudad->name ?></option>
                  <?php endforeach; ?>
                </select>
              </div>
              <div class="filtroTipo input-field">
                <p><label for="selecTipo">Tipo:</label></p>
                <br>
                <select name="tipo" id="selectTipo">
                  <option value="0" selected>Elige un tipo</option>
                  <?php foreach ($tipo_bienes as $tipo_bien): ?>
                      <option value="<?=  $tipo_bien->id ?>"><?=  $tipo_bien->name ?></option>
                  <?php endforeach; ?>
                </select>
              </div>

                <div class="botonField">
                   <input type="submit" class="btn white" value="General Excell" id="submitButton">
                 </div>
            </form>      


            
          </div>
        </div>
      </div>
    </div>
   
<?php require('partials/footer.php'); ?>
