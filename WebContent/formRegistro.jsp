<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Registro</title>
<link rel="shortcut icon" href="imagenes/flat.png">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/script1.js"></script>
<script type="text/javascript" src="js/ajax1.js"></script>
<link rel="stylesheet" type="text/css" href="css/boot/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/cssregistro.css">
<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet">



</head>
<body>

	<title>Formulario de registro</title>


</head>
<body>
	<header>
		<nav class="navbar">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand " href="index.jsp"> <img id="logo"
						class="img-fluid" src="imagenes/AQUAlab@3x.png"></a>
				</div>

			</div>

		</nav>
	</header>


	<section class="container abajo">


		<form action="nombreServlet" class="col-sm-12  text-center">

<%HttpSession sesion = request.getSession(false); 
	
if(String.valueOf(sesion.getAttribute("registrado")).equals("noregistrado")){ %>

	<h1>Usuario no registrado</h1>
	<h3>Por favor registrese</h3>
	
	<%}else{ %>
	
			<h1>
				<span>Registro </span>
			</h1>						<%} %>
			<div class="col-sm-12  text-center">
				<label for="nombre"></label> <input type="text" name="nombre"
					id="nombre" placeholder="Nombre" requiered>
			</div>

			<div class="col-sm-12  text-center">
				<label for="apellido"></label> <input type="text" name="apellido"
					id="apellido" placeholder="Apellido" requiered>
			</div>
			<div class="col-sm-12  text-center">
				<label for="ciudad"></label> <input type="text" name="ciudad"
					id="ciudad" placeholder="Ciudad" requiered>
			</div>
			<div class="col-sm-12  text-center">
				<label for="telefono"></label> <input type="text" name="telefono"
					id="telefono" placeholder="Telefono" requiered>
			</div>
			<div class="col-sm-12  text-center">
				<label for="mail"></label> <input type="text" name="mailper"
					id="mailper" placeholder="Email" requiered>
			</div>

			<div class="col-sm-12  text-center">
				<label for="pass"></label> <input type="password" name="pass"
					id="pass" placeholder="Password" requiered>
			</div>
			<br>
			<br>
			<div id="result"></div>
			<br>
			<br>
			<br> <input type="button" name="altausuario" id="altausuario"
				value="ENVIAR">
		</form>
	</section>

	<footer>
		<p>Copyright © 2019 Todos los derechos reservados</p>
	</footer>


	
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
