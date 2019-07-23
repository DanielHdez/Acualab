<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Registro</title>
<link rel="shortcut icon" href="imagenes/flat.png">
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
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


		<form  class="col-sm-12  text-center">

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
					id="nombre" placeholder="Nombre" required>
			</div>

			<div class="col-sm-12  text-center">
				<label for="apellido"></label> <input type="text" name="apellido"
					id="apellido" placeholder="Apellido" required>
			</div>
			<div class="col-sm-12  text-center">
				<label for="ciudad"></label> <input type="text" name="ciudad"
					id="ciudad" placeholder="Ciudad" required>
			</div>
			<div class="col-sm-12  text-center">
				<label for="telefono"></label> <input type="text" name="telefono"
					id="telefono" placeholder="Telefono" required>
			</div>
			<div class="col-sm-12  text-center">
				<label for="mail"></label> <input type="email" name="mailper"
					id="mailper" placeholder="Email" required>
			</div>

			<div class="col-sm-12  text-center">
				<label for="pass"></label> <input type="password" name="pass"
					id="pass" placeholder="Password" required>
			</div>
			
			<br>
			<div id="result"></div>
			
			<br>
			<br> <input type="button" name="altausuario" class="btna" id="altausuario"
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
