<%-- 
    Document   : Frm_Admin_cupo
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>
<title>Rutas - Crear Bloque</title>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-3 col-md-10 border-3 shadow  mb-1 " id="containerAdminCupo">
        <form>
            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-4 text-center">
                    <h1 class="color-text"> <b>Crear Bloque</b> </h1>
                </div>
            </div>
                
            <div class="mb-3 mt-3 row g-2 justify-content-end">
                <div class="col-md-2">
                  <label><b>Fecha Inicial:</b></label>
                  <input type="date" class="form-control form-control-sm" id="inp_date_init">
                </div>
                <div class="col-md-2">
                  <label><b>Fecha Final:</b></label>
                  <input type="date" class="form-control form-control-sm" id="inp_date_end">
                </div>             
                <div class="d-flex flex-sm-row flex-column justify-content-end">
                    <button type="submit" class="btn btn-primary btn-buttons" id="btnConsultar">Consultar</button>
                </div>
            </div>
                
            <div class="row">
                <label class="text-center"><b>Días Disponibles</b></label>
                <div class="gap-1 d-flex flex-sm-row flex-column justify-content-center">
                    <a href="" class="btn btn-primary btn-buttons">30</a>
                    <a href="" class="btn btn-primary btn-buttons">31</a>
                    <a href="" class="btn btn-primary btn-buttons">01</a>
                    <a href="" class="btn btn-primary btn-buttons">02</a>
                    <a href="" class="btn btn-primary btn-buttons">03</a>
                    <a href="" class="btn btn-primary btn-buttons">04</a>
                    <a href="" class="btn btn-primary btn-buttons">05</a>
                    <a href="" class="btn btn-primary btn-buttons">06</a>
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
                                <a href="#" class="btn btn-buttons">
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
                                <a href="#" class="btn btn-buttons">
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
                    <button type="submit" class="btn btn-primary btn-buttons" id="btnGuardar">Guardar</button>
                    <button type="submit" class="btn btn-primary btn-buttons" id="btnCancelar">Cancelar</button>
                </div>
            </div>    
        </form>
    </div>
</section>
<%--<jsp:include page="/WEB-INF/Vista/Vista_Base/Footer.jsp"/>--%>