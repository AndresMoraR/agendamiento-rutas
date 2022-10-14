<%-- 
    Document   : frm_mis_reservas
    Created on : 8/06/2022, 02:39:17 PM
    Author     : beamora
--%>

<title>Rutas - Mis Reservas</title>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-3 col-md-8 border-3 shadow mb-1" id="containerAdminCupo">
        <form>
            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-4 text-center">
                    <h1 class="color-text"> <b>Mis Reservas</b> </h1>
                </div>
            </div>

            <div class="mb-3 mt-3 row g-2 justify-content-end">
                <div class="col-md-3">
                    <label><b>Seleccione el rango de fechas a consultar:</b></label>                  
                    <select class="form-select form-select-sm" id="inp_date_range">
                        <option value="">Seleccione</option>
                        <option value="1">(2022-06-06 / 2022-06-11)</option>
                        <option value="2">(2022-06-13 / 2022-06-18)</option>
                    </select>
                </div>
            </div>

            <div class="table-responsive">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Hora</th>
                            <th scope="col">Ruta</th>
                            <th scope="col">Código de Verificación</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Asistencia</th>                       
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>2022-06-06</td>
                            <td>5:50</td>
                            <td>CUC - VEN</td>
                            <td></td>
                            <td>Cancelado</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>2022-06-07</td>
                            <td>16:50</td>
                            <td>VEN - CUC</td>
                            <td>1234</td>
                            <td>
                                Reservado
                                <div class="form-check form-switch" style="padding: 0% !important">
                                    <input class="form-check-input" style="margin: 3px 0 0 0 !important; float: none !important" type="checkbox" id="flexSwitchCheckChecked" checked>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>2022-06-08</td>
                            <td>6:50</td>
                            <td>CUC - VEN</td>
                            <td>5678</td>
                            <td>Reservado</td>
                            <td>No</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>2022-06-09</td>
                            <td>8:50</td>
                            <td>VEN - CUC</td>
                            <td>9012</td>
                            <td>Sanción</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="col-md-12 mt-3">
                <div class="gap-2 d-flex flex-sm-row flex-column justify-content-end">
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