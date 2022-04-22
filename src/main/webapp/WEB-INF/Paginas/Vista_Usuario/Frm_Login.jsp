<%-- 
    Document   : Frm_Login
    Created on : 8/04/2022, 11:27:51 AM
    Author     : OSIADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/Boot_css/bootstrap.min.css"/>
        <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Estilos.css"/>
        
    </head>
    <body>
        <section>

            <div class="container p-3  border-3 shadow  mb-1 " id="containerlogin">
                <form>
                    <div>
                        <div class="col-md-3">
                            <img id="logo" src="${pageContext.request.contextPath}/imagen/logo-1.png"  alt="Logo Universidad" >
                        </div> 
                         <div class="col-md-9" style="margin-top: -55px; margin-left: 160px;" >

                             <h1><b> Iniciar Sesión</b></h1>
                    </div>
                        
                        <label for="Correoelectrónico" class="form-label"> </label>
                        <input type="email" class="form-control" id="emailimp" aria-describedby="emailHelp" placeholder="Correo electrónico">
                        <div id="emailHelp" class="form-text"></div>
                    </div>
                    <div class="mb-3">
                        <label for="contraseña" class="form-label"></label>
                        <input type="password" class="form-control" id="contraseñaimp" placeholder="Contraseña">
                    </div>

                    <div class="mb-3 form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Recordarme</label>
                    </div>
                    <div>    
                    <button type="submit" class="btn btn-primary"  id="botonlog">Aceptar</button>
                    <a href="${pageContext.request.contextPath}/Paginas/Vista_Usuario/Frm_Home.jsp" ></a>
                    </div> 
                    <div>
                        
                        <a href="${pageContext.request.contextPath}/LoginControlador">Registrarme</a>
                    </div>
                </form>
            </div>       
        </section>
        <script src="${pageContext.request.contextPath}/Bootstrap/boot_js/bootstrap.bundle.min.js"></script>             

        <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>   -->
    </body>
</html>
