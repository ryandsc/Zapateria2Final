<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    
    <link rel="stylesheet"  href="css/bootstrap.min.css">
    <link rel="stylesheet"  href="estilos.css">
    
    <title>Home</title>
</head>

<body>
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand " href="inicio.htm"><img src="https://i.imgur.com/NDM3Eub.png" alt=""></a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="login.htm">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="producto.htm">Catálogo</a>
        </li>
        <li class="nav-item">
          <a class="nav-link ">Ubicanos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link ">Contactanos</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

	<div class="container">
		

        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="https://i.imgur.com/qYDHKbV.jpg" class="d-block w-100" alt="..." id="imgcar1">
              </div>
              <div class="carousel-item">
                <img src="https://i.imgur.com/qYDHKbV.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="https://i.imgur.com/qYDHKbV.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
            
        </div>
        
        <div class="card ">
        <br>
        	<div class="card text-center ">
                <div class="row">
                	<br>
                    <img src="https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/zign-zapatos-color-claro-cordones-1632741860.jpeg?crop=1.00xw:0.463xh;0,0.383xh&resize=480:*" style="height: 400px; width: 635px; padding-top: 20px;" class="rounded float-start imgcalzado" alt="...">
                    <img src="https://media.revistagq.com/photos/5fd1fdf7dfba54732a24bc13/16:9/w_1280,c_limit/zapatos%20de%20vestir.jpg*" style="height: 400px; width: 635px; padding-top: 20px;" class="rounded float-end imgcalzado" alt="...">
                
                </div>
                <div class="row row-cols-md-6 ">
                	<br>
                    <img src="https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2021/10/zapatos-2517437.jpg?itok=72-prTqD" style="height: 400px; width: 635px; padding-top: 20px; padding-bottom: 20px;" class="rounded float-start imgcalzado" alt="...">
                    <img src="https://i.pinimg.com/736x/bd/99/c7/bd99c763019d36d85b592d206119acbc.jpg" style="height: 400px; width: 635px; padding-top: 20px; padding-bottom: 20px;" class="rounded float-end imgcalzado" alt="...">
                    <br>
                </div>
                <div class="saltourgente">
                </div>
            </div>
        </div>
	</div>
	<!-- Footer -->
    <%@ include file="/WEB-INF/views/footer.jsp" %>
        
    <!-- Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	
    
</body>

</html>