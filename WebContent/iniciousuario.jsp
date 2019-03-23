<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Bienvenido</title>
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	
	<link rel="shortcut icon" href="imagenes/flat.png">
	<link rel="stylesheet" type="text/css" href="css/estiloiniciousuario.css">

	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
	<meta name="viewport" content="with=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="css/boot/bootstrap.css">


</head>
<body>


<nav class="navbar navbar-expand-sm ">
  
	  <a class="navbar-brand pl-5" href="iniciousuario.jsp">
	    <img id="logo" src="imagenes/AQUAlab@3x.png" alt="logo" >
	  </a>
  
  	<ul class="navbar-nav  ">
  	
	  	<li class="nav-item pl-5">
	     	 <a class="nav-link menu  " href="vennuevoanalisis.jsp"><span>Nuevo Análisis</span></a>
	   		</li>
    	
   		<li class="nav-item pl-5">
     	 <a class="nav-link menu" href="ventanahistorico.jsp">Historial</a>
   		</li>
    	<li class="nav-item pl-5">
     	 <a class="nav-link menu" href="ProductosTabla.jsp">Productos</a>
  		</li>
  		<li class="nav-item pl-5">
     	 <a class="nav-link menu" href="instrucciones.jsp">¿Qué Medir?</a>
  		</li>
  		<li class="nav-item pl-5"><a class="nav-link menu"
				href="graficas.jsp">Gráficas</a></li>
   	 </ul>
   	 
   	 <ul class="nav navbar-nav navbar-right derechaaa">
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	      
	      <li><a title="Cerrar sesión" id="botonregistro" href="CerrarSesion"><img src="imagenes/user2.png"></a>
	    </ul>
	</nav>
  
  
</nav>



<div class="container ">
  	<div class="row ">

		
		<%HttpSession sesion = request.getSession(false); %>
		
		
		<div class="col-xs  pt-5 bienvenido">
			<h1 class="bienvenido">Hola <%=  String.valueOf(sesion.getAttribute("nombre"))  %></h1> 
	   
	      	
		</div>
	</div>
	<div class="row abajomucho ">
	    <div class="col-sm-4  text-center">
	      
			<form >
         	<button id="botonanalisis" class="botonesimagenes" formaction= "vennuevoanalisis.jsp" class="container2" type="submit"><img src="imagenes/nuevoanalisis.png"></button>
      		</form> 	

			<br>
	      <h2>Nuevo Análisis</h2>
	    </div>




	    <div class="col-sm-4  text-center">
	      
			<form >
         	<button id="botonhistorial" class="botonesimagenes" formaction= "ventanahistorico.jsp" class="container2" type="submit"><img src="imagenes/historial.png"></button>
      		</form> 

	      <br>
	      <h2>Historial</h2>  
	    </div>


	    <div class="col-sm-4  text-center ">
	      <form >
		     	 <button id="botonproductos" class="botonesimagenes" formaction= "ProductosTabla.jsp" class="container2" type="submit"><img src="imagenes/productos.png"></button>
		  </form> 
				<br>
		     <h2>Productos</h2>
			
    	</div>

	</div>
	<br><br><br>

		<div class="row ">
			<div class="col-sm-4  text-center ">
				<form>
					<button id="botoninstrucciones" class="botonesimagenes" formaction="instrucciones.jsp"
						class="container2" type="submit">
						<img src="imagenes/instrucciones.png">
					</button>
				</form>
				<br>
				<h2>¿Qué medir?</h2>

			</div>
			
			
			<div class="col-sm-4  text-center ">
				<form>
					<button id="botongraficas" class="botonesimagenes" formaction="graficas.jsp"
						class="container2" type="submit">
						<img src="imagenes/graficas.png">
					</button>
				</form>
				<br>
				<h2>Gráficas</h2>

			</div>
			
			<div class="col-sm-4 border d-none">
				<h3>Column 3</h3>
				<p>Lorem ipsum dolor..</p>
				<p>Ut enim ad..</p>
			</div>
		</div>
	</div>





<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.imn.js"></script>		
</body>
</html>