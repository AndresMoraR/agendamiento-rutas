<%-- 
    Document   : Frm_Registro_Usuario
    Created on : 11/04/2022, 10:25:14 AM
    Author     : OSIADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" id="favicon" type="image/x-icon" href="${pageContext.request.contextPath}/imagen/logo-1.png" >
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/Boot_css/bootstrap.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Estilos.css"/>
        <title>Registro de Usuario</title>
    </head>
    <body>
        <!--Header-->
        <jsp:include page="/WEB-INF/Paginas/pagina_Base/Header.jsp" /> 
        <section>

            <div class="container p-3  border-3 shadow  mb-1 " id="container_registroU">
                <form class="row g-3">
                    <div class="col-md-3">
                        <img id="logo" src="${pageContext.request.contextPath}/imagen/logo-1.png"  alt="Logo Universidad" >
                    </div> 
                    <div class="col-md-9" style="margin-top: -55px; margin-left: 270px;" >

                        <h1> <b>Registro de Usuarios</b> </h1>
                    </div>

                    <div class="col-md-6">

                        <input type="text" class="form-control" id="nombres" placeholder="Nombres">
                    </div>
                    <div class="col-md-6">
                        <input type="text" class="form-control" id="apellidos" placeholder="Apellidos">
                    </div>
                    <div class="col-6">
                        <input type="number" class="form-control" id="n_identificacion" placeholder="Número de identificación">
                    </div>
                    <div class="col-6">
                        <input type="email" class="form-control" id="correo" placeholder="Correo electrónico">
                    </div>

                    <div class="col-md-6">
                        <label for="inputState" class="form-label">Facultad-Área</label>
                        <select id="facultad_area" class="form-select">
                            <option selected>Seleccione...</option>
                            <option>...</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="inputState" class="form-label">Rol Usuario</label>
                        <select id="rol_usuario" class="form-select">
                            <option selected>Seleccione...</option>
                            <option>...</option>
                        </select>
                    </div>

                    <div class="col-2">
                        <button type="submit" class=" btn btn-primary"id="botonreg1" >Aceptar</button>
                    </div>
                    <div class="col-2">
                        <button type="submit" class=" btn btn-primary" id="botonreg2">Cancelar</button>
                    </div>
                </form>
            </div>       
        </section>

        <!--foot-->
        <jsp:include page="/WEB-INF/Paginas/pagina_Base/Footer.jsp" />    
        <script src="${pageContext.request.contextPath}/Bootstrap/boot_js/bootstrap.bundle.min.js"></script>     
    </body>
</html>
