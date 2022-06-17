<%-- 
    Document   : frm_consulta_sancion
    Created on : 8/06/2022, 03:13:55 PM
    Author     : OSIADMIN
--%>
<title>Rutas - Consultar Sanciones</title>

<!--Header-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-3 col-md-8 border-3 shadow  mb-1 " id="containerConsultaSancion">
        <form>
            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-4 text-center p-0">
                    <h1 class="color-text"> <b>Consultar Sanciones</b> </h1>
                </div>
            </div>
                
            <div class="mb-3 mt-3 row g-2 justify-content-end">
                <div class="col-md-2">
                  <label><b>Fecha a Consultar:</b></label>
                  <input type="date" class="form-control form-control-sm" id="inp_date_init">
                </div>             
            </div>     
            <div class="table-responsive">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Fecha Sanción</th>
                            <th scope="col">Estado Sanción</th>
                            <th scope="col">Fecha Reservada</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">Número Documento</th>
                            <th scope="col">Asistencia Reserva</th>
                            <th scope="col">Ruta</th>
                            <th></th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>2022-06-04</td>
                            <td>Pendiente</td>
                            <td>2022-06-01</td>
                            <td>Carlos Rojas</td>
                            <td>102425380</td>
                            <td>No</td>
                            <td>Cuc-Sede Norte</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>2022-06-07</td>
                            <td>Realizado</td>
                            <td>2022-06-03</td>
                            <td>Paola Herrera</td>
                            <td>5686893</td>
                            <td>No</td>
                            <td>Sede Norte-CUC</td>
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="col-md-12 mt-3">
                <div class="gap-2 d-flex flex-sm-row flex-column justify-content-end">
                    <button type="submit" class="btn btn-primary btn-buttons" id="btnCancelar">Cancelar</button>
                </div>
            </div>    
        </form>
    </div>
</section>
<!--foot-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>