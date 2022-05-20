<%-- 
    Document   : Frm_Admin_cupo
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>

<title>Administrar Cupos</title>

<jsp:include page="/WEB-INF/Paginas/pagina_Base/Header.jsp"/>


<section class="form-resp m-0 row justify-content-center align-items-center">

    <div class="container-fluid container-fluid-form p-3 col-md-8  border-3 shadow  mb-1 " id="container_registroU">
        <div class="row"> 
            <div class="col-md-4 align-self-center">
                <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
            </div> 
            <div class="col-md-6 align-self-center" style="/*margin-top: -55px; margin-left: 270px;*/" >
                <h1 class="color-text"> <b>Listado de Usuarios</b> </h1>
            </div>
        </div>
        <!-- consultar la mejor opcion para abrir nuevos cupos   
    <div class=" input-group text-end "> 
        <span class="input-group-text align-content-end">
            <i class="fa-solid fa-plus"></i>
        </span>
        <h3> <b>Abrir Cupos </b> </h3>  
    </div> 
        -->     
        <div class="table-responsive">
            <table class="table">

                <thead>
                    <tr>
                        <th scope="col"></th>
                        <th scope="col">Nombres</th>
                        <th scope="col">Apellidos</th>
                        <th scope="col">N° Documento</th>
                        <th scope="col">Correo</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Fecha Creación</th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Juan Sebastian</td>
                        <td>Latorre Cardenas</td>
                        <td>1000117396</td>
                        <td>jslatorre@unisanitas.edu.co</td>
                        <td>
                            <div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
                            </div>
                        </td>
                        <td>2022-19-05 12:00:00</td>
                        <td>
                            <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                <button title="Editar Usuario" type="button" id="editUser"><span>
                                        <i class="fas fa-user-edit"></i>
                                    </span></button>
                                <button title="Suspender Usuario" type="button" id="cancelUser"><span>
                                        <i class="fas fa-user-lock"></i>
                                    </span></button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Harold</td>
                        <td>Roa</td>
                        <td>1234568722</td>
                        <td>practicantesistemas4@unisanitas.edu.co</td>
                        <td><div class="form-check form-switch">
                                <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked>
                            </div>
                        </td>
                        <td>2022-19-05 12:00:00</td>
                        <td>
                            <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                <button title="Editar Usuario" type="button" id="editUser"><span>
                                        <i class="fas fa-user-edit"></i>
                                    </span></button>
                                <button title="Suspender Usuario" type="button" id="cancelUser"><span>
                                        <i class="fas fa-user-lock"></i>
                                    </span></button>
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
                    <button type="submit" class=" btn btn-primary" id="botonreg2">Cancelar</button>
                </div>
            </div>
        </div>
    </div>

</section>


<jsp:include page="/WEB-INF/Paginas/pagina_Base/Footer.jsp"/>