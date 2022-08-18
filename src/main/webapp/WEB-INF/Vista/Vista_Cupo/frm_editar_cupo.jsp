<%-- 
    Document   : frm_editar_cupo
    Created on : 5/05/2022, 12:35:59 PM
    Author     : OSIADMIN
--%>


<title>Rutas - Editar Cupos</title>

<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/frm_admin_cupo.js"></script>
<script type="text/javascript">
    var path_url = "${pageContext.request.contextPath}";
</script>

<section class="form-resp m-0 row justify-content-center align-items-center">
    <%-- miga de pan 
        <div class=" breadcrumb p-3 mt-5">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"> <a href="#">Inicio</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/WEB-INF/Paginas/Vista_Usuario/Frm_Admin_cupo.jsp">Administrar Cupos</a></li>
                <li class="breadcrumb-item active" aria-current="page">Abrir Cupos</li>
            </ol>
        </nav>
    </div>--%>

    <div class="container-fluid container-fluid-form p-4 col-md-3   border-3 shadow  " id="containerEditarCupo">
        <div class="row">             
            <div class="col-md-12">
                <div class="text-center">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png" alt="Logo Bienestar" >
                    <h3 class="color-text">
                        <b>Editar Cupos</b>
                    </h3>
                </div>
            </div>
            <hr>
        </div> 

        <%--<form method="POST" action="${pageContext.request.contextPath}/Cupo?accion=modificar_cupo&id=${cupo.idCupo}" class="mt-1">--%>
            <div class="row g-3">
                <div class="col-md-12  ">
                    <label for="totalCupo"><b>Total de cupos disponibles:</b></label>
                    <input type="number" class="form-control editar-cupo form-control-sm" name="totalCupo" id="totalCupo" placeholder="Total cupos disponibles" value="${cupo.totalCupo}">
                </div>
                <div class="col-md-12">
                    <label for="cupoEstudiante"><b>Número de cupos para estudiantes:</b></label>
                    <input type="number" class="form-control editar-cupo form-control-sm" name="cupoEstudiante" id="cupoEstudiante" placeholder="Número de cupos estudiantes" value="${cupo.estudianteCupo}">
                </div>
                <div class="col-md-12  ">
                    <label for="cupoFuncionario"><b>Número de cupos para funcionarios:</b></label>
                    <input type="number" class="form-control editar-cupo form-control-sm" name="cupoFuncionario" id="cupoFuncionario" placeholder="Número de cupos funcionarios" value="${cupo.funcionarioCupo}">
                </div>
                <div class="col-md-12  ">
                    <label for="cupoExtra"><b>Número de cupos extra:</b></label>
                    <input type="number" class="form-control form-control-sm" name="cupoExtra" id="cupoExtra" readonly placeholder="Número de cupos extra" value="${cupo.cupoExtra}">
                </div>
            </div>  
            <div class="col-md-12 mt-3">
                <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                    <button type="button" class="btn btn-primary col-md-6 btn-buttons" id="btnEditar" value="${cupo.idCupo}">Guardar</button>
                    <a href="${pageContext.request.contextPath}/cupo" class="btn btn-primary col-md-6 btn-buttons" id="btnCancelar">Cancelar</a>
                </div>
            </div>
        <%--</form>--%>

    </div> 

</section> 
<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/> 

