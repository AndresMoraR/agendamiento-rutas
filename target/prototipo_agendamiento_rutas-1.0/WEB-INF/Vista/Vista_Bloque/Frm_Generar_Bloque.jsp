<%-- 
    Document   : Frm_generar_bloque
    Created on : 2/05/2022, 08:34:46 AM
    Author     : OSIADMIN
--%>


<!DOCTYPE html>
<title>Generar Bloque</title>

<jsp:include page="/WEB-INF/Paginas/pagina_Base/Header.jsp" /> 

<section>
    <div class="container-fluid  p-3  border-3 shadow  mb-1 " id="container_registroU">
        <form class="row g-3">
            <div class="col-md-3">
                <img id="logo" src="${pageContext.request.contextPath}/imagen/logo-1.png"  alt="Logo Universidad" >
            </div> 
            <div class="col-md-9" style="margin-top: -55px; margin-left: 270px;" >

                <h1> <b>Generar Bloque</b> </h1>
            </div>
            <div class="btn-group"  role="group" aria-label="Basic example">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Lunes</button>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" >Martes</button>
                <button type="button" class="btn btn-primary" >Miércoles</button>
                <button type="button" class="btn btn-primary" >Jueves</button>
                <button type="button" class="btn btn-primary" >Viernes</button>
                <button type="button" class="btn btn-primary">Sábado</button>
            </div>
            <div>
                <!-- Button trigger modal 
                
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                  Launch demo modal
                </button>
                
                -->

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Horarios y Cupos </h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" checked>
                                    <label class="form-check-label" for="flexCheckDefault">
                                        5:50 am
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                    <label class="form-check-label" for="flexCheckChecked">
                                        6:50 am
                                    </label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                    <label class="form-check-label" for="flexCheckChecked">
                                        16:50 pm
                                    </label>
                                </div>

                                <div class="">
                                    <label>Cupo Funcionarios</label>
                                    <input type="text" class="form-control"  placeholder="">
                                </div>

                                <div class="">
                                    <label>Cupo Estudiantes</label>
                                    <input type="text" class="form-control"  placeholder="">
                                </div>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-primary">Guardar</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-2">
                <button type="submit" class=" btn btn-primary" id="botonreg1">Aceptar</button>
            </div>
            <div class="col-2">
                <button type="submit" class=" btn btn-primary" id="botonreg2">Cancelar</button>
            </div>
        </form>
    </div>       
</section>
<jsp:include page="/WEB-INF/Paginas/pagina_Base/Footer.jsp"/> 