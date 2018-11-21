window.onload= function(){
  var agregarInput = document.getElementById("agregar_integrante");

  agregarInput.onclick = crearInputIntegrante;

}

function crearInputIntegrante(){
  var integrante = document.getElementById('integrantes');
  var alumnos = document.getElementById('asignar_alumno');
  var alumnosCLon = alumnos.cloneNode(true);

  integrantes.appendChild(alumnosCLon);

}
