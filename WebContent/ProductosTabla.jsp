<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
 <%@ page import= "conector.Jpa" %> 
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Productos</title>
	<link rel="shortcut icon" href="imagenes/flat.png">
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cssproductostabla.css">
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
  		<li class="nav-item pl-5"><a class="nav-link menu"href="graficas.jsp">Gráficas</a></li>
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

	<div class="row ">


			<div class="col-xs-12  mx-auto bienvenido pt-5">
			<h1 class="bienvenido">Productos</h1> 
	   		</div>
	      	
	</div>

    <div id="tabla" class="row row-md abajomucho">
    	<div class="col-md-1">
		</div>
		<div class="col-md-10">
		  <table id="mitabla" class="table alinear table-bordered table-md" cellspacing="0" width="100%">
		    <thead class="thead-blue " >
		      <tr>
		        <th scope="col ">Tipo</th>
		        <th scope="col">Marca</th>
		        <th scope="col">Nombre</th>
		        <th scope="col">Uso</th>
		        <th scope="col">Precio</th>
		        <th scope="col">web</th>
		        <th scope="col">Imagen</th>
		     </tr>
			</thead>
			<tbody id="datos">
			      <%
			   Jpa t=new Jpa();
			   %> 
			   <%=t.obtenerProductosstring()%>
			    </tbody>
			  </table>
			 </div>
		</div>


	<link rel="stylesheet" type="text/css" href="css/boot/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/boot/datatables.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/datatables.min.js"></script>
	
	
</body>
</html>