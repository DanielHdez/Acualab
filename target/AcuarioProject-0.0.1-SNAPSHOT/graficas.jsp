<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="Es">
<head>
	<meta charset="UTF-8">
	<title>Gr�ficos</title>
	<link rel="stylesheet" type="text/css" href="css/boot/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/Chart.js"></script>
	<script type="text/javascript" src="js/scriptchar.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cssanalisis.css">
		<link rel="stylesheet" type="text/css" href="css/csshistorico.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
	

</head>
<body>
	
	<nav class="navbar navbar-expand-sm ">
  
	  <a class="navbar-brand pl-5" href="iniciousuario.jsp">
	    <img id="logo" src="imagenes/AQUAlab@3x.png" alt="logo" >
	  </a>
  
  	<ul class="navbar-nav  ">
  	
	  	<li class="nav-item pl-5">
	     	 <a class="nav-link menu  " href="vennuevoanalisis.jsp"><span>Nuevo An�lisis</span></a>
	   		</li>
    	
   		<li class="nav-item pl-5">
     	 <a class="nav-link menu" href="ventanahistorico.jsp">Historial</a>
   		</li>
    	<li class="nav-item pl-5">
     	 <a class="nav-link menu" href="ProductosTabla.jsp">Productos</a>
  		</li>
  		<li class="nav-item pl-5">
     	 <a class="nav-link menu" href="instrucciones.jsp">�Qu� Medir?</a>
  		</li>
  		<li class="nav-item pl-5"><a class="nav-link menu"
				href="graficas.jsp">Gr�ficas</a></li>
   	 </ul>
   	 
   	 <ul class="nav navbar-nav navbar-right derechaaa">
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	    	<li class="nav-item pl-5"></li><li class="nav-item pl-5"></li><li class="nav-item pl-5"></li>
	      
	      <li><a title="Cerrar sesi�n" id="botonregistro" href="CerrarSesion"><img src="imagenes/user2.png"></a>
	    </ul>
	</nav>

	<div class="row ">


			<div class="col-xs-12  mx-auto bienvenido pt-5">
			<h1 class="bienvenido">Gr�ficas</h1> 
	   		</div>
	      	
	</div><br><br>

	<div class="row">
		<div class="col-1"> </div>
		<div class="col-sm-5">
			<canvas id="popChart1" width="600" height="400" ></canvas>
		</div>
		<div class="col-sm-5">
		
		<canvas id="popChart" width="600" height="400"></canvas>
		</div>
		<div class="col-1"> </div>
	</div>
	<div class="row">
		<div class="col-1"> </div>
		<div class="col-sm-5">
			<canvas id="popChart2" width="600" height="400" background-color="green"></canvas>
		</div>
		<div class="col-sm-5">
		
		<canvas id="speedChart" width="600" height="400"></canvas>
		</div>
		<div class="col-1"> </div>
	</div>
	<div id="resultado"></div>




	
</body>
</html>