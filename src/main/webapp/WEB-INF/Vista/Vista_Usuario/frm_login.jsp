<%-- 
    Document   : Frm_Login
    Created on : 8/04/2022, 11:27:51 AM
    Author     : OSIADMIN
--%>

<!DOCTYPE html>
<title>Rutas - Login</title>


<!--Header-->
<jsp:include page="/WEB-INF/Vista/Vista_Base/header.jsp"/>


<section class="form-resp m-0 row justify-content-center align-items-center">
    <div class="container-fluid container-fluid-form p-4 col-md-2 border-3 shadow" id="containerLogin">
        <div class="row">
            <div class="col-md-12 mt-2 text-center justify-content-center align-items-center">
                <img id="logoU" src="${pageContext.request.contextPath}/imagen/logo.png" alt="Logo Universidad" >
                <img id="logoB" src="${pageContext.request.contextPath}/imagen/logo-bienestar.png"  alt="Logo Bienestar" >
            </div> 
        </div>
        <form action="${pageContext.request.contextPath}/login?accion=login" method="post">
            <div class="row">
                <div class="input-group mb-2 mt-3">                             
                    <span class="input-group-text">
                        <i class="fa fa-at"></i>
                    </span>
                    <input type="email" class="form-control form-control-sm" name="email" id="email" placeholder="Correo electrónico">
                </div>
            </div>
            <div class="row">
                <div class="input-group mb-2 mt-2">
                    <span class="input-group-text">
                        <i class="fa-solid fa-lock"></i>
                    </span>
                    <input type="password" class="form-control form-control-sm" name="contraseña" id="contraseña" placeholder="Contraseña"> 
                </div>
            </div>
            <div class="row">
                <div class="input-group mt-3">
                    <button type="submit" class="btn btn-primary col-md-12 btn-buttons" id="btnlogin">Login</button>
                </div>
            </div>
        </form>
        <hr>
        <div class="row">
            <div class="mt-2 mb-4">
                <a class="color-text" href="${pageContext.request.contextPath}/user?accion=add" ><b>
                    <span>
                        <i class="fa-solid fa-angles-right"></i>
                    </span>
                        Registrese aquí
                    </b>
                </a>
            </div>
        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/Vista/Vista_Base/footer.jsp"/>            

