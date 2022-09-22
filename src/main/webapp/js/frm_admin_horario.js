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
    var meridiano = "";
    
    $('#inp_hora').on('change', function () {
        var time_split = $(this).val().split(':');        
        var hora = time_split[0];        
        if (hora > 12) {
            meridiano = 'PM';
            $('#rbJornadaN').prop('checked', true);
            hora -= 12;
        } else if (hora < 12) {
            meridiano = 'AM';
            $('#rbJornadaM').prop('checked', true);
            if (hora == 0) {
                hora = 12;
            }
        } else {            
            meridiano = 'PM';
            $('#rbJornadaN').prop('checked', true);
        }
    });

    $('#btnCrearHorario').on('click', function () {
        $.post('horario', {
            horaHorario: $('#inp_hora').val() + ':00',
            jornadaHorario: meridiano,
            facultadAreaHorario: $('#facultad_area').val(),
            accion: 'crear_horario'
        }, function (rs) {
            window.location.href = path_url + "/horario";
        });
    });


});
