<%-- 
    Document   : Header
    Created on : 7/04/2022, 03:40:46 PM
    Author     : OSIADMIN
--%>
<%@page session="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">     
        <link rel="icon" id="favicon" type="image/png" href="${pageContext.request.contextPath}/imagen/logo.png" >
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/Boot_css/bootstrap.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/Boot_css/bootstrap-select.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Estilos.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/fontawesome/font_css/css/all.css"/>            
        <script type="text/javascript" src="${pageContext.request.contextPath}/Bootstrap/boot_js/bootstrap.bundle.min.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath}/fontawesome/font_js/js/all.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/Bootstrap/boot_js/jquery-3.6.0.min.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath}/Bootstrap/boot_js/popper.min.js"></script> 
        <script type="text/javascript" src="${pageContext.request.contextPath}/Bootstrap/boot_js/bootstrap-select.min.js"></script>
        <script type="text/javascript">
            $.fn.selectpicker.Constructor.BootstrapVersion = '4';
        </script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/frm_login.js"></script>
        <script type="text/javascript">
            var path_url = "${pageContext.request.contextPath}";            
        </script>
        <title>Rutas</title>
    </head>
    <body style="background-image: url('${pageContext.request.contextPath}/imagen/fondo2.jpg'); background-repeat: no-repeat; background-size: auto;">

        <header>
            <nav class="navbar navbar-light color-foot-head" id="nav_bar" >
                <div class="container-fluid">
                    <label id="text_nav" class="text-title-menu-nav">
                        Unisanitas - Agendamiento de Rutas 
                        <% 
                            if (session.getAttribute("id") != null) {
                                out.println("<br><b>Usuario: "+session.getAttribute("nombre_user").toString()+" - "+session.getAttribute("id").toString()+"</b>");                                
                            } 
                        %>
                    </label>
                    <c:if test="${not empty rol}">
                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                            <span class="navbar-toggler-icon"></span> 
                        </button>
                    </c:if>

                    <div class="offcanvas offcanvas-start" tabindex="-1"  aria-labelledby="offcanvasNavbarLabel" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" id="offcanvasNavbar" >
                        <div class="col-md-12 color-foot-head">
                            <img id="logo_navbar" src="${pageContext.request.contextPath}/imagen/logo.png"  alt="Logo Universidad" >
                        </div> 

                        <div class="offcanvas-header color-foot-head">
                            <h5 class="offcanvas-title text-title-menu-nav" id="offcanvasNavbarLabel"> <b>Menú principal</b></h5>
                            <button type="button" class="btn-close text-reset text-title-menu-nav" data-bs-dismiss="offcanvas" aria-label="Close" id="cerrarbarra"></button> 
                        </div>

                        <div class="offcanvas-body container-fluid-form">
                            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                                <li class="nav-item">
                                    <span><a class="nav-link active link_menu" id="link1" aria-current="page" href="${pageContext.request.contextPath}/home"><b><i class="fas fa-home"></i> Inicio</b></a></span>
                                </li>
                                <hr>                                
                                <c:if test="${rol == '4'}">
                                    <li class="nav-item">
                                        <span><a class="nav-link active link_menu" id="link2" href="${pageContext.request.contextPath}/user"><i class="fas fa-user-circle"></i> Usuarios</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <c:if test="${rol == '4'}">
                                    <li class="nav-item">	
                                        <span><a class="nav-link active link_menu" id="link3" href="${pageContext.request.contextPath}/cupo"><i class="fas fa-clipboard-list"></i> Cupos</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <c:if test="${rol == '4'}">
                                    <li class="nav-item">
                                        <span><a class="nav-link active link_menu" id="link4" href="${pageContext.request.contextPath}/horario"><i class="fas fa-clock"></i> Horarios</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <c:if test="${rol == '4'}">
                                    <li class="nav-item">	
                                        <span><a class="nav-link active link_menu" id="link5" href="${pageContext.request.contextPath}/ruta"><i class="fas fa-bus"></i> Rutas</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <c:if test="${rol == '4'}">
                                    <li class="nav-item">
                                        <span><a class="nav-link active link_menu" id="link6" href="${pageContext.request.contextPath}/confireserva"><i class="fas fa-calendar-alt"></i> Confirmar Reservaciones</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <c:if test="${rol == '4' or rol == '2' or rol == '1'}">
                                    <li class="nav-item">
                                        <span><a class="nav-link active link_menu" id="link7" href="${pageContext.request.contextPath}/reservar"><i class="fas fa-calendar-alt"></i> Reservaciones</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <c:if test="${rol == '4' or rol == '2' or rol == '1'}">
                                    <li class="nav-item">
                                        <span><a class="nav-link active link_menu" id="link8" href="${pageContext.request.contextPath}/cnsreserva"><i class="fas fa-calendar-alt"></i> Mis Reservas</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <c:if test="${rol == '4'}">
                                    <li class="nav-item">
                                        <span><a class="nav-link active link_menu" id="link9" href="${pageContext.request.contextPath}/bloque"><i class="fas fa-calendar-alt"></i> Bloques</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <c:if test="${rol == '4' or rol == '2' or rol == '1'}">
                                    <li class="nav-item">
                                        <span><a class="nav-link active link_menu" id="link10" href="${pageContext.request.contextPath}/sancion"><i class="fa-solid fa-ban"></i> Sanciones</a></span>
                                    </li>
                                    <hr>
                                </c:if>
                                <li class="nav-item">
                                    <span><a class="nav-link active link_menu" id="link11" href="${pageContext.request.contextPath}/login"><i class="fa fa-sign-out"></i> Salir</a></span>
                                </li>
                                <hr>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
    </body>

</html>
