<%-- 
    Document   : Frm_abrir_cupo
    Created on : 5/05/2022, 12:35:59 PM
    Author     : OSIADMIN
--%>


<title>Abrir Cupos</title>

<jsp:include page="/WEB-INF/Paginas/pagina_Base/Header.jsp"/>

<section>
    
        <div class=" breadcrumb p-3 mt-5">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"> <a href="#">Inicio</a></li>
                <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/WEB-INF/Paginas/Vista_Usuario/Frm_Admin_cupo.jsp">Administrar Cupos</a></li>
                <li class="breadcrumb-item active" aria-current="page">Abrir Cupos</li>
            </ol>
        </nav>
    </div>

    <div class="container-fluid p-3 col-md-6 mt-1  border-3 shadow  mb-1 " id="container_registroU">
        
        <form class="row g-3">
            
            <div class="row ">  
                <div class="col-md-4 mt-3">
                    <img id="logo" src="${pageContext.request.contextPath}/imagen/logo-1.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-8 align-self-center"   style="/*margin-top: -55px; margin-left: 270px;*/ " >
                    <h1> <b>Abrir Cupos</b> </h1>
                </div>
            </div>
                
            <div class="row">
                <div class="col-md-6  ">
                    <label for="cuposfuncionario" class="col-form-label">Cupos Funcionarios</label>
                    <input type="number" class="form-control" id="nombres" placeholder="funcionarios">
                </div>

                <div class="col-md-6  ">
                    <label for="cuposestudiantes" class="col-form-label">Cupos Estudiantes</label>
                    <input type="number" class="form-control" id="apellidos" placeholder="estudiantes">
                </div>

                <div class="col-md-6  ">
                    <label for="cuposextra" class="col-form-label">Cupos Extra</label>
                    <input type="number" class="form-control" id="n_identificacion" placeholder="extra">
                </div>

                <div class="col-md-6  ">
                    <label for="toralcupos" class="col-form-label"> Total Cupos </label>
                    <input type="number" class="form-control" id="correo" placeholder="total">
                </div>
            </div>  
            
                <!-- <div class=" d-flex justify-content-end align-content-end"> 
                <div class="row mt-3">
                    <div class="col-6">
                        <button type="submit" class=" btn btn-primary" id="botonreg1">Crear</button>
                    </div>

                    <div class="col-6">
                        <button type="submit" class=" btn btn-primary" id="botonreg2">Cancelar</button>
                    </div>
                </div>
            </div>  -->
                <div class=" d-flex justify-content-end align-content-end col-12"> 
                <div class="row mt-3">
                    <div class="">
                        <button type="submit" class=" btn btn-primary col-6" id="botonreg1">Crear</button>
                    

                    
                        <button type="submit" class=" btn btn-primary col-6" id="botonreg2">Cancelar</button>
                    </div>
                </div>
            </div>
            
        </form>
        
    </div> 

</section> 
<jsp:include page="/WEB-INF/Paginas/pagina_Base/Footer.jsp"/> 

