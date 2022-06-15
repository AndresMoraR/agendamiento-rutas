<%-- 
    Document   : frm_editar_horario
    Created on : 25/05/2022, 04:25:03 PM
    Author     : OSIADMIN
--%>


<title>Rutas - Editar Horario</title>

<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>

<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-4 col-md-2 border-3 shadow" id="containerEditarHorario">        
        <div class="row">             
            <div class="col-md-12">
                <div class="text-center">
                    <img id="logoBF" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png" alt="Logo Bienestar" >
                    <h3 class="color-text"><b>Editar Horario</b></h3>
                </div>
            </div>
            <hr>
        </div>        
        <form class="mt-1">
            <div class="row g-3">
                <div class="col-md-12">
                    <label for="appt" class="  " >Seleccionar Hora</label>
                    <input type="time" class=" form-control form-control-sm border-0" id="appt" name="appt">
                </div>
                <div class="col-md-12">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
                    <label class="form-check-label" for="flexRadioDefault1">
                        Mañana
                    </label>
                </div>
                <div class="col-md-12">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                    <label class="form-check-label" for="flexRadioDefault2">
                        Tarde
                    </label>
                </div>
                <div class="col-md-12">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
                    <label class="form-check-label" for="flexRadioDefault3">
                        Noche
                    </label>
                </div>
                <div class="col-md-12">
                    <select id="facultad_area" class="form-select form-select-sm">
                        <option selected>Nombre de la ruta</option>
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

<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>

        
        
