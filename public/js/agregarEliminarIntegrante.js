/*window.onload= function(){
  var agregarInput = document.getElementById("agregar_integrante");

  agregarInput.onclick = crearSelectIntegrante;
}

function crearSelectIntegrante(){
  var integrante = document.getElementById('integrantes');
  var alumnos = document.getElementById('asignar_alumno');
  var alumnosCLon = alumnos.cloneNode(true);

  integrantes.appendChild(alumnosCLon);
}*/
$(document).on('click', '#agregar_integrante', function(){
  $('#asignar_alumno').append('<select class="opcion asignar_alumno" id="alumnos" name="alumno[]" required style="top:-8px; position:relative;"><option value="">Escoja alumno</option></select>');
})


$(document).on('click', '#eliminar_integrante', function(){
    $("#asignar_alumno").remove();
});
