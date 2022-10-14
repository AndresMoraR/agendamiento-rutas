<%-- 
    Document   : frm_admin_confirmar_reserva
    Created on : 9/06/2022, 01:34:00 PM
    Author     : OSIADMIN
--%>

<title>Rutas - Confirmación de Reservas</title>
<!--Header-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>

<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-3 col-md-10 border-3 shadow  mb-1 " id="containerAdminCupo">
        <form>
            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-4 text-center">
                    <h1 class="color-text"> <b>Confirmación de Reservas</b> </h1>
                </div>
            </div>
            <div class="row">      
                <div class="col-md-12 ">
                    <div class="col row g-5 col-md-12">
                        <div class="col-md-4">
                            <label><b>Bloque</b></label>
                            <select id="seleccionBloque" class="form-select form-select-sm">
                                <option selected="">Selección semana</option>
                                <option>Semana 1 (2022-06-06/2022-06-11)</option>
                                <option>Semana 2 (2022-06-13/2022-06-18)</option>
                            </select>
                        </div>
                        <div class="col-md-4 ">
                            <label><b>Fecha</b></label>
                            <input type="date" class="form-control form-control-sm" id="inp_date_end">
                        </div>
                        <div class="col-md-4">
                            <label><b>Horario</b></label>
                            <select id="seleccionBloque" class="form-select form-select-sm">
                                <option selected="">Selección horario</option>
                                <option>5:50</option>
                                <option>6:50</option>
                                <option>16:50</option>
                            </select>
                        </div>
                        <div class="d-flex flex-sm-row flex-column mt-3 justify-content-end">
                            <button type="submit" class="btn btn-primary btn-buttons" id="btnConsultar">Consultar</button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6 mt-1"> 
                <div class="mb-3">                
                    <div class="col-md-6"> 
                        <label><b>Cupos Disponibles Estuduantes:</b></label>
                        <label>10</label>
                    </div>
                    <div class="col-md-6"> 
                        <label><b>Cupos Disponibles Funcionarios:</b></label> 
                        <label>10</label>
                    </div>
                    <div class="col-md-6 "> 
                        <label><b>Cupos Disponibles Extra:</b></label> 
                        <label>5</label> 

                    </div>
                    <div class="col-md-6"> 
                        <label><b>Total Cupos:</b></label>
                        <label>25</label>
                    </div>
                </div>
            </div>  


            <div class="table-responsive">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Hora</th>
                            <th scope="col">Ruta</th>
                            <th scope="col">Usuario</th>
                            <th scope="col">Rol</th>
                            <th scope="col">Código Verificaión</th>
                            <th scope="col">Verificado</th>
                            <th scope="col">Asistencia</th>
                            <th scope="col">Sancionado</th>
                            <th></th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>2022-06-09</td>
                            <td>5:50</td>
                            <td>CUC-SedeNorte</td>
                            <td>Laura Torres</td>
                            <td>Estudiante</td>
                            <td>1638</td>
                            <td>
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </td>
                            <td>
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </td>
                            <td>
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>2022-06-09</td>
                            <td>5:50</td>
                            <td>CUC-SedeNorte</td>
                            <td>Carlos Fonseca</td>
                            <td>Funcionario</td>
                            <td>8976</td>
                            <td>
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </td>
                            <td>
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </td>
                            <td>
                                <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            </td>  
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="col-md-12 mt-3">
                <div class="gap-2 d-flex flex-sm-row flex-column justify-content-end">
                    <a class="btn btn-primary btn-buttons" title="Usuario Extra" href="${pageContext.request.contextPath}/confireserva?action=add">
                        <span>
                            Reserva Extra  
                        </span>
                    </a>
                    <button type="submit" class="btn btn-primary btn-buttons" id="btnGuardar">Guardar</button>
                    <a class="btn btn-primary btn-buttons" id="btnRegresar" title="Cancelar" href="${pageContext.request.contextPath}/home">
                        <span>
                            Cancelar
                        </span>
                    </a>
                </div>
            </div>    
        </form>
    </div>
</section>
<%--<jsp:include page="/WEB-INF/Vista/Vista_Base/Footer.jsp"/>--%>
