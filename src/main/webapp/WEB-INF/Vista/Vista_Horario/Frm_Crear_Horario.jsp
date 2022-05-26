<%-- 
    Document   : Frm_Crear_Horario
    Created on : 25/05/2022, 04:25:03 PM
    Author     : OSIADMIN
--%>


<title>Crear Horario</title>

<jsp:include page="/WEB-INF/Vista/Vista_Base/Header.jsp"/>

<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-4 col-md-2 border-3 shadow" id="containerRegistroU">        
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
                    <input type="text" class="form-control form-control-sm" id="nombres" placeholder="Hora">
                </div>
                <div class="col-md-12">
                    <input type="text" class="form-control form-control-sm" id="apellidos" placeholder="Jornada">
                </div>
                <div class="col-md-12">
                    <select id="facultad_area" class="form-select form-select-sm">
                        <option selected>Nombre de la ruta</option>
                        <option>...</option>
                    </select>
                </div>                
                <div class="col-md-12">
                    <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                        <button type="submit" class="btn btn-primary col-md-6" id="btnAceptar">Aceptar</button>
                        <button type="submit" class="btn btn-primary col-md-6" id="btnCancelar">Cancelar</button>
                    </div>
                </div>
            </div>
        </form>
    </div>       
</section>

<jsp:include page="/WEB-INF/Vista/Vista_Base/Footer.jsp"/>

        
        
