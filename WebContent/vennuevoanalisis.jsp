<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="imagenes/flat.png">
<title>Nuevo análisis</title>
	<link rel="stylesheet" type="text/css"
		href="css/boot/bootstrap.min.css">
	<!--<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	 <link rel="stylesheet" type="text/css"
		href="/css/boot/datatables.min.css">
		
	<script type="text/javascript" src="/js/datatables.min.js"></script>-->
	
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/ajax1.js"></script>
<link rel="stylesheet" type="text/css" href="css/cssanalisis.css">
<link href="https://fonts.googleapis.com/css?family=Poppins"
	rel="stylesheet">
<script type="text/javascript" src="js/jsnuevoanalisis.js"></script>


</head>
<body>

	<nav class="navbar navbar-expand-sm ">

		<a class="navbar-brand pl-5" href="iniciousuario.jsp"> <img
			id="logo" src="imagenes/AQUAlab@3x.png" alt="logo">
		</a>

		<ul class="navbar-nav  ">

			<li class="nav-item pl-5"><a class="nav-link menu  "
				href="vennuevoanalisis.jsp"><span>Nuevo Análisis</span></a></li>

			<li class="nav-item pl-5"><a class="nav-link menu"
				href="ventanahistorico.jsp">Historial</a></li>
			<li class="nav-item pl-5"><a class="nav-link menu"
				href="ProductosTabla.jsp">Productos</a></li>
			<li class="nav-item pl-5"><a class="nav-link menu"
				href="instrucciones.jsp">¿Qué Medir?</a></li>
		</ul>
	</nav>


	<div class="row">
		<div class="col-2"></div>
		<div class="col-sm-8">
			<form>

				<div class="row ">


					<div class="col-xs-12  mx-auto bienvenido pt-5">
						<h1 class="bienvenido">Nuevo Analisis</h1>
					</div>

				</div>
				<div class="form-row pt-5">
					<div class="col-2"></div>
					<div class="col-md-2">
						<span class="label label-default">PH</span>
					</div>
					<div class="col-md-4">
						<input type="number" onchange="cambiar('ph','phran')"
							class="form-control form-control-sm" id="ph" placeholder="Ph"
							min="0" max="14" step="0.1" name="ph">
					</div>
					<div class="col-md-4">
						<input type="range" class="align-middle"
							class="form-control-range" onchange="cambiar('phran','ph')"
							min="0" max="14" value="0" step="0.1" name="phran" id="phran">
					</div>
				</div>

				<div class="form-row">
					<div class="col-md-2"></div>
					<div class="col-md-2">
						<span class="label label-default">Kh(mg/l):</span>
					</div>
					<div class="col-md-4">
						<input type="number" min="0" max="10"
							onchange="cambiar('dur','durran')"
							class="form-control form-control-sm" id="dur"
							placeholder="Dureza Total" name="dur">
					</div>
					<div class="col-md-4">
						<input type="range" class="align-middle"
							class="form-control-range" onchange="cambiar('durran','dur')"
							min="0" max="10" value="0" step="1" name="durran" id="durran">
					</div>

				</div>

				<div class="form-row">
					<div class="col-md-2"></div>
					<div class="col-md-2">
						<span class="label label-default">NO2(mg/l)</span>
					</div>
					<div class="col-md-4">
						<input type="number" min="0" max="0.4" step="0.01"
							onchange="cambiar('no2','no2ran')"
							class="form-control form-control-sm" id="no2"
							placeholder="Concentración de nitritos" name="no2">
					</div>
					<div class="col-md-4">
						<input type="range" class="align-middle"
							class="form-control-range" onchange="cambiar('no2ran','no2')"
							min="0" max="0.4" value="0" step="0.01" name="no2ran" id="no2ran">
					</div>
				</div>
				<div class="form-row">
					<div class="col-md-2"></div>
					<div class="col-md-2">
						<span class="label label-default">NO3(mg/l):</span>
					</div>
					<div class="col-md-4">
						<input type="number" min="0" max="25"
							class="form-control form-control-sm"
							onchange="cambiar('no3','no3ran')"
							placeholder="Concentración de nitratos" id="no3" name="no3">
					</div>
					<div class="col-md-4">
						<input type="range" class="align-middle"
							class="form-control-range" onchange="cambiar('no3ran','no3')"
							min="0" max="25" value="0" step="1" class="slider" name="no3ran"
							id="no3ran">
					</div>



				</div>
				<div class="form-row">
					<div class="col-md-2"></div>
					<div class="col-md-2">
						<span class="label label-default">Temperatura</span>
					</div>
					<div class="col-md-4">
						<input type="number" onchange="cambiar('temp','temran')" min="10"
							max="40" class="form-control form-control-sm" placeholder="ºC"
							name="tem" id="temp">
					</div>
					<div class="col-md-4">
						<input type="range" onchange="cambiar('temran','temp')"
							class="align-middle" class="form-control-range" min="10" max="40"
							value="0" step="1" name="temrange" id="temran">
					</div>
				</div>


				<div class="form-row">
					<div class="col-md-2"></div>
					<div class="col-md-9">
						<div class="form-group">
							<label for="comment">Comentario:</label>
							<textarea class="form-control" rows="5" id="comment" name="coment"></textarea>
						</div>
					</div>
				</div>

				<div class="form-row ">
				<div class="col-md-12 text-center">

						<div id="resultado"></div>

					</div>
					<br>
					<br>
					<div class="col-md-12 text-center2">

						<button type="button" class="btna " value="informe" id="informe">Informe</button>

						<button type="button" id="comprobar" class="btna ">Guardar</button>


					</div>
					
				</div>



			</form>
		<br>
		<br><br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		



 
		<div class="row mx-auto">

			<div id="respuesta" class="col-sm-6 border">
				<h3>Column 2</h3>

				
				<p></p>
				<p>Ut enim ad..</p>
			</div>
			<div class="col-sm-6 border">
				<h3>Column 3</h3>
				<p>Lorem ipsum dolor..</p>
				<p>Ut enim ad..</p>
			</div>
		</div>
</div>
	</div>

</body>
</html>