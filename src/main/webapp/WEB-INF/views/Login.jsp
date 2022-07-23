<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <title>Login</title>    
</head>

  <body>

     <main class="conatiner d-flex justify-content-center align-items-center" style="height: 95vh;">
        <div class="row bg-fondo shadow rounded overflow-hidden" style="background-color: #EAEAEA;">
            <div class="col-12 col-md-6 border">
                <form action="panel.htm?user=user&pass=pass" class="mt-5 px-3 py-4">
                   <div class="text-center">
                       <a href="inicio.htm"><img src="https://i.imgur.com/NDM3Eub.png" alt=""></a>
                       <!-- <h2>CALZADO TRUJILLO</h2> -->
                       <p class="my-5 fw-bold fs-3">Iniciar Sesión</p>
                   </div>
                    <div class="mb-5">
                        <label for="user" class="form-label fw-bold fs-5">Correo</label>
                        <input id="user" name="user" type="text" class="form-control py-3" placeholder="Ingresa tu nombre">
                    </div>
                    <div class="mb-5">
                        <label for="pass" class="form-label fw-bold fs-5">Contraseña</label>
                        <input id="pass" name="pass" type="password" class="form-control py-3" placeholder="Ingresa tu contraseña">
                    </div>
                    <div class="mb-3">
                        <button class="btn btn-danger w-100">Iniciar sesión</button>
                    </div>
                    <a href="registro.htm" class="text-black nav-link">¿Aún no tienes cuentas? !Registrate¡</a>
                </form>
            </div>
            <div class="col-12 col-md-6 border d-none d-md-block p-0">

                   <img src="https://i.imgur.com/PBQFPEp.jpg" alt="" class="w-100 h-100">

            </div>
        </div>
     </main>
  </body>

</html>