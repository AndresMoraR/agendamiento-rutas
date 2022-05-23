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
            <nav class="navbar navbar-light" id="nav_bar" >
                <div class="container-fluid">
                    <label id="text_nav">Unisanitas - Agendamiento de Rutas</label>
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span> 
                    </button>

                    <div class="offcanvas offcanvas-start" tabindex="-1"  aria-labelledby="offcanvasNavbarLabel" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" id="offcanvasNavbar" >
                        <div class="col-md-3">
                            <img id="logo_navbar" src="${pageContext.request.contextPath}/imagen/logo.png"  alt="Logo Universidad" >
                        </div> 

                        <div class="offcanvas-header">
                            <h5 class="offcanvas-title" id="offcanvasNavbarLabel"> <b>Menú principal</b></h5>
                            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close" id="cerrarbarra"></button> 
                        </div>

                        <div class="offcanvas-body">
                            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                                <li class="nav-item">
                                    <a class="nav-link active link_menu" id="link1" aria-current="page" href="#"><b>Inicio</b></a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active link_menu" id="link2" href="#">Usuarios</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active link_menu" id="link3" href="#">Aministrar Cupos</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active link_menu" id="link3" href="#">Aministrar Horarios</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active link_menu" id="link3" href="#">Aministrar Rutas</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active link_menu"  id="link4" href="#">Crear Reservaciones</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active link_menu" id="link5" href="#">Mis Reservaciones</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active link_menu" id="link5" href="#">Reportes</a>
                                </li>

                            </ul>
                            <!-- codigo para un menu interno y un campo de busqueda -->
                            <%--
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Dropdown
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="offcanvasNavbarDropdown">
                                    <li><a class="dropdown-item" href="#">Asignar horarios</a></li>
                                    <li><a class="dropdown-item" href="#">Administrar horarios</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>
                        </ul>
                            --%>
                            <%--
                            <form class="d-flex">
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success" type="submit">Search</button>
                            </form>
                            --%>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
    </body>
    
</html>
