<%-- 
    Document   : Frm_Registro_Usuario
    Created on : 11/04/2022, 10:25:14 AM
    Author     : OSIADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Rutas - Editar Usuario</title>
<!--Header-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp" /> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/frm_usuario.js"></script>
<script type="text/javascript">
    var path_url = "${pageContext.request.contextPath}";
</script>
<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-4 col-md-2 border-3 shadow" id="containerEditarUsuario">        
        <div class="row">             
            <div class="col-md-12">
                <div class="text-center">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png" alt="Logo Bienestar" >
                    <h3 class="color-text"><b>Editar Usuario</b></h3>
                </div>
            </div>
            <hr>
        </div>        
        <form class="mt-1">
            <div class="row g-3">
                <div class="col-md-12">
                    <label><b>Nombres</b></label>
                    <input type="text" class="form-control form-control-sm" id="nombres" value="${usuario.nombres}" placeholder="Nombres">
                </div>
                <div class="col-md-12">
                    <label><b>Apellidos</b></label>
                    <input type="text" class="form-control form-control-sm" id="apellidos" value="${usuario.apellidos}" placeholder="Apellidos">
                </div>
                <div class="col-md-12">
                    <label><b>Número de identificación</b></label>
                    <input type="text" class="form-control form-control-sm" id="n_identificacion" value="${usuario.identificacion}" placeholder="Número de identificación">
                </div>
                <div class="col-md-12">
                    <label><b>Correo electrónico</b></label>
                    <input type="email" class="form-control form-control-sm" id="correo" value="${usuario.correo}" placeholder="Correo electrónico">
                </div> 
                <div class="col-md-12">
                    <label><b>Facultad/Área</b></label>
                    <select id="facultad_area" class="form-select form-select-sm">
                        <option value="" selected>Seleccione</option>                            
                        <c:forEach var="facul_area" items="${facul_areas}" varStatus="status">
                            <c:set var="selected" value=""/>
                            <c:if test="${usuario.facultad == facul_area.idFacultadArea}">
                                <c:set var="selected" value="selected"/>                                
                            </c:if>
                            <option value="${facul_area.idFacultadArea}" ${selected}>${facul_area.nombreFacultadArea}</option>
                        </c:forEach>  
                    </select>
                </div>   
                <div class="col-md-12">
                    <label><b>Rol</b></label>
                    <select id="rol" class="form-select form-select-sm">
                        <option value="" selected>Seleccione</option>                            
                        <c:forEach var="rol" items="${roles}" varStatus="status">
                            <c:set var="selected" value=""/>
                            <c:if test="${usuario.rol == rol.idRol}">
                                <c:set var="selected" value="selected"/>                                
                            </c:if>
                            <option value="${rol.idRol}" ${selected}>${rol.nombreRol}</option>
                        </c:forEach>  
                    </select>
                </div>
                <div class="col-md-12">
                    <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                        <button type="button" class="btn btn-primary col-md-6 btn-buttons" id="btnEditarUsuario" value="${usuario.idUser}">Guardar</button>
                        <a href="${pageContext.request.contextPath}/user" class="btn btn-primary col-md-6 btn-buttons" id="btnRegresar">Cancelar</a>
                    </div>
                </div>
            </div>
        </form>
    </div>       
</section>
<!--foot-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>    

