<%-- 
    Document   : frm_admin_cupo
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Rutas - Administrar Cupos</title>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/frm_admin_cupo.js"></script>

<section class="form-resp m-0 row justify-content-center align-items-center">

    <div class="container-fluid container-fluid-form p-3 col-md-8  border-3 shadow  mb-1 " id="containerAdminCupo">

        <form>

            <div class="row"> 
                <div class="col-md-4">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-6 aling-self-center">
                    <h1 class="color-text"><b> Administrar Cupos</b></h1>
                </div>
            </div>

            <div class="d-grid mb-3 gap-2 d-flex flex-sm-row flex-column justify-content-end">
                <a class="btn btn-primary btn-buttons" title="Abrir Cupos" href="${pageContext.request.contextPath}/cupo?accion=add">
                    <span>                     
                        <i class="fa-solid fa-plus"></i>
                         Abrir Cupos 
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
                            <th scope="col">Fecha Creacion</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>                        
                        <!-- Iteramos cada elemento de lista Cupos -->
                        <c:forEach var="cupo" items="${cupos}" varStatus="status">
                            <tr>
                                <th scope="row">${status.count}</th>
                                <td>${cupo.funcionarioCupo}</td>
                                <td>${cupo.estudianteCupo}</td>
                                <td>${cupo.cupoExtra}</td>
                                <td>${cupo.totalCupo}</td>
                                <td>
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" value="${cupo.idCupo}" id="flexSwitchCheckChecked" ${cupo.estadoCupo == 'true' ? "checked" : ""}>
                                    </div>
                                </td>
                                <td>${cupo.fechaCreacionCupo}</td>
                                <td>
                                    <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                        <a title="Editar Cupos"  id="editartCupo" href="${pageContext.request.contextPath}/cupo?accion=editar&id=${cupo.idCupo}">
                                            <span>
                                                <i class="fa-solid fa-file-pen"></i>
                                            </span>
                                        </a>
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
                        <button type="submit" class=" btn btn-primary btn-buttons" id="btnCancelar">Cancelar</button>
                    </div>
                </div>
            </div>    
        </form>
    </div>

</section>


<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/> 
