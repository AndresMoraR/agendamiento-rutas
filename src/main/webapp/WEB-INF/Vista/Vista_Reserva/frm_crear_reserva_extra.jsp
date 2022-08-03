<%-- 
    Document   : frm_crear_reserva_extra
    Created on : 9/06/2022, 01:32:07 PM
    Author     : OSIADMIN
--%>

<!DOCTYPE html>
<title>Rutas - Reserva Extra </title>

<!--Header-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp" /> 

<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-4 col-md-3 border-3 shadow" id="containerRegistroU">        
        <div class="row">             
            <div class="col-md-12">
                <div class="text-center">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png" alt="Logo Bienestar" >
                    <h3 class="color-text"><b>Reserva Extra</b></h3>
                </div>
            </div>
            <hr>
        </div>        
        <form class="mt-1">
            <div class="row g-3">
                <div class="col-md-12">
                    <label><b>Fecha:</b></label>
                    <input type="text" class="form-control form-control-sm" id="fecha" readonly value="2022-06-14">
                </div>
                <div class="col-md-12">
                    <label><b>Hora:</b></label>
                    <input type="text" class="form-control form-control-sm" id="horario" readonly value="16:50">
                </div>
                <div class="col-md-12">
                    <label><b>Ruta:</b></label>
                    <input type="text" class="form-control form-control-sm" id="nombreRuta" readonly value="SedeNorte-Venecia">
                </div>
                <div class="col-md-12">
                    <label for="listaUsuario"><b>Usuarios:</b></label>
                    <div class="row g-3">
                        <select class="selectpicker form-control-sm" data-live-search="true" id="listaUsuario" name="listaUsuario">
                            <option>Fernando Perez - 1725345678</option>
                            <option>Alejandra Ramírez - 186383927</option>
                        </select>
                    </div>     
                </div> 
                
                <div class="col-md-12">
                    <div class="d-grid gap-2 d-flex flex-sm-row flex-column justify-content-center">
                        <button type="submit" class="btn btn-primary btn-buttons col-md-6" id="btnAceptar">Reservar</button>
                        <button type="submit" class="btn btn-primary btn-buttons col-md-6" id="btnCancelar">Cancelar</button>
                    </div>
                </div>
            </div>
        </form>
    </div>       
</section>
<!--foot-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>    


