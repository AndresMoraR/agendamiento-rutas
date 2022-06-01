<%-- 
    Document   : Frm_abrir_cupo
    Created on : 5/05/2022, 12:35:59 PM
    Author     : OSIADMIN
--%>


<title>Editar Cupos</title>

<jsp:include page="/WEB-INF/Vista/Vista_Base/Header.jsp"/>

<section class="form-resp m-0 row justify-content-center align-items-center">
    <!-- miga de pan 
        <div class=" breadcrumb p-3 mt-5">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"> <a href="#">Inicio</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/WEB-INF/Paginas/Vista_Usuario/Frm_Admin_cupo.jsp">Administrar Cupos</a></li>
                <li class="breadcrumb-item active" aria-current="page">Abrir Cupos</li>
            </ol>
        </nav>
    </div>-->

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

        <form class="mt-1">    
            <div class="row g-3">
                <div class="col-md-12  ">
                    <input type="number" class=" form-control form-control-sm" id="totalCupoEditar" placeholder="Total cupos disponibles">
                </div>
                <div class="col-md-12  ">
                    <input type="number" class=" form-control form-control-sm" id="cupoEstudianteEditar" placeholder="N�mero de cupos estudiantes">
                </div>
                <div class="col-md-12  ">
                    <input type="number" class=" form-control form-control-sm" id="cupoFuncionarioEditar" placeholder="N�mero de cupos funcionarios">
                </div>
                <div class="col-md-12  ">
                    <input type="number" class=" form-control form-control-sm" id="cupoExtraEditar" disabled placeholder="N�mero de cupos extra">
                </div>
            </div>  
            <div class="col-md-12 mt-3">
                <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                    <button type="submit" class="btn btn-primary col-md-6" id="btnAceptar">Guardar</button>
                    <button type="submit" class="btn btn-primary col-md-6" id="btnCancelar">Cancelar</button>
                </div>
            </div>
        </form>

    </div> 

</section> 
<jsp:include page="/WEB-INF/Vista/Vista_Base/Footer.jsp"/> 

