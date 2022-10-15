/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    // Denotes total number of rows
    var rowIdx = 0;
    
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
        $('#fechas_bloque').empty().append(
            '<tr id='+(++rowIdx)+'>'+
                addRow($(this).val(), rowIdx)+
                '<td>'+
                    '<button type="button" value='+$(this).val()+' class="btn_add btn btn-buttons">'+
                        '<span><i class="fa-solid fa-plus"></i></span>'+
                    '</button>'+
                '</td>'+
            '</tr>'
        );
    });
    
    $(document).on('click','.btn_add', function(){
        $("#fechas_bloque tr:last").after(
            '<tr id='+(++rowIdx)+'>'+
                addRow($(this).val(), rowIdx)+
                '<td>'+
                    '<button type="button" class="btn_remove btn btn-buttons">'+
                        '<span><i class="fa-solid fa-minus"></i></span>'+
                    '</button>'+
                '</td>'+
            '</tr>'
        );
    });
    
    $(document).on('click','.btn_remove', function(){
        var child = $(this).closest('tr').nextAll();
        child.each(function () {
            var id = $(this).attr('id');
            var idx = $(this).children('.row-index');
            var dig = parseInt(id.substring(1));
            idx.html(dig - 1);
            $(this).attr('id', (dig - 1));
        });        
        
        $(this).closest('tr').remove();
        rowIdx--;
    });
    
    function addRow(fecha, numRow){
        var row = 
            '<th class="row-index" scope="row">'+numRow+'</th>'+
            '<td>'+fecha+'</td>'+
            '<td>'+
                '<div class="form-check form-switch" style="padding: 0% !important">'+
                    '<input class="form-check-input" style="margin: 3px 0 0 0 !important; float: none !important" type="checkbox" id="flexSwitchCheckChecked" checked>'+
                '</div>'+
            '</td>'+
            '<td>'+
                '<select class="form-select form-select-sm">'+
                    '<option>5:50</option>'+
                    '<option>6:50</option>'+
                '</select>'+
            '</td>'+
            '<td>'+
                '<select class="form-select form-select-sm">'+
                    '<option>16</option>'+
                    '<option>12</option>'+
                '</select>'+
            '</td>'+
            '<td><label>16</label></td>'+
            '<td><input type="number" min="0" class="form-control form-control-sm"></td>'+
            '<td><input type="number" min="0" class="form-control form-control-sm"></td>'+
            '<td><label>16</label></td>';
        return row;
    }    
    
    function addDays(fecha, dia) {
        const rs = new Date(Number(fecha));
        rs.setDate(fecha.getDate() + dia);
        return rs;
    }
});

