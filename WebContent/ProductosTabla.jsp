<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
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
  
<!-- <form>
<input type="button" onclick="ptabla()" value="Activar Función">
	</form> -->	
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
		        <th scope="col ">Fecha</th>
		        <th scope="col">Temperatura</th>
		        <th scope="col">PH</th>
		        <th scope="col">Nitritos</th>
		        <th scope="col">Nitratos</th>
		        <th scope="col">Dureza</th>
		        <th scope="col">Comentario</th>
		     </tr>
			</thead>
			<tbody id="datos">
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			   <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			  <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			   <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			   <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			  <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			   <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			  <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			   <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			  <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			   <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    <tr>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			    <td></td>
			  </tr>
			    </tbody>
			  </table>
			 </div>
		</div>
	</div>
</div>

	<link rel="stylesheet" type="text/css" href="css/boot/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/boot/datatables.min.css">
	
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/datatables.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" >
		<!-- function ptabla(){
			var results="";
			$.post("http://localhost:8080/AcuarioProject/Producto", function(data){
				result=JSON.parse(data);
	});
			console.log(results);
			
		-->
		var requestURL = 'http://localhost:8080/AcuarioProject/Producto';
	    var request = new XMLHttpRequest();
	    request.open('GET', requestURL);
	    request.responseType = 'json';
	    request.send();

	    function cargarDatos()
	    {
	        var DatosJson = request.response;
	        document.getElementById("tabla").innerHTML=DatosJson;
	    }
			
	



	</script>
	
</body>
</html>