/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {    
    $('#btnConsultarFecha').on('click', function () {
        var inp_fecha_inicial = new Date($('#inp_fecha_inicial').val() + "T00:00");
        var inp_fecha_final = new Date($('#inp_fecha_final').val() + "T00:00");
        
        var diff_tiempo = inp_fecha_final.getTime() - inp_fecha_inicial.getTime();
        var diff_dias = diff_tiempo / (1000 * 3600 * 24);
        
        if(diff_dias < 6){
            $(".dias_dis").empty();
            /** hacer for recorriendo fechas para sacar los días y colocarlos en los globos. **/
            for (i = 0; i <= diff_dias; i++) {                
                var suma_dia = addDays(inp_fecha_inicial, i);
                var dd = String(suma_dia.getDate()).padStart(2, '0');
                var mm = String(suma_dia.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = suma_dia.getFullYear();
                //console.log(suma_dia);                
                $(".dias_dis").append('<button type="button" value='+yyyy+'-'+mm+'-'+dd+' id='+yyyy+'-'+mm+'-'+dd+' class="dia_btn btn btn-primary btn-buttons">'+dd+'</button>');
            }
        }else{
            alert('Recuerde que la cantidad maxima para la creación de los bloques es de 6 días.');
        }
    });
        
    $(document).on('click','.dia_btn', function(){
        alert('Tadaaa!');
        
    });
    
    function addDays(fecha, dia) {
        const rs = new Date(Number(fecha));
        rs.setDate(fecha.getDate() + dia);
        return rs;
    }
});

