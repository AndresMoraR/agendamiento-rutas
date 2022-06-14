<%-- 
    Document   : Header
    Created on : 7/04/2022, 03:40:46 PM
    Author     : OSIADMIN
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">     
        <link rel="icon" id="favicon" type="image/png" href="${pageContext.request.contextPath}/imagen/logo.png" >
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/Boot_css/bootstrap.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Estilos.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/fontawesome/font_css/css/all.css"/>            
        <script src="${pageContext.request.contextPath}/Bootstrap/boot_js/bootstrap.bundle.min.js"></script> 
        <script src="${pageContext.request.contextPath}/fontawesome/font_js/js/all.min.js"></script>
        <title>Rutas</title>
    </head>
    <body style="background-image: url('${pageContext.request.contextPath}/imagen/fondo2.jpg'); background-repeat: no-repeat; background-size: auto;">

        <header>
            <nav class="navbar navbar-light color-foot-head" id="nav_bar" >
                <div class="container-fluid">
                    <label id="text_nav" class="text-title-menu-nav">Unisanitas - Agendamiento de Rutas</label>
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span> 
                    </button>

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
                                    <span><a class="nav-link active link_menu" id="link1" aria-current="page" href="${pageContext.request.contextPath}/Home"><b><i class="fas fa-home"></i> Inicio</b></a></span>
                                </li>
                                <hr>
                                <li class="nav-item">
                                    <span><a class="nav-link active link_menu" id="link2" href="${pageContext.request.contextPath}/User"><i class="fas fa-user-circle"></i> Usuarios</a></span>
                                </li>
                                <hr>
                                <li class="nav-item">	
                                    <span><a class="nav-link active link_menu" id="link3" href="${pageContext.request.contextPath}/Cupo"><i class="fas fa-clipboard-list"></i> Cupos</a></span>
                                </li>
                                <hr>
                                <li class="nav-item">
                                    <span><a class="nav-link active link_menu" id="link4" href="${pageContext.request.contextPath}/Horario"><i class="fas fa-clock"></i> Horarios</a></span>
                                </li>
                                <hr>
                                <li class="nav-item">	
                                    <span><a class="nav-link active link_menu" id="link5" href="${pageContext.request.contextPath}/Ruta"><i class="fas fa-bus"></i> Rutas</a></span>
                                </li>
                                <hr>
                                <li class="nav-item">
                                    <span><a class="nav-link active link_menu" id="link6" href="${pageContext.request.contextPath}/Reservar"><i class="fas fa-calendar-alt"></i> Reservaciones</a></span>
                                </li>
                                <hr>
                                <li class="nav-item">
                                    <span><a class="nav-link active link_menu" id="link7" href="${pageContext.request.contextPath}/CnsReserva"><i class="fas fa-calendar-alt"></i> Mis Reservas</a></span>
                                </li>
                                <hr>
                                <li class="nav-item">
                                    <span><a class="nav-link active link_menu" id="link8" href="${pageContext.request.contextPath}/Bloque"><i class="fas fa-calendar-alt"></i> Bloques</a></span>
                                </li>
                                <hr>
                                <li class="nav-item">
                                    <span><a class="nav-link active link_menu" id="link9" href="${pageContext.request.contextPath}/Sancion"><i class="fa-solid fa-ban"></i> Sanciones</a></span>
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
