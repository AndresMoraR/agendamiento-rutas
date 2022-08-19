<%-- 
    Document   : frm_admin_horario
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>

<title>Rutas - Administrar Horarios</title>

<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>


<section class="form-resp m-0 row justify-content-center align-items-center">

    <div class="container-fluid container-fluid-form p-3 col-md-8  border-3 shadow  mb-1 " id="containerAdminHorario">

        <form>

            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-6 aling-self-center">
                    <h1 class="color-text"> <b>Administrar Horarios</b> </h1>
                </div>
            </div>


            <div class="d-grid mb-3 gap-2 d-flex flex-sm-row flex-column justify-content-end">
                <a class="btn btn-primary btn-buttons" title="Abrir Ruta" href="${pageContext.request.contextPath}/horario?action=add">
                    <span>
                        <i class="fa-solid fa-plus"></i>
                         Crear Horario  
                    </span>
                </a>    
            </div>

            <div class="table-responsive">
                <table class="table">

                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">Hora</th>
                            <th scope="col">Jornada</th>
                            <th scope="col">Ruta</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>6:50</td>
                            <td>Diurna</td>
                            <td>CUC - Sede Norte</td>
                            <td>
                                <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                    <a title="Editar Horario" id="editarHorario" href="${pageContext.request.contextPath}/horario?action=editar&id=1">
                                        <span>
                                            <i class="fa-solid fa-file-pen"></i>
                                        </span>
                                    </a>
                                        <a title="Eliminar Horario" id="eliminarHorario" href="">
                                        <span>
                                            <i class="fa-solid fa-trash-can"></i>
                                        </span>
                                    </a>
                                </div>
                            </td>

                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td>17:00</td>
                            <td>Tarde</td>
                            <td>CUC - Sede Norte</td>
                            <td>
                                <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                    <a title="Editar Horario" id="editarRuta" href="${pageContext.request.contextPath}/horario?action=editar&id=2">
                                        <span>
                                            <i class="fa-solid fa-file-pen"></i>
                                        </span>
                                    </a>
                                    <a title="Eliminar Horario" id="eliminarRuta" href="">
                                        <span>
                                            <i class="fa-solid fa-trash-can"></i>
                                        </span>
                                    </a>
                                </div>
                            </td>

                        </tr>

                    </tbody>
                </table> 
            </div>

            <div class=" d-flex justify-content-end align-content-end">
                <div class="row">
                    <div class="col-md-12">
                        <button type="submit" class=" btn btn-primary btn-buttons" id="btnCancelar">Cancelar</button>
                    </div>
                </div>
            </div>    
        </form>
    </div>

</section>


<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/> 
