/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {    
    $('#btnLogin').on('click', function () {
        $.post('login', {
            email: $('#email').val(),
            password: $('#password').val()
        }, function (rs) {
            window.location.href = path_url+"/home";
        });
    });
    
    $(document).keydown(function (tecla) {
        if (tecla.keyCode == 13) {
            $('#btnLogin').click();
        }
    });
});

