/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    // Denotes total number of rows
    // var rowIdx = 0;
    $('#btnConsultarFecha').on('click', function () {
        var inp_fecha_inicial = new Date($('#inp_fecha_inicial').val() + "T00:00");
        var inp_fecha_final = new Date($('#inp_fecha_final').val() + "T00:00");
        
        var diff_tiempo = inp_fecha_final.getTime() - inp_fecha_inicial.getTime();
        var diff_dias = diff_tiempo / (1000 * 3600 * 24);
        
        if(diff_dias < 6){
            $(".dias_dis").empty();
            $(".tabs").empty();
            // hacer for recorriendo fechas para sacar los días y colocarlos en los globos.
            for (i = 0; i <= diff_dias; i++) {                
                var suma_dia = addDays(inp_fecha_inicial, i);
                var dd = String(suma_dia.getDate()).padStart(2, '0');
                var mm = String(suma_dia.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = suma_dia.getFullYear(); 
                var fecha = yyyy+'-'+mm+'-'+dd;
                $(".dias_dis").append(
                    '<button type="button" value='+fecha+' data-dia='+dd+' data-tab="tab-'+dd+'" class="tablinks dia_btn btn btn-primary btn-buttons">'+dd+'</button>'                    
                );
                $(".tabs").append(addTab(fecha, dd));                
                getHorarios();
            }
        }else{
            alert('Recuerde que la cantidad maxima para la creación de los bloques es de 6 días.');
        }
    });
        
    $(document).on('click','.dia_btn', function(){
        var data_tab = $(this).data('tab');
        //var data_dia = $(this).data('dia');
        abrir_tabla(data_tab);
    });
    
    $(document).on('click','.btn_add', function(){        
        var data_dia = $(this).data('dia');
        $('#fechas_bloque_'+data_dia+'').append(
            //'<tr id='+(++rowIdx)+'>'+
            '<tr>'+
                addRow($(this).val()/*,rowIdx*/)+
                '<td>'+
                    '<button type="button" class="btn_remove btn btn-buttons">'+
                        '<span><i class="fa-solid fa-minus"></i></span>'+
                    '</button>'+
                '</td>'+
            '</tr>'
        );
    });
    
    $(document).on('click','.btn_remove', function(){
        /*var next_row = $(this).closest('tr').nextAll();        
        next_row.each(function () {            
            var id = $(this).attr('id');
            var idx = $(this).children('.row-index');
            var dig = parseInt(id);
            idx.html(dig - 1);
            $(this).attr('id', (dig - 1));
        });*/        
        
        $(this).closest('tr').remove();
        //rowIdx--;
    });
    
    function addRow(fecha/*,numRow*/){

        var row = 
            //'<th class="row-index" scope="row">'+numRow+'</th>'+
            '<th>'+fecha+'</th>'+
            '<td>'+
                '<div class="form-check form-switch" style="padding: 0% !important">'+
                    '<input class="form-check-input" style="margin: 3px 0 0 0 !important; float: none !important" type="checkbox" id="flexSwitchCheckChecked" checked>'+
                '</div>'+
            '</td>'+
            '<td>'+
                '<select class="select_horario form-select form-select-sm">'+
                    '<option>5:50</option>'+
                    '<option>6:50</option>'+
                '</select>'+
            '</td>'+
            '<td>'+
                '<select class="select_cupo form-select form-select-sm">'+
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
    
    function abrir_tabla(div_id) {
        var i, tabcontent;
        tabcontent = $(".tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
          tabcontent[i].style.display = "none";          
        }
        $('#'+div_id+'').css("display", "block");
    }
    
    function addTab(fecha, dia){
        var tab = 
            '<div id="tab-'+dia+'" class="table-responsive tab-content hide tabcontent" style="display:none;">'+
                '<table class="table text-center">'+
                    '<thead>'+
                        '<tr>'+
                            //'<th scope="col"></th>'+
                            '<th scope="col">Fecha</th>'+
                            '<th scope="col">Estado</th>'+
                            '<th scope="col">Horario</th>'+
                            '<th scope="col">Cupo</th>'+
                            '<th scope="col">Cupo Total</th>'+
                            '<th scope="col" style="width: 5%;">Cupos Estudiantes</th>'+
                            '<th scope="col" style="width: 5%;">Cupos Funcionarios</th>'+
                            '<th scope="col" style="width: 10%;">Cupos Extra disponible</th>'+
                            '<th>'+
                                '<button type="button" value="'+fecha+'" data-dia='+dia+' class="btn_add btn btn-buttons">'+
                                    '<span><i class="fa-solid fa-plus"></i></span>'+
                                '</button>'+
                            '</th>'+
                        '</tr>'+
                    '</thead>'+
                    '<tbody id="fechas_bloque_'+dia+'">'+
                    '</tbody>'+
                '</table>'+
            '</div>';
        return tab;
    }
    
    function getHorarios()
    {
        $.post('horario', {
            accion: 'consultar_horarios'
        }, function (data, status) {
            $(".tabs").append(data.rs_horariocns[0].hora_horario);
        });
    }
});

