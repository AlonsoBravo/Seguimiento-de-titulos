<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Login</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|PT+Sans" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
  </head>
  <body>
    <div class="contenedor">
      <img class="logo" src="img/logo.jpg" alt="logo">
      <form class="fomulario_ingreso_usuario" action="" method="post">
        <div class="ingreso_usuario  clearfix">
          <h2>ingreso de usuarios</h2>
          <div class="contenedor_usuario">
            <input class="usuario" type="text" name="usuario" placeholder="Ingrese rut usuario" maxlength="12" required>
            <br>
          </div>
          <div class="contenedor_contraseña">
            <input id="contraseña" class="contraseña" type="password" name="contraseña" placeholder="Ingrese contraseña" maxlength="8" required>
            <div class="tooltip">
              <content class="mostrar_constraseña"><i id="mostrar_constraseña" class="fas fa-eye-slash" onclick="mostrarContraseña();"></i></content>
              <span class="tooltiptext">Monstrar contraseña</span>
              <br>
            </div>
          </div>
          <div>
            <input class="recordar_usuario" type="checkbox" name="recordar_usuario"><label>Recuerdame en este equipo</label>
            <a href="#" class="button ingresar">Ingresar</a>
          </div>
        </div><!-- .ingreso_usuario -->
      </form><!-- .fomulario_ingreso_usuario -->
    </div><!-- .contenedor -->

  <script src="js/mostrarContraseña.js"> </script>

  </body>
</html>
