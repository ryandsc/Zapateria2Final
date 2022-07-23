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
      <div class="container">
          <h1 class="p-3 bg-primary text-center my-4"> <img src="Supermercado.webp" alt="" width="50"> Cesta de Ordenes</h1>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Foto del Producto</th>
                        <th>Descripción</th>
                        <th>Cantidad</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${model.cesta}" var="cesta">
                	<tr>
                		<td scope="row"><img src='<c:out value="${cesta.url}"></c:out>' alt="" width="100"></td>
                		<td>
                            <div>
                                <small class="d-block">ID Orden: <span><c:out value="${cesta.id_cesta}"/></span></small>
                                <small class="d-block">Producto: <span>Zapato</span></small>
                                <small class="d-block">Nombre: <span><c:out value="${cesta.nombre}"/></span></small>
                                
                            </div>
                        </td>
                        <td>
                            <div class="btn-group">
                                <input type="number" value="1"  id="" class=" btn border cantidad" >
                            </div>  
                        </td> 
                        <td>
                          <p>S/ <span><c:out value="${cesta.precio}"/></span></p>
                          
                        </td>                                               
                	</tr>
                
                </c:forEach>
                
                    
                   
                </tbody>
            </table>
        </div>
        <div class="detalles text-end mt-3">
            <div class="total ">
                <label for="">Total a pagar</label>
                <input type="number" value="796.4" step="any" class="mx-2" disabled>
            </div>
        </div>
        <div class="adicionales text-end mt-3">
            <a href="vaciarcesta.htm"  class="btn btn-secondary">Vaciar Carrito</a>
            <!-- <button type="button" class="btn btn-primary">Confirmar Pago</button> -->
            <a href="boleta.htm" class="btn btn-primary">Confirmar Pago</a>
        </div>
        <p class="text-center mt-3">
            <small>Recuerda que hay datos que no puedes modificar por cuestiones de seguridad, si tuviste algún inconveniente con esos datos, por favor contáctate con el administrador por correo electrónico: seguracampos9@gmail.com
            </small>
        </p>

      </div>
      	<!-- Footer -->
    <%@ include file="/WEB-INF/views/footer.jsp" %>

      <!-- Modal Eliminar-->
        <div class="modal fade" id="eliminar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-danger text-white">
                <h5 class="modal-title" id="exampleModalLabel">Eliminar cesta</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center">
                    <h3>¿Estás seguro de vaciar toda la cesta?</h3>
                    <p class="text-primary h4">Esta acción no se puede deshacer</p>
                    <button type="button" class="btn btn-danger my-3"  data-bs-dismiss="modal">Eliminar</button>
                </div>
               
            </div>
            </div>
        </div>

  </body>
</html>