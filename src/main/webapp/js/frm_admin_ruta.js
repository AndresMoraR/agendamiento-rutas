/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(function () {

    $('#btnEditar').on('click', function () {
        $.post('ruta', {
            id: $(this).val(),
            nombreRuta: $('#nombreRuta').val(),
            descripRuta: $('#descripRuta').val(),
            accion: 'modificar_ruta'
        }, function (rs) {
            window.location.href = path_url + "/ruta";
        });
    });
    
    $('#btnCrear').on('click', function () {
        $.post('ruta', {
            nombreRuta: $('#nombreRuta').val(),
            descripRuta: $('#descripRuta').val(),
            accion: 'crear_ruta'
        }, function (rs) {
            window.location.href = path_url+"/ruta";
        });
    });


});

