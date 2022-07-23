<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/incluido.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
 
<title>Insert title here</title>
</head>
  <body>
  	<!-- Navbar -->
    <%@ include file="/WEB-INF/views/navbar.jsp" %>
    <div class="container my-3">
        <h1 class="p-3 bg-primary text-center my-4"> <img src="check.png" alt="" width="50" class="mx-2">Facturación</h1>   
        <div class="mt-3">
            <p class="fw-bold">Datos de facturación</p>
            <div class="border border-primary rounded-2 d-flex justify-content-around   ">
                <div class="p-2 w-75">
                    <div class="my-3 row text-center">
                        <div class="col-6">
                            <p>Nombre Completos:</p>
                            <p>DNI:</p>
                            <p>Teléfeno:</p>
                            <p>Se envía a:</p>
                            <p>Distrito:</p>
                            <p>Tipo de envío:</p>
                        </div>
                        <div class="col-6 text-primary">
                            <p>Fredy Daniel Rosa Bazán</p>
                            <p>32457854</p>
                            <p>Av. Húsares de Junín</p>
                            <p>15933</p>
                            <p>Trujillo - Trujillo</p>
                            <p>Normal</p>
                        </div>
                    </div>               
                </div>
            </div>
        </div>
        <div class="bg-primary mt-3 p-2 rounded-2 text-white d-flex align-items-center justify-content-center">
            <p>Se forma de pago sera: <span class="fw-bold fs-4"> Contraentrega</span></p>
        </div>
        <div class="p-2 w-75">
            <div class="my-3 row text-center">
                <div class="col-6">
                    <p>Fecha de pedido:</p>
                </div>
                <div class="col-6">
                    <p>20/07/2022</p>
                </div>
            </div>               
        </div>
        <p class="text-center mt-2">
            <small>
                Por el momento sólo disponemos contraentrega, de forma presencial y pago con cuotas con dispositivos autorizados de forma presencial. Pronto tendremos nuevas modalidades de pagos para tu comodidad.
            </small>
        </p>
        <div class="text-end">
            <button class="btn btn-primary">Ir a Inicio</button>
            <button class="btn btn-primary">Ir a catálogo</button>
        </div>

    </div>
      	<!-- Footer -->
    <%@ include file="/WEB-INF/views/footer.jsp" %>
  </body>
</html>