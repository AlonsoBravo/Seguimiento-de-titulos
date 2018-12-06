var porcentajes = document.getElementsByClassName("porcentaje");

for(var i=0; i < porcentajes.length; i++){

  var valor = porcentajes[i].innerText;

  if(valor.slice(0,-1) < 50){
    var filaPorcentaje = porcentajes[i];
    $(filaPorcentaje).append('<span style="font-size: 20px; color:red;"><i class="fas fa-times-circle"></i></span>');
  }else if(valor.slice(0,-1) > 50 && valor.slice(0,-1) < 75){
    var filaPorcentaje = porcentajes[i];
    $(filaPorcentaje).append('<span style="font-size: 20px; color:yellow;"><i class="fas fa-exclamation-triangle"></i></span>');
  }else{
    var filaPorcentaje = porcentajes[i];
    $(filaPorcentaje).append('<span style="font-size: 20px; color:green;"><i class="fas fa-check-circle"></i></span>');
  }
}
