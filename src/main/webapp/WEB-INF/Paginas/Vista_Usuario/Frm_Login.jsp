<%-- 
    Document   : Frm_Login
    Created on : 8/04/2022, 11:27:51 AM
    Author     : OSIADMIN
--%>

<!DOCTYPE html>



<title>Login</title>


<!--Header-->
<jsp:include page="/WEB-INF/Paginas/pagina_Base/Header.jsp"/>


            
<div class="container-fluid p-3 col-md-4  border-3 shadow mb-1"  id="containerlogin">
    <form class="row g-3">

        <div class="row">
            <div class="col-md-3 mt-2">
                <img id="logo" src="${pageContext.request.contextPath}/imagen/logo-1.png"  alt="Logo Universidad" >
            </div> 
            <div class=" col-md-9 mt-3 align-self-center ">
                <h1><b> Iniciar Sesión</b></h1>
            </div>
        </div> 


        <div class="input-group mb-2  mt-4">                             
            <span class="input-group-text">
                <i class="fa fa-at"></i>
            </span>
            <input type="email" class="form-control" id="emailimp" placeholder="Correo electrónico">
        </div>

        <div class=" input-group mb-2 mt-2">
            <span class="input-group-text">
                <i class="fa-solid fa-lock"></i>
            </span>
            <input type="password" class="form-control" id="contraseñaimp" placeholder="Contraseña"> 
        </div>
        <div class="d-flex justify-content-start align-content-start col-12">
            <div class="row ">
                <div>    
                    <div class=" form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                    <label class="form-check-label" for="exampleCheck1">Recordarme</label>
                    </div>
                </div>
            </div>
        </div>    
            
        <div class="d-flex justify-content-start align-content-start col-12">
            <div class="row mt-1">
                <div>
                <button type="submit" class="btn btn-primary col-md-12"  id="botonlog"> Aceptar</button>
                <a href="${pageContext.request.contextPath}/Paginas/Vista_Usuario/Frm_Home.jsp" ></a>
                </div>
            </div>
        </div>

        <div class="mt-2">
            <a href="${pageContext.request.contextPath}/LoginControlador" >Registrarme</a>
        </div>

    </form>
</div>


<!--foot-->            
<jsp:include page="/WEB-INF/Paginas/pagina_Base/Footer.jsp"/>            

