/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {
    /*var date = new Date();
    var dd = String(date.getDate()).padStart(2, '0');
    var mm = String(date.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = date.getFullYear();*/

    /*$('#btnEditar').on('click', function () {
        $.post('horario', {
            id: $(this).val(),
            horaHorario: $('#nombreRuta').val(),
            jornadaHorario: $('#descripRuta').val(),
            accion: 'modificar_ruta'
        }, function (rs) {
            window.location.href = path_url + "/ruta";
        });
    });*/
    
    $('#btnCrearHorario').on('click', function () {
        $.post('horario', {
            horaHorario: $('#hora').val()+':00',
            jornadaHorario: $('#rbJornada').val(),
            facultadAreaHorario: $('#facultad_area').val(),
            accion: 'crear_horario'
        }, function (rs) {
            window.location.href = path_url+"/horario";
        });
    });


});
