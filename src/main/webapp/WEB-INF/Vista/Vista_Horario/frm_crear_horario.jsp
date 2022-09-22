<%-- 
    Document   : frm_crear_horario
    Created on : 25/05/2022, 04:25:03 PM
    Author     : OSIADMIN
--%>


<title>Rutas - Crear Horario</title>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/frm_admin_horario.js"></script>
<script type="text/javascript">
    var path_url = "${pageContext.request.contextPath}";
</script>

<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-4 col-md-2 border-3 shadow" id="containerCrearHorario">        
        <div class="row">             
            <div class="col-md-12">
                <div class="text-center">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png" alt="Logo Bienestar" >
                    <h3 class="color-text"><b>Crear Horario</b></h3>
                </div>
            </div>
            <hr>
        </div>        
        <form class="mt-1">
            <div class="row g-3">
                <div class="col-md-12">
                    <label for="hora"><b>Seleccionar Hora:</b></label>
                    <input type="time" class=" form-control form-control-sm border-0" id="inp_hora" name="inp_hora" value="">
                </div>
                <div class="col-md-12">
                    <input class="form-check-input" type="radio" name="rbJornada" id="rbJornadaM" value="M" disabled="disabled">
                    <label class="form-check-label" for="rbJornadaM">
                        <b>Mañana</b>
                    </label>
                </div>
                <div class="col-md-12">
                    <input class="form-check-input" type="radio" name="rbJornada" id="rbJornadaN" value ="N" disabled="disabled">
                    <label class="form-check-label" for="rbJornadaN">
                        <b>Noche</b>
                    </label>
                </div>                
                <div class="col-md-12">
                    <label for="facultad_area"><b>Seleccionar Ruta:</b></label>
                    <select  name="facultad_area" id="facultad_area" class="form-select form-select-sm">
                        <option value="" selected>Seleccionar</option>
                        <c:forEach var="ruta" items="${rutas}" varStatus="status">
                           <option value="${ruta.id_ruta}">${ruta.nombre_ruta}</option>
                        </c:forEach>  
                    </select>                    
                </div>                
                <div class="col-md-12">
                    <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                        <button type="button" class="btn btn-primary btn-buttons col-md-6" id="btnCrearHorario">Guardar</button>
                        <a href="${pageContext.request.contextPath}/horario" class="btn btn-primary btn-buttons col-md-6" id="btnCancelar">Cancelar</a>
                    </div>
                </div>
            </div>
        </form>
    </div>       
</section>

<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>

        
        
