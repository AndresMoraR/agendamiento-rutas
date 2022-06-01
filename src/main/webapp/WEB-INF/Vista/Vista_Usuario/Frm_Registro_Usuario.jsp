<%-- 
    Document   : Frm_Registro_Usuario
    Created on : 11/04/2022, 10:25:14 AM
    Author     : OSIADMIN
--%>


<!DOCTYPE html>
<title>Rutas - Registro de Usuario</title>

<!--Header-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/Header.jsp" /> 

<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-4 col-md-2 border-3 shadow" id="containerRegistroU">        
        <div class="row">             
            <div class="col-md-12">
                <div class="text-center">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png" alt="Logo Bienestar" >
                    <h3 class="color-text"><b>Registrar Usuario</b></h3>
                </div>
            </div>
            <hr>
        </div>        
        <form class="mt-1">
            <div class="row g-3">
                <div class="col-md-12">
                    <input type="text" class="form-control form-control-sm" id="nombres" placeholder="Nombres">
                </div>
                <div class="col-md-12">
                    <input type="text" class="form-control form-control-sm" id="apellidos" placeholder="Apellidos">
                </div>
                <div class="col-md-12">
                    <input type="text" class="form-control form-control-sm" id="n_identificacion" placeholder="Número de identificación">
                </div>
                <div class="col-md-12">
                    <input type="email" class="form-control form-control-sm" id="correo" placeholder="Correo electrónico">
                </div> 
                <div class="col-md-12">
                    <select id="facultad_area" class="form-select form-select-sm">
                        <option selected>Facultad/Área</option>
                        <option>...</option>
                    </select>
                </div>                
                <div class="col-md-12">
                    <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                        <button type="submit" class="btn btn-primary col-md-6" id="btnAceptar">Guardar</button>
                        <button type="submit" class="btn btn-primary col-md-6" id="btnCancelar">Cancelar</button>
                    </div>
                </div>
            </div>
        </form>
    </div>       
</section>
<!--foot-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/Footer.jsp"/>    

