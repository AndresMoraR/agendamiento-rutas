$(function () {
    $('#btnCrear').on('click', function () {
        $.post('user', {
            nombres: $('#nombres').val(),
            apellidos: $('#apellidos').val(),
            n_identificacion: $('#n_identificacion').val(),
            correo: $('#correo').val(),
            facultad: $('#facultad_area').val(),
            accion: 'crear_usuario'
        }, function (rs) {
            window.location.href = path_url+"/";
        });
    });
})

