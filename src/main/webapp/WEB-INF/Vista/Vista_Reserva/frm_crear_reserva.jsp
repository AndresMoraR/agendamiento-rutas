<%-- 
    Document   : frm_mis_reservas
    Created on : 8/06/2022, 02:39:17 PM
    Author     : beamora
--%>

<title>Rutas - Crear Reservas</title>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-3 col-md-10 border-3 shadow mb-1" id="containerAdminCupo">
        <form>
            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-4 text-center">
                    <h1 class="color-text"> <b>Crear Reservas</b> </h1>
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
                <table class="table table-bordered table-sm border-secondary text-center" style="vertical-align: middle">
                    <thead>
                        <tr>
                            <th scope="col" colspan="2" rowspan="2" style="border-top: hidden;border-left: hidden;"></th>
                            <th scope="col" colspan="6">FECHAS DISPONIBLES</th>
                        </tr>
                        <tr>
                            <th scope="col" style="width: 15%">2022-06-06</th>
                            <th scope="col" style="width: 15%">2022-06-07</th>
                            <th scope="col" style="width: 15%">2022-06-08</th>
                            <th scope="col" style="width: 15%">2022-06-09</th>
                            <th scope="col" style="width: 15%">2022-06-10</th>
                            <th scope="col" style="width: 15%">2022-06-11</th>                       
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="3" style="writing-mode: vertical-rl">HORAS DISPONIBLES</th>
                            <th scope="row">05:50</th>
                            <td>
                                <label><b>Cupos disponibles para estudiantes: 5</b></label>
                                <input class="form-check-input" type="checkbox" value="" id="hora1">
                            </td>
                            <td><label><b>Cupos alcanzados</b></label></td>
                            <td>
                                <label><b>Cupos disponibles para estudiantes: 6</b></label>
                                <input class="form-check-input" type="checkbox" value="" id="hora2">
                            </td>
                            <td></td>
                            <td>
                                <label><b>Cupos disponibles para estudiantes: 7</b></label>
                                <input class="form-check-input" type="checkbox" value="" id="hora3">
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <th scope="row">06:50</th>
                            <td></td>
                            <td>
                                <label><b>Cupos disponibles para estudiantes: 8</b></label>
                                <input class="form-check-input" type="checkbox" value="" id="hora4">
                            </td>
                            <td></td>
                            <td>
                                <label><b>Cupos disponibles para estudiantes: 9</b></label>
                                <input class="form-check-input" type="checkbox" value="" id="hora5">
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th scope="row">13:00</th>
                            <td></td>
                            <td><label><b>Cupos alcanzados</b></label></td>
                            <td></td>
                            <td><label><b>Cupos alcanzados</b></label></td>
                            <td></td>
                            <td>
                                <label><b>Cupos disponibles para estudiantes: 10</b></label>
                                <input class="form-check-input" type="checkbox" value="" id="hora6">
                            </td>
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="col-md-12 mt-3">
                <div class="gap-2 d-flex flex-sm-row flex-column justify-content-end">
                    <button type="submit" class="btn btn-primary btn-buttons" id="btnRservar">Reservar</button>
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