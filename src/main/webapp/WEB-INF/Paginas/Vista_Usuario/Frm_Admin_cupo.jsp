<%-- 
    Document   : Frm_Admin_cupo
    Created on : 5/05/2022, 08:59:18 AM
    Author     : OSIADMIN
--%>

<title>Administrar Cupos</title>

<jsp:include page="/WEB-INF/Paginas/pagina_Base/Header.jsp"/>


<section>

    <div class="container-fluid  p-3  border-3 shadow  mb-1 " id="container_registroU">

        <form>

            <div class="row"> 
                <div class="col-md-3">
                    <img id="logo" src="${pageContext.request.contextPath}/imagen/logo-1.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-9" style="margin-top: -55px; margin-left: 270px;" >
                    <h1> <b>Administrar Cupos</b> </h1>
                </div>
            </div>

            <div class=" align-self-end "> 
                <h3> <b>Abrir Cupos </b> </h3>
                <i class="fa-solid fa-plus"></i>
            </div> 
            <div class="table-responsive">
                <table class="table">

                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Cupos Funcionarios</th>
                            <th scope="col">Cupos Estudiantes</th>
                            <th scope="col">Cupos Extra</th>
                            <th scope="col">Total Cupos</th>
                            <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                            <td>@fat</td>
                            <td>@fat</td>
                        </tr>

                    </tbody>
                </table> 
            </div>
            <!--<div class="col-2">
                <button type="submit" class=" btn btn-primary" id="botonreg1">Aceptar</button>
            </div>-->
            <div class="row">

                <div class="col-md-3">
                    <button type="submit" class=" btn btn-primary" id="botonreg2">Cerrar</button>
                </div>
            </div>    
        </form>
    </div>

</section>


<jsp:include page="/WEB-INF/Paginas/pagina_Base/Footer.jsp"/> 

