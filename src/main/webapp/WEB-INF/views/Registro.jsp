<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <title>Registro</title>    
</head>

  <body>
     <main class="conatiner d-flex justify-content-center align-items-center" style="height: 95vh;">
        <div class="row bg-fondo shadow rounded overflow-hidden" style="background-color: #EAEAEA;">
            <div class="col-12 col-md-6 border">
                <form action="datos.htm?user=user&dni=dni&email=email&pass=pass" class="mt-5 px-3 py-4">
                   <div class="text-center">
                       <a href="inicio.htm"><img src="https://i.imgur.com/NDM3Eub.png" alt=""></a>
                       <!-- <h2>CALZADO TRUJILLO</h2> -->
                       <p class="my-5 fw-bold fs-3">Registrate</p>
                   </div>
                    <div class="mb-2">
                        <input name="user" id="user" type="text" class="form-control py-3" placeholder="Usuario">
                    </div>
                    <div class="mb-2">
                        <input name="dni" id="dni" type="number" class="form-control py-3" placeholder="DNI">
                    </div>
                    <div class="mb-2">
                        <input name="email" id="email" type="email" class="form-control py-3" placeholder="Correo Electrónico">
                    </div>
                    <div class="mb-2">
                        <input name="pass" id="pass" type="password" class="form-control py-3" placeholder="Contraseña">
                    </div> <div class="mb-3">
                        <input type="password" class="form-control py-3" placeholder="Repetir contraseña">
                    </div>
                    <div class="mb-3">
                        <button class="btn btn-danger w-100">Registrarse</button>
                    </div>
                    <a href="login.htm" class="text-black nav-link">¿Ya tienes cuentas? !Inicia Sesión¡</a>
                </form>
            </div>
            <div class="col-12 col-md-6 border d-none d-md-block p-0">

                   <img src="https://i.imgur.com/PBQFPEp.jpg" alt="" class="w-100 h-100">

            </div>
        </div>
     </main>
  </body>
</html>