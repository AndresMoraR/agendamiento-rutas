<%-- 
    Document   : Frm_Admin_cupo
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>

<title>Rutas - Administrar Cupos</title>

<jsp:include page="/WEB-INF/Vista/Vista_Base/Header.jsp"/>


<section class="form-resp m-0 row justify-content-center align-items-center">

    <div class="container-fluid container-fluid-form p-3 col-md-8  border-3 shadow  mb-1 " id="containerAdminCupo">

        <form>

            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-6 aling-self-center">
                    <h1 class="color-text"> <b>Administrar Cupos</b> </h1>
                </div>
            </div>

            <div class="d-grid mb-3 gap-2 d-flex flex-sm-row flex-column justify-content-end">
                <a class="btn btn-primary" title="Abrir Cupos" href="${pageContext.request.contextPath}/Cupo?action=add">
                    <span>                     
                        <i class="fa-solid fa-plus"></i>
                        <b> Abrir Cupos </b> 
                    </span>
                </a>  
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
                            <th scope="col">Fecha Creación</th>
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
                                    <button title="Editar Cupos" type="button" id="editartCupo">
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
                                    <button title="Editar Cupos" type="button" id="editartCupo">
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

            <div class=" d-flex justify-content-end align-content-end">
                <div class="row">
                    <div class="col-md-12">
                        <button type="submit" class=" btn btn-primary" id="btnCancelar">Cancelar</button>
                    </div>
                </div>
            </div>    
        </form>
    </div>

</section>


<jsp:include page="/WEB-INF/Vista/Vista_Base/Footer.jsp"/> 

