<%-- 
    Document   : frm_admin_horario
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Rutas - Administrar Horarios</title>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/frm_admin_horario.js"></script>


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
                <a class="btn btn-primary btn-buttons" title="Abrir Ruta" href="${pageContext.request.contextPath}/horario?accion=add">
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
                        <c:forEach var="horario" items="${horarios}" varStatus="status"> 
                            <tr>
                                <th scope="row">${status.count}</th>
                                <td>${horario.hora_horario}</td>
                                <td>${horario.jornada_horario}</td>
                                <td>${horario.nombre_ruta}</td>
                                <td>
                                    <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                        <a title="Editar Horario" id="editarHorario" href="${pageContext.request.contextPath}/horario?accion=editar&id=${horario.id_horario}">
                                            <span>
                                                <i class="fa-solid fa-file-pen"></i>
                                            </span>
                                        </a>
                                        <button type="button" title="Eliminar Horario" class="borrarHorario btn_span" id="borrarHorario" name="borrarHorario" data-value="${horario.id_horario}">
                                            <span>
                                                <i class="fa-solid fa-trash-can"></i>
                                            </span>
                                        </button>
                                    </div>                                                                        
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class=" d-flex justify-content-end align-content-end">
                <div class="row">
                    <div class="col-md-12">
                        <a class="btn btn-primary btn-buttons" id="btnRegresar" title="Cancelar" href="${pageContext.request.contextPath}/home">
                            <span>
                                Cancelar
                            </span>
                        </a>
                    </div>
                </div>
            </div>  

            <!-- Modal -->
            <div class="modal" id="modalInfo" tabindex="-1" role="dialog" aria-labelledby="modalInfo" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">                    
                            <span class="modal-title">
                                <i class="fa fa-info-circle"></i>
                            </span>
                        </div>
                        <div class="modal-body">
                            ¿Desea borrar los datos?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary btn-buttons" data-bs-dismiss="modal">Cancelar</button>
                            <button type="button" class="btn btn-primary btn-buttons" id="btnBorrarHorario">Aceptar</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Modal -->                            
        </form>
    </div>

</section>


<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/> 
