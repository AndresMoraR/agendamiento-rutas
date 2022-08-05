/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    $('.form-check-input').on('click', function () {        
        $.post('Cupo', {
            idCupo: $(this).val(),
            nuevoEstado: $(this).is(":checked"),
            accion: 'cambiar_estado'
        });
    });
    
    $('#btnEditar').on('click', function () {
        $.post('Cupo', {
            id: $(this).val(),
            totalCupo: $('#totalCupo').val(),
            cupoEstudiante: $('#cupoEstudiante').val(),
            cupoFuncionario: $('#cupoFuncionario').val(),
            cupoExtra: $('#cupoExtra').val(),
            accion: 'modificar_cupo'
        }, function (rs) {
            window.location.href = path_url+"/Cupo";
        });
    });
    
    $('#btnCrear').on('click', function () {
        $.post('Cupo', {
            totalCupo: $('#totalCupo').val(),
            cupoEstudiante: $('#cupoEstudiante').val(),
            cupoFuncionario: $('#cupoFuncionario').val(),
            cupoExtra: $('#cupoExtra').val(),
            accion: 'crear_cupo'
        }, function (rs) {
            window.location.href = path_url+"/Cupo";
        });
    });
    
    $('.editar-cupo').on('change', function() {
        var cupos_extra = 0;
        var cupos_est_func = 0;
        var cupos_total = 0;
        $('.editar-cupo').each(function(i){
            if(i !== 0){
               cupos_est_func += parseInt($(this).val());
            }else{
               cupos_total = parseInt($(this).val());
            }           
        });
        cupos_extra = (cupos_total - cupos_est_func);
        $('#cupoExtra').val(cupos_extra);
    });
});

