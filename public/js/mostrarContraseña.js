var icono = document.getElementById('mostrar_constraseña');

function mostrarContraseña(){
  if(icono.className == "fas fa-eye-slash"){
      document.getElementById('mostrar_constraseña').className = "fas fa-eye";
      var input = document.getElementById('contraseña');
      input.setAttribute("type","text");
  }else{
    document.getElementById('mostrar_constraseña').className = "fas fa-eye-slash";
    var input = document.getElementById('contraseña');
    input.setAttribute("type","password");
  }
}
