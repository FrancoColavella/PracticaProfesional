<!DOCTYPE html>
<html>

<head>
    <title>Tarjeta de credito</title>
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://fonts.googleapis.com/css?family=Lato|Liu+Jian+Mao+Cao&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/estilos.css">
</head>



<?php

    require("header.php");
    require("conexion.php");
    date_default_timezone_set('America/Argentina/Buenos_Aires');
	$fechaActual = date('Y-m-d');
    if(isset($_POST['tarjeta'])){
       $total=$_POST['total'];
       echo '
       <div class="contenedor">
            <section class="tarjeta" id="tarjeta">
                <div class="delantera">
                    <div class="logo-marca" id="logo-marca">
                        <!-- <img src="img/logos/visa.png" alt=""> -->
                    </div>
                    <img src="img/chip-tarjeta.png" class="chip" alt="">
                    <div class="datos">
                        <div class="grupo" id="numero">
                            <p class="label">Número Tarjeta</p>
                            <p class="numero">#### #### #### ####</p>
                        </div>
                        <div class="flexbox">
                            <div class="grupo" id="nombre">
                                <p class="label">Nombre Tarjeta</p>
                                <p class="nombre">Jhon Doe</p>
                            </div>

                            <div class="grupo" id="expiracion">
                                <p class="label">Expiracion</p>
                                <p class="expiracion"><span class="mes">MM</span> / <span class="year">AA</span></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="trasera">
                    <div class="barra-magnetica"></div>
                    <div class="datos">
                        <div class="grupo" id="firma">
                            <p class="label">Firma</p>
                            <div class="firma"><p></p></div>
                        </div>
                        <div class="grupo" id="ccv">
                            <p class="label">CCV</p>
                            <p class="ccv"></p>
                        </div>
                    </div>
                    <p class="leyenda">Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus exercitationem, voluptates illo.</p>
                    <a href="#" class="link-banco">www.tubanco.com</a>
                </div>
            </section>

            <!-- Contenedor Boton Abrir Formulario -->
            <div class="contenedor-btn">
                <button class="btn-abrir-formulario" id="btn-abrir-formulario">
                    <i class="fas fa-plus"></i>
                </button>
            </div>

            <!-- Formulario -->
            <form action="comprar.php" method="POST" id="formulario-tarjeta" class="formulario-tarjeta">
                <div class="grupo">
                    <label for="inputNumero">Número Tarjeta</label>
                    <input type="text" name="inputNumero" id="inputNumero" maxlength="19" autocomplete="off">
                </div>
                <div class="grupo">
                    <label for="inputNombre">Nombre</label>
                    <input type="text" name="inputNombre" id="inputNombre" maxlength="19" autocomplete="off">
                </div>
                <div class="flexbox">
                    <div class="grupo expira">
                        <label for="selectMes">Expiracion</label>
                        <div class="flexbox">
                            <div class="grupo-select">
                                <select name="mes" id="selectMes">
                                    <option disabled selected>Mes</option>
                                </select>
                                <i class="fas fa-angle-down"></i>
                            </div>
                            <div class="grupo-select">
                                <select name="year" id="selectYear">
                                    <option disabled selected>Año</option>
                                </select>
                                <i class="fas fa-angle-down"></i>
                            </div>
                        </div>
                    </div>
                    <div class="grupo ccv">
                        <label for="inputCCV">CCV</label>
                        <input type="text" name="inputCCV" id="inputCCV" maxlength="3">
                    </div>
                    <input type="text" class="form-control" name="fechaPago" id="fechaPago" value="'.$fechaActual.'" hidden>
                    <input type="text" class="form-control" name="tipoPago" id="tipoPago" value="1" hidden>
                    <input type="text" name="totalpagar" id="totalpagar" value="'.$total.'" hidden>
                </div>
                <button type="submit" name="aceptar" value="aceptar" class="btn-enviar">Continuar</button>
            </form>
            </div>';
    }else{
        $total=$_POST['total'];
        echo '<div class="container" style="padding-top:70px">
            <h1 align="center" style="color:white">Transferencia bancaria</h1>
                <div align="center" style="background:white;border-radius:30px;padding:20px">
                  <br><br>
                  <h4>Empresa: AFLcinema</h4>
                  <h4>CBU: 1234567890123456789012</h4>
                  <h4>Dirección: Capital federal</h4>
                  <h4>Tipo de cuenta: Cuenta corriente</h4>
                  <h4>Monto a pagar: $'.$total.'</h4>
                  <br><br>
                  <h4>Inserte comprobante de pago</h4>
                  <br>
                  <form action="validarcomprobante.php" method="POST" enctype="multipart/form-data">
                    <input type="file" name="imagen">
                    <input type="text" class="form-control" name="fechaPago" id="fechaPago" value="'.$fechaActual.'" hidden>
                    <input type="text" class="form-control" name="tipoPago" id="tipoPago" value="2" hidden>
                    <input type="text" name="totalpagar" id="totalpagar" value="'.$total.'" hidden>
                    <button type="submit" name="enviar" value="enviar" class="btn btn-dark">enviar</button>
                  </form>
              </div>';
    }
    echo "<script>
    function Numeros(string){
        var out = '';
        ok=true;
        var filtro = '1234567890';
        for (var i=0; i<4; i++)
           if (filtro.indexOf(string.charAt(i)) != -1)
             out += string.charAt(i);
        
             return out;
    }   
    </script>"

?>
<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
<script src="js/main.js"></script>
</html>