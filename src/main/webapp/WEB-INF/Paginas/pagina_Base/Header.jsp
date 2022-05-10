<%-- 
    Document   : Header
    Created on : 7/04/2022, 03:40:46 PM
    Author     : OSIADMIN
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title></title>
        <link rel="icon" id="favicon" type="image/png" href="${pageContext.request.contextPath}/imagen/logo-1.png" >
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Bootstrap/Boot_css/bootstrap.min.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Estilos.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/fontawesome/font_css/css/all.css"/>
        
    </head>
    <body>

        <section>
            <nav class="navbar navbar-light fixed-top" id="nav_bar" >
                <div class="container-fluid">
                    <a class="navbar-brand" id="text_nav" href="#">Unisanitas -Agendamiento de Rutas </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="offcanvas offcanvas-start" tabindex="-1"  aria-labelledby="offcanvasNavbarLabel" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" id="offcanvasNavbar" >
                        <div class="col-md-3">
                            <img id="logo_navbar" src="${pageContext.request.contextPath}/imagen/logo-1.png"  alt="Logo Universidad" >
                        </div> 

                        <div class="offcanvas-header">
                            <h5 class="offcanvas-title" id="offcanvasNavbarLabel"> <b>Men� principal</b></h5>
                            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close" id="cerrarbarra"></button> 
                        </div>

                        <div class="offcanvas-body">
                            <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                                <li class="nav-item">
                                    <a class="nav-link active" id="link1" aria-current="page" href="#"><b>Inicio</b></a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" id="link2" href="#">Asignar horarios</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" id="link3" href="#">Reportes</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active"  id="link4" href="#">Crear reservaciones</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link active" id="link5" href="#">Mis reservaciones</a>
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
        </section>    
        <script src="${pageContext.request.contextPath}/Bootstrap/boot_js/bootstrap.bundle.min.js"></script> 
        <script src="${pageContext.request.contextPath}/fontawesome/font_js/js/all.min.js"></script>
    </body>
</html>
