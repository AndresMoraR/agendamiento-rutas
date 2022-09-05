<%-- 
    Document   : Frm_Home
    Created on : 18/04/2022, 01:57:12 PM
    Author     : OSIADMIN
--%>


<!DOCTYPE html>
        
<title>Rutas - Inicio</title>

<!--Header-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>


<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-4 col-md-5 border-3 shadow" id="containerHome">
        <div class="row"> 
            <div class="col-md-12 text-center">
                <img id="logo" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Universidad" style="width: 200px; position: relative">
            </div>
            <jsp:include page="/WEB-INF/Vista/Home/frm_info.jsp"/>
            <%--<div class="col-md-12">
                <br>
                <h3 class="text-center">
                    <b>Estimada Comunidad Universitaria</b>
                </h3>
                <h5>
                    <b>Nos permitimos recordarles las siguientes recomendaciones para el uso de la ruta:</b>
                </h5>                
                <h5>
                    <b>
                        <ul class="fa-ul">
                            <li><span class="fa-li"><i class="fa-solid fa-check-square"></i></span>La inscripción solo se hace con el correo institucional.</li>
                            <li><span class="fa-li"><i class="fa-solid fa-check-square"></i></span>La Inscripción se hace hasta la completar los cupos asignados a cada horario.</li>
                            <li><span class="fa-li"><i class="fa-solid fa-check-square"></i></span>Para poder ingresar a la ruta debe mostrar el carnet institucional.</li>
                            <li><span class="fa-li"><i class="fa-solid fa-check-square"></i></span>No se inscriba más de dos veces a un mismo horario porque perderá el cupo.</li>
                            <li><span class="fa-li"><i class="fa-solid fa-check-square"></i></span>No se inscriba en todos los horarios de la ruta, porque perderá el cupo en todos.</li>
                            <li><span class="fa-li"><i class="fa-solid fa-check-square"></i></span>Realice la inscripción si realmente va a utiliza la ruta.</li>
                        </ul>
                    </b>
                </h5>
            </div>--%>
        </div>
    </div>
</section>


<!--foot-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>