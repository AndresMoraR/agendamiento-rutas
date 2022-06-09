<%-- 
    Document   : frm_mis_reservas
    Created on : 8/06/2022, 02:39:17 PM
    Author     : beamora
--%>

<title>Rutas - Mis Reservas</title>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-3 col-md-10 border-3 shadow mb-1" id="containerAdminCupo">
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
                  <label><b>Seleccion el rango de fechas a consultar:</b></label>                  
                  <select class="form-select form-select-sm" id="inp_date_range">
                      <option value="">Seleccione</option>
                      <option value="1">(06-06-2022 / 11-06-2022)</option>
                      <option value="2">(13-06-2022 / 18-06-2022)</option>
                  </select>
                </div>
            </div>
                
            <div class="table-responsive">
                <table class="table text-center">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Fecha</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Horario</th>
                            <th scope="col">Cupo</th>
                            <th scope="col">Cupo Total</th>
                            <th scope="col" style="width: 5%;">Cupos Estudiantes</th>
                            <th scope="col" style="width: 5%;">Cupos Funcionarios</th>
                            <th scope="col" style="width: 10%;">Cupos Extra disponible</th>
                            <th></th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>2022-05-26</td>
                            <td>
                                <div class="form-check form-switch" style="padding: 0% !important">
                                    <input class="form-check-input" style="margin: 3px 0 0 0 !important; float: none !important" type="checkbox" id="flexSwitchCheckChecked" checked>
                                </div>
                            </td>
                            <td> 
                                <select class="form-select form-select-sm">
                                    <option>5:50</option>
                                    <option>6:50</option>
                                </select> 
                            </td>
                            <td>
                                <select class="form-select form-select-sm">
                                    <option>16</option>
                                    <option>12</option>
                                </select> 
                            </td>
                            <td><b><label>16</label></b></td>
                            <td><input type="number" min="0" class="form-control form-control-sm"></td>
                            <td><input type="number" min="0" class="form-control form-control-sm"></td>
                            <td><b><label>16</label></b></td>
                            <td>
                                <a href="#" class="btn">
                                    <span><i class="fa-solid fa-plus"></i></span>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>2022-05-26</td>
                            <td>
                                <div class="form-check form-switch" style="padding: 0% !important">
                                    <input class="form-check-input" style="margin: 3px 0 0 0 !important; float: none !important" type="checkbox" id="flexSwitchCheckChecked" checked>
                                </div>
                            </td>
                            <td> 
                                <select class="form-select form-select-sm">
                                    <option>5:50</option>
                                    <option>6:50</option>
                                </select> 
                            </td>
                            <td>
                                <select class="form-select form-select-sm">
                                    <option>16</option>
                                    <option>12</option>
                                </select> 
                            </td>
                            <td><b><label>16</label></b></td>
                            <td><input type="number" min="0" class="form-control form-control-sm"></td>
                            <td><input type="number" min="0" class="form-control form-control-sm"></td>
                            <td><b><label>16</label></b></td>
                            <td>
                                <a href="#" class="btn">
                                    <span><i class="fa-solid fa-minus"></i></span>
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table> 
            </div>
            <div class="col-md-12 mt-3">
                <div class="gap-2 d-flex justify-content-end mb-1">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        <b>Aplicar a todos los días</b>
                    </label>
                </div>
                <div class="gap-2 d-flex flex-sm-row flex-column justify-content-end">
                    <button type="submit" class="btn btn-primary" id="btnGuardar">Guardar</button>
                    <button type="submit" class="btn btn-primary" id="btnCancelar">Cancelar</button>
                </div>
            </div>    
        </form>
    </div>
</section>