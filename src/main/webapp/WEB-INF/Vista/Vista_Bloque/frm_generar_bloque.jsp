<%-- 
    Document   : Frm_Admin_cupo
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<title>Rutas - Crear Bloque</title>
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/frm_bloque.js" charset="utf-8"></script>
<script type="text/javascript">
    var path_url = "${pageContext.request.contextPath}";
</script>
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
                <div class="col-sm-3">
                  <label><b>Fecha Inicial del bloque:</b></label>
                  <input type="date" class="form-control form-control-sm" id="inp_fecha_inicial">
                </div>
                <div class="col-sm-3">
                  <label><b>Fecha Final del bloque:</b></label>
                  <input type="date" class="form-control form-control-sm" id="inp_fecha_final">
                </div>             
                <div class="d-flex flex-sm-row flex-column justify-content-end">
                    <button type="button" class="btn btn-primary btn-buttons" id="btnConsultarFecha">Consultar</button>
                </div>
            </div>
                
            <div class="row">
                <label class="text-center"><b>Días Disponibles</b></label>
                <div class="dias_dis gap-1 d-flex flex-sm-row flex-column justify-content-center">
                    <!--<nav class="tab-list dias_dis">-->                      
                        <button type="button" class="btn btn-primary btn-buttons">Consulte por fechas para buscar los días disponibles</button>
                    <!--</nav>-->               
                </div>
            </div>
                
            <div class="tabs">
                <!--<table class="table text-center">
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
                    <tbody id="fechas_bloque">
                    </tbody>
                </table>-->
            </div>
            <div class="col-md-12 mt-3">
                <div class="gap-2 d-flex justify-content-end mb-1">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        <b>Aplicar a todos los días disponibles</b>
                    </label>
                </div>
                <div class="gap-2 d-flex flex-sm-row flex-column justify-content-end">
                    <button type="button" class="btn btn-primary btn-buttons" id="btnGuardar">Guardar</button>
                    <button type="button" class="btn btn-primary btn-buttons" id="btnCancelar">Cancelar</button>
                </div>
            </div>    
        </form>
    </div>
</section>
<%--<jsp:include page="/WEB-INF/Vista/Vista_Base/Footer.jsp"/>--%>