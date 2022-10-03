$(function () {    
    $('#btnCrearUsuario').on('click', function () {        
        $.post('user', {
            nombres: $('#nombres').val(),
            apellidos: $('#apellidos').val(),
            n_identificacion: $('#n_identificacion').val(),
            correo: $('#correo').val(),
            facultad: $('#facultad_area').val(),
            accion: 'crear_usuario',
            id_user_session: id_user_session
        }, function (rs) {
            window.location.href = path_url+"/";
        });
    });
    
    $('#btnEditarUsuario').on('click', function() {        
        $.post('user', {
            id: $(this).val(),
            nombres: $('#nombres').val(),
            apellidos: $('#apellidos').val(),
            n_identificacion: $('#n_identificacion').val(),
            correo: $('#correo').val(),
            facultad: $('#facultad_area').val(),
            rol: $('#rol').val(),
            accion: 'modificar_usuario'
        }, function (rs){
            window.location.href = path_url+"/user";
        });
    });
});

