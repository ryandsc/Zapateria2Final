<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/incluido.jsp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    
<title>Catalogo</title>
</head>
<body>
	<!-- Navbar -->
    <%@ include file="/WEB-INF/views/navbar.jsp" %>
    
    <div class="container">
      <br>
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="inicio.htm">Inicio</a></li>
          <li class="breadcrumb-item active" aria-current="page">Catálogo</li>
        </ol>
      </nav>
			
      
      <h2>
        <strong>
          CATÁLOGO DE PRODUCTOS
        </strong>
      </h2>
      <br>
      
      <div class="row row-cols-1 row-cols-md-5 g-4">
      <c:forEach items="${model.productos}" var="prod">

        
          <div class="col">
            <div class="card">
              <img src='<c:out value="${prod.url}"></c:out>' class="card-img-top" alt="" style="width: 236px;height: 200px;">
              <div class="card-body">
                <h5 class="card-title"><c:out value="${prod.nombre}"/></h5>
                <p class="card-text"><c:out value="${prod.categoria}"/></p>
                <p style="color: green; text-align: end;">S/. <c:out value="${prod.precio}"/></p>

                
                  <a   href="idproducto.htm?id=${prod.id}" class="btn btn-primary">Ver producto</a>
                
              </div>
            </div>
          </div>
       

      </c:forEach>
      </div>
    </div>
    
	
	
	<!-- Footer -->
    <%@ include file="/WEB-INF/views/footer.jsp" %>
        
    <!-- Bootstrap Bundle with Popper -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
	
	
	
</body>
</html>