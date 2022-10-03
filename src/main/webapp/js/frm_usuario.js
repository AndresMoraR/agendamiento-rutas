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
            if(id_user_session == ""){
                window.location.href = path_url+"/";
            }else{                
                window.location.href = path_url+"/user";
            }
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
    
    $('.form-check-input').on('click', function () {        
        $.post('user', {
            idUser: $(this).val(),
            nuevoEstado: $(this).is(":checked"),
            accion: 'cambiar_estado'
        });
    });
});

