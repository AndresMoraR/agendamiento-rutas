<%-- 
    Document   : Frm_Registro_Usuario
    Created on : 11/04/2022, 10:25:14 AM
    Author     : OSIADMIN
--%>


<!DOCTYPE html>



<title>Registro de Usuario</title>

<!--Header-->
<jsp:include page="/WEB-INF/Paginas/pagina_Base/Header.jsp" /> 

<section>
    <div class="container-fluid  p-3 col-md-7  border-3 shadow  mb-1 " id="container_registroU">

        <form class="row g-3">
            <div class="row">
                <div class="col-md-3 mt-3">
                    <img id="logo" src="${pageContext.request.contextPath}/imagen/logo-1.png"  alt="Logo Universidad" >
                </div> 
                <div class="col-md-9 mt-3 align-self-center">
                    <h1> <b>Registro de Usuarios</b> </h1>
                </div>
            </div> 


            <div class="col-md-6">
                <input type="text" class="form-control" id="nombres" placeholder="Nombres">
            </div>
                
            <div class="col-md-6">
                <input type="text" class="form-control" id="apellidos" placeholder="Apellidos">
            </div>
                
            <div class="col-md-6">
                <input type="text" class="form-control" id="n_identificacion" placeholder="Número de identificación">
            </div>
                
            <div class="col-md-6">
                <input type="email" class="form-control" id="correo" placeholder="Correo electrónico">
            </div>

            <div class="col-md-6">
                <label for="facultad_area" class="form-label">Facultad-Área</label>
                <select id="facultad_area" class="form-select">
                    <option selected>Seleccione...</option>
                    <option>...</option>
                </select>
            </div>
            <!--    
            <div class="col-md-6">
                <label for="inputState" class="form-label">Rol Usuario</label>
                <select id="rol_usuario" class="form-select">
                    <option selected>Seleccione...</option>
                    <option>...</option>
                </select>
            </div>
            -->
            <!-- <div class=" d-flex justify-content-end align-content-end">    
                <div class="row mt-3">
                    <div class="col-md-6">
                        <button type="submit" class=" btn btn-primary" id="botonreg1">Aceptar</button>
                    </div>

                    <div class="col-md-6">
                        <button type="submit" class=" btn btn-primary" id="botonreg2">Cancelar</button>
                    </div>
                </div>
            </div>-->
             <div class=" d-flex justify-content-end align-content-end col-12">    
                <div class="row mt-2">
                    <div>
                        <button type="submit" class=" btn btn-primary col-md-6" id="botonreg1">Aceptar</button>
                        <button type="submit" class=" btn btn-primary col-md-6" id="botonreg2">Cancelar</button>
                    </div>
                </div>
            </div>
        </form>
                
    </div>       
</section>
<!--foot-->
<jsp:include page="/WEB-INF/Paginas/pagina_Base/Footer.jsp"/>    

