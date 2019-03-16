<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

    
    <!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Inicio</title>
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	
	<link rel="shortcut icon" href="imagenes/flat.png">
	<link rel="stylesheet" type="text/css" href="css/estiloinicio.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
	<meta name="viewport" content="with=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" type="text/css" href="css/boot/bootstrap.css">


</head>
<body>

	<header>
	</header>


<nav class="navbar fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand " href="index.jsp">
      	<img id="logo" class="img-fluid" src="imagenes/AQUAlab@3x.png"></a>
    </div>
    
    <ul class="nav">

    	<li class="nav-item pl-5 "> 
		<a id="link2" class="menu" href="#pagina2">¿Por qué medir la calidad del agua?</a></li>
      <li class="nav-item pl-5 ">
		<a id="link1" class="menu " href="#noticias2"> ¿Qué parámetros mirar?</a> </li>	
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><button id="botonregistro"onclick="document.getElementById('modal-wrapper').style.display='block'"><img src="imagenes/user2.png"></button>
    </ul>
  </div>

	</nav>
	


	<div class="videoBackgroundWrapper" id="video">
        <video preload="auto" autoplay="true" loop="true" class="videoBackground">
                 <source src="imagenes/video/bbb.mp4" type="video/mp4">
         </video>
         <div class="overlay">
            <h1 id="titulo1" class="titulosvideo">Revisión de la calidad del agua</h1>
			<h2 id="titulo2" class="titulosvideo">Agua limpia peces contentos</h2>
             
        </div>
	</div>

	
	
  
	<section id="pagina2" class="container " >

		<div class="row  justify-content-centered abajo">
			
			<div class="col-sm-12  text-center pt-5">
    		
    			<h1 id="titulopag1">¿Por qué medir parámetros en mi acuario?</h1>
    		</div>
		</div>
		
		<div class="row pt-5 " id="textopag2 ">
    		<div class="col-sm-6  pr-5 textoo">
					
					
				<p>Siempre que tengamos un problema en el acuario, tanto con nuestros peces, como con las plantas, aparición de algas, peces enfermos, lo primero que debemos conocer siempre son los valores del agua del acuario.  </p>
			<p>De hecho deberíamos conocer estos datos y como evolucionan en nuestro acuario y para poder detectar cualquier variación que nos llame la atención y poder actuar a tiempo. 
			</p>
		</div>
		
		<div class="col-sm-6  pl-5 textoo">
			<p>No sirve saber que ”todo esta bien”, esto no indica si el pH esta a 5,5 o a 7. Siempre debemos conocer en que valores se mueve el agua de nuestro acuario</p>	
				<p>A la hora de introducir  los peces debemos conocer los  parámetros ya que cada especie tiene unas necesidades de calidad de agua, y sobre todo debemos conocer como varían a lo largo del tiempo, ya que esto nos indica si estamos manteniendo el acuario correctamente o no.</p>
			
			</div>
	  
		</div>

	</section>


<div id="modal-wrapper" class="modal1">
  
  <form class="modal-content animate" action="/action_page.php">
        
    <div class="imgcontainer">
      <span onclick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
      
      <img src="imagenes/userpopup.png" alt="Avatar" class="avatar">
      <h1 style="text-align:center">Login</h1>
    </div>

    <div class="container">
    	<form >
    	
    	
    		    	
    	
    	
     	 <input type="text" placeholder="Enter Username" name="nombre">
     	 <input type="password" placeholder="Enter Password" name="password">        
   		
		<button formaction= "acceso" class="container1" type="submit">Enviar</button>
   		</form> 
   		
   		<form >
         	<button  formaction= "formRegistro.jsp" class="container2" type="submit">Registro</button>
      	</form> 	
     	
		
    		
		
    </div>
    
  </form>
  
</div>






	<section id="pagina3" class="container-fluid ">
		
		<div name:"noticias2" id="noticias2" class="row  justify-content-centered abajo">
			
			<div class="col-sm-12  text-center pt-5">
    		
    			<h1 id="titulopag2">Parámetros Clave</h1>
    		</div>
		</div>
		


		<div class="row abajo container mx-auto">
			<div class="col-sm-4">
				<h2 id="ph"><strong> pH</strong> </h2>
				
				<p>El pH del agua nos indica la acidez o alcalinidad del agua del acuario, o lo que es igual, la cantidad de hidrógeno (H+) e hidróxido (OH-) que hay en el agua de nuestro acuario. A más Iones de Hidrógeno más ácida es el agua y baja el pH de la misma. Cuando el agua tiene la misma cantidad de hidrógeno e hidróxido se le denomina neutra con un pH de 7. Sin embargo una mayor concentración de Iones de Hidróxido vuelve el agua alcalina con un pH mayor a 7.</p>
		
			</div>
			<div class="col-sm-4">

				<h2 id="kh"><strong> kH </strong></h2>
				<p>Dureza de carbonatos es la medida de alcalinidad del agua, indica las concentraciones de carbonatos (de calcio y magnesio) disueltos en el agua: nos dice que  capacidad tiene el agua de nuestro acuario para mantener un pH estable (capacidad tampón o buffer).</p>
			</div>
			<div class="col-sm-4">

				<h2 id="ito"><strong> No2-</strong> </h2>
				<p>Los nitritos son una forma intermedia de nitrógeno, producido cuando el amoniaco se convierte en nitrato durante el ciclo del nitrógeno. Cuando se descompone la materia orgánica, se produce amoniaco, que resulta tóxico para los peces.</p>
				<p>Las altas concentraciones de nitritos, impide que el pez respire normalmente  y comienza a  faltarle el oxigeno, deja de comer  se debilita y finalmente muere.</p>
			</div>
		</div>


		<div class="row container mx-auto ">
			<div class="col-sm-4">	
				<h2 id="ato"> <strong>No3- </strong></h2>
				<P>El nitrato se forma naturalmente en el acuario como consecuencia del ciclo del nitrógeno. Resulta de la descomposición de compuestos nitrogenados como las proteínas de los alimentos, la urea y otros desechos orgánicos etc.</P>
			</div>
		<div class="col-sm-4">	
			<h2 id="t"> <strong>Temperatura</strong> </h2>
			<p>Los peces son animales que mantienen la temperatura de su cuerpo igual a la del medio ambiente. Por esta razón es extremadamente importante mantener la temperatura constante. Los cambios repentinos pueden causar estrés y llevar a enfermedades. Por lo que se recomienda verificar la temperatura del agua diariamente.</p>
		</div>

		<div class="col-sm-4">
			<h2 id="gh"> <strong>GH</strong> </h2>
			<p>La dureza total del agua viene determinada por diversas sales sobre todo por sales de calcio y magnesio. Si el porcentaje de estas sales es elevado, el agua es calificada de dura; si el contenido en sales es bajo, se trata de una agua blanda. </p>
			
			<p>Este valor es más importante de mirar y regular en peces de agua salada.</p>
		</div>	
	</div>
	</section>



	

		


	<footer>

		<p> Copyright © 2019 Todos los derechos reservados</p>
	</footer>




<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.imn.js"></script>		
</body>
</html>