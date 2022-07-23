<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/incluido.jsp" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="es">
    <style>
     :root{
         --fondo  : #2F5496;
     }   
    .bg-fondo{
        background-color: var(--fondo);
    }
    .perfil{
        width: 200px;
        height: 200px;
        object-fit: cover;
        cursor: pointer;;
    }
    .lista{
        list-style: none;
        padding: 0;
    }
    .flotante{
        position: fixed;
        height: 100vh;
        /* width: 40vh; */
        width: 0;
        overflow: hidden;
        visibility: hidden;
        opacity: 0;
        transition: all .5s ease-in-out;
    }
    .apareceMenu{
        width: 40vh;
        /* width: 0; */
        visibility: visible;
        opacity: 1;
    }
    .mensajes{
        height: 60vh;
        overflow-y: auto;
        
        /* border: #2F5496 1px solid; */
    }
    @media (min-width: 768px) {
        .flotante{
            position: initial;
            width: 40vh;
            visibility: visible;
            opacity: 1;
        }
        
    }
    .fa-solid{
        cursor: pointer;
    }
</style>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <title>Panel</title>    
</head>

<body>
	<!-- Navbar -->
    <%@ include file="/WEB-INF/views/navbar.jsp" %>
     <main class="d-flex">
         <div class="flotante p-2 bg-fondo text-white text-center pt-3" id="menuLateral">
             <div class="colores mb-5 text-end px-2">
                 <button class="btn btn-primary border color" data-color="#007bff"></button>
                 <button class="btn btn-success border color" data-color="#28a745"></button>
                 <button class="btn btn-warning border color" data-color="#ffc107"></button>
             </div>
            <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png" class="perfil rounded-circle" id="img-perfil">
            <input type="file"  id="file-img" class="d-none">
            <ul class="mt-3 lista">
            	<c:out value="${model.cuenta.user}"></c:out>
            <br>
            	<c:out value="${model.cuenta.dni}"></c:out>
            <br>
            	<c:out value="${model.cuenta.email}"></c:out>

            </ul>
			<button class="btn btn-primary d-block mb-2 w-100 border" data-bs-toggle="modal" data-bs-target="#mostrarPedidos" id="btn-pedidos" >Revisa tus pedidos hechos <i class="fa-brands fa-dropbox px-2"></i></button>
            
            
            </div>
         <div class="container text-center pt-4">
                <div class="text-end fw-bold fs-3 d-md-none">
                    <i class="fa-solid fa-bars" id="openMenu"></i>
                </div>
                <h2>Hola <c:out value="${model.cuenta.user}"></c:out></h2>
                <small>Desde aquí revisa tu cuenta, tus pedidos y muchas cosas más</small>
                <br>
                <br>
                <img alt="" src="https://i.imgur.com/FHBrQ60.jpg" style="height: 500px; width: 600px;">
                <br>
                <!-- <hr> -->
                <div class="border w-100 mt-4"></div>
                <div class="text-end">
                    <p class="text-primary">
                        Último pedido realizado: <span>Lunes 11 de julio</span> 
                    </p>
                </div>
                
                           
                
         </div>
     </main>
                  	<!-- Footer -->
    <%@ include file="/WEB-INF/views/footer.jsp" %>
     <section>
         <!-- Modal Cambiar Datos -->
         <div class="modal fade" id="openModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header bg-fondo text-white">
                  <h5 class="modal-title" id="exampleModalLabel">Modificación de datos de usuario</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <form action="" method="post" id="form-modificar">
                      <div class="mb-3">
                          <label for="" class="form-label">Nombre de usuario actual<span id="usuario-span"></span></label>
                          <input type="text" class="form-control" placeholder="Nuevo nombre de usuario" id="input-usuario">
                      </div>
                      <div class="mb-3">
                        <label for="" class="form-label">Nueva Contraseña</label>
                      <input type="password" class="form-control" placeholder="Nuevo contraseña">
                     </div>
                     <div class="mb-3">
                        <label for="" class="form-label">Repita Contraseña</label>
                      <input type="password" class="form-control" placeholder="Repita contraseña">
                    </div>
			  
                    <div class="mb-3">
                        <label for="" class="form-label">Ubicación actual</label>
                          <select class="form-select" name="" id="">
                            <option>Trujillo</option>
                            <option>Lima</option>
                            <option>Huancayo</option>
                          </select>
                    </div>
                    <button type="input" class="btn btn-primary d-block mx-auto mb-3" ><i class="fa-solid fa-floppy-disk fs-4"></i></button>
                  </form>
                </div>
                <div class="modal-footer">
                  <small class="text-start mt-2">
                      Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sit esse est necessitatibus aut, deserunt voluptatibus, aperiam ipsa in modi n!.
                  </small>
                </div>
              </div>
            </div>
          </div>
          
           <!-- Modal Darse de Baja -->
         <div class="modal fade" id="darseBaja" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header bg-danger text-white">
                  <h5 class="modal-title" id="exampleModalLabel">Darse de baja</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <h2>Juan Daniel Perez Tucto</h2>
                    <h2 class="h1 my-4">Estás seguro de esta opción?</h2>
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Facere, aspernatur qui aliquid fugiat minus atque laudantium? Reiciendis laboriosam maxime nesciunt neque quidem itaque quaerat quod aut rem ab! Laudantium, sit.</p>
                     <button class="btn btn-danger">Darse de baja</button>
                </div>
               
              </div>
            </div>
          </div>
          
           <!-- Modal Pedidos-->
         <div class="modal fade" id="mostrarPedidos" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
              <div class="modal-content">
                <div class="modal-header bg-fondo text-white">
                  <h5 class="modal-title" id="exampleModalLabel">Revisión de Pedidos</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <h2 class="my-3">PEDIDOS</h2>
                    <details>
                    
                    <summary class="text-primary">
                       Lunes 11 de  julio de 2022
                       <hr>
                    </summary>
                        <div class="text-center border mb-4 p-2">
                            
                            <p>
                                Zapáto 4
                            </p>
                            <p>S/. 599.99</p>
                        </div>
                </details>
                <details >
                    
                    <summary class="text-primary">
                       Lunes 11 de  julio de 2022
                       <hr>

                    </summary>
                        <div class="text-center border mb-4 p-2">
                            
                            <p>
                                Zapátos de mujer color azul marino x3
                            </p>
                            <p>S/. 59.99</p>
                        </div>
                </details>
                <details >
                    
                    <summary class="text-primary">
                       Lunes 11 de  julio de 2022
                       <hr>

                    </summary>
                        <div class="text-center border mb-4 p-2">
                            
                            <p>
                                Zapáto 5
                            </p>
                            <p>S/. 199.99</p>
                        </div>
                </details>
                <details >
                    
                    <summary class="text-primary">
                       Lunes 11 de  julio de 2022
                       <hr>

                    </summary>
                        <div class="text-center border mb-4 p-2">
                            
                            <p>
                                Tacon de Dama Exclusivo
                            </p>
                            <p>S/. 199.99</p>
                        </div>
                </details>    
                          
                </div>
            </div>
        </div>

           <script> 
         Menu();
         CambiarColor();
         
         function Menu() {
             
             document.getElementById("openMenu").addEventListener("click",function(){
                document.getElementById("menuLateral").classList.toggle("apareceMenu");
             })
         }

         function CambiarColor(){
             
             document.addEventListener("click",(e) => {
                const boton = e.target;
                if(boton.classList.contains("color")){
                    document.querySelector("html").style.setProperty('--fondo', boton.getAttribute("data-color"));
    
                }
             })
         }
         simularCambio();
         function simularCambio(){
             document.getElementById("btn-modificar").addEventListener("click", function(){
                 const usuario = document.getElementById("usuario").textContent;
                //  console.log('usuario :>> ', usuario);
                 const usuarioSpan = document.getElementById("usuario-span");
                 usuarioSpan.textContent= " "+usuario;

             })

             document.getElementById("form-modificar").addEventListener("submit",function(e){
                 let form = e.target;
                 e.preventDefault();
                 let nuevoUsuario = form.querySelector("#input-usuario").value;
                 usuario.textContent = nuevoUsuario;
                 document.querySelector(".btn-close").click();

             })

             
         }
         subirImg();
         function subirImg(){
            const dispadorImg = document.querySelector("#img-perfil");
            const fileImg = document.querySelector("#file-img");
            dispadorImg.addEventListener("click",function(){
                fileImg.click();
                fileImg.addEventListener("change",function(e){
                    let nuevaImg = URL.createObjectURL(e.target.files[0]);
                    console.log('nuevaImg :>> ', nuevaImg);
                    dispadorImg.src = nuevaImg;
                })
            })
         }
     </script>


        
    <!-- Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	
    
</body>

</html>
