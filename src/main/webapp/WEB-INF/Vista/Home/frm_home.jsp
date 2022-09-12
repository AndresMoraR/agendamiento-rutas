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
        </div>
    </div>
</section>


<!--foot-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>