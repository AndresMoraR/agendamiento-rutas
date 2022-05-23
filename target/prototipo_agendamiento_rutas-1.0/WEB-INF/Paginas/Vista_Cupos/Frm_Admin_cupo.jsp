<%-- 
    Document   : Frm_Admin_cupo
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>

<title>Administrar Cupos</title>

<jsp:include page="/WEB-INF/Paginas/pagina_Base/Header.jsp"/>


<section class="form-resp m-0 row justify-content-center align-items-center">

    <div class="container-fluid container-fluid-form p-3 col-md-8  border-3 shadow  mb-1 " id="container_registroU">

        <form>

            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-6  mt-3 aling-self-center" style="/*margin-top: -55px; margin-left: 270px;*/" >
                    <h1 class="color-text"> <b>Administrar Cupos</b> </h1>
                </div>
            </div>
                <!-- consultar la mejor opcion para abrir nuevos cupos <h3> <b>Abrir Cupos </b> </h3> -->   
            
            <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-end">
                                <button title="Editar Usuario" type="button" id="editUser"><span>
                                        <i class="fa-solid fa-plus"></i>
                                    </span>
                                </button>    
            </div>      
            <div class="table-responsive">
                <table class="table">

                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Cupos Funcionarios</th>
                            <th scope="col">Cupos Estudiantes</th>
                            <th scope="col">Cupos Extra</th>
                            <th scope="col">Total Cupos</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Fecha Creaci�n</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>6</td>
                            <td>14</td>
                            <td>5</td>
                            <td>25</td>
                            <td>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
                                </div>
                            </td>
                            <td>2022-23-05 9:00:00</td>
                            <td>
                                <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                    <button title="Editar Usuario" type="button" id="editUser">
                                        <span>
                                            <i class="fa-solid fa-file-pen"></i>
                                        </span>
                                    </button>
                                </div>
                            </td>
                            
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>4</td>
                            <td>12</td>
                            <td>4</td>
                            <td>20</td>
                            <td>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
                                </div>                                
                            </td>
                            <td>2022-23-05 9:10:00</td>
                            <td>
                                <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                    <button title="Editar Usuario" type="button" id="editUser">
                                        <span>
                                            <i class="fa-solid fa-file-pen"></i>
                                        </span>
                                    </button>
                                </div>
                            </td>
                            
                        </tr>

                    </tbody>
                </table> 
            </div>
            <!--<div class="col-2">
                <button type="submit" class=" btn btn-primary" id="botonreg1">Aceptar</button>
            </div>-->
            <div class=" d-flex justify-content-end align-content-end">
                <div class="row">
                    <div class="col-md-12">
                        <button type="submit" class=" btn btn-primary" id="botonreg2">Cerrar</button>
                    </div>
                </div>
            </div>    
        </form>
    </div>

</section>


<jsp:include page="/WEB-INF/Paginas/pagina_Base/Footer.jsp"/> 
