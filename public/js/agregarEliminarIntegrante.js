
$(document).on('click', '#agregar_integrante', function(){
  $('#asignar_alumno').clone().appendTo('#integrantes');
})


$(document).on('click', '#eliminar_integrante', function(){
    if($('#integrantes > *').length > 2){
        $("#asignar_alumno").remove();
    }
});
