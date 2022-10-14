<%-- 
    Document   : Frm_Admin_cupo
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Rutas - Administrar Usuarios</title>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/frm_usuario.js"></script>
<script type="text/javascript">
    var path_url = "${pageContext.request.contextPath}";
</script>
<section class="form-resp m-0 row justify-content-center align-items-center">

    <div class="container-fluid container-fluid-form p-3 col-md-8  border-3 shadow  mb-1 " id="containerAdminUsuario">
        <div class="row"> 
            <div class="col-md-4 align-self-center">
                <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" >
            </div> 
            <div class="col-md-6 align-self-center" >
                <h1 class="color-text"> <b>Administrar Usuarios</b> </h1>
            </div>
        </div>
        <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-end">
            <a class="btn btn-primary btn-buttons" title="Nuevo Usuario" href="${pageContext.request.contextPath}/user?accion=add">
                <span>
                    <i class="fa-solid fa-plus"></i>
                    Nuevo Usuario 
                </span>
            </a>
        </div> 
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

                    <!--<tr>
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
                                <a title="Editar Usuario" id="editarUsuario" href="${pageContext.request.contextPath}/user?action=editar&id=2"><span>
                                        <i class="fas fa-user-edit"></i>
                                    </span></a>
                            </div>
                        </td>
                    </tr>-->
                    <c:forEach var="user" items="${users}" varStatus="status">
                        <tr>
                            <th scope="row">${status.count}</th>
                            <td>${user.nombres}</td>
                            <td>${user.apellidos}</td>
                            <td>${user.identificacion}</td>
                            <td>${user.correo}</td>
                            <td>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" value="${user.idUser}" id="flexSwitchCheckChecked" ${user.estado == 'true' ? "checked" : ""}>
                                </div>
                            </td>
                            <td>${user.fecha_creacion}</td>
                            <td>
                                <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                                    <a title="Editar Usuario"  id="editarUsuario" href="${pageContext.request.contextPath}/user?accion=editar&id=${user.idUser}">
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
                    <a class="btn btn-primary btn-buttons" id="btnRegresar" title="Cancelar" href="${pageContext.request.contextPath}/home">
                        <span>
                            Cancelar
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>

</section>


<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>