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
    
    $('#btnLogin').on('click', function () {
        $.post('login', {
            email: $('#email').val(),
            password: $('#password').val(),
            //accion: 'login'
        }, function (rs) {
            window.location.href = path_url+"/home";
        });
    });
    
    /*$('#link11').on('click', function () {
        alert('Entro aqui');
    })*/
})

