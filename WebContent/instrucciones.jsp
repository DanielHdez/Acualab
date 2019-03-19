<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>¿Qué medir?</title>
	
	<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
	
	<link rel="shortcut icon" href="imagenes/flat.png">
	<link rel="stylesheet" type="text/css" href="css/cssinstrucciones.css">

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
   	 </ul>
	</nav>





<div class="container ">
  <section id="pagina3" class="container-fluid ">
		
		<div name:"noticias2" id="noticias2" class="row  justify-content-centered abajo">
			
			<div class="col-sm-12  text-center pt-5">
    		
    			<h1 class="bienvenido">Parámetros Clave</h1><br><br>
    		</div>
		</div>
		<br><br>


		<div class="row abajo container text-justify">
			<div class="col-sm-6 pr-5">
				<h2 id="ph" class="alinear"><strong> pH</strong> </h2>
				<br>
				<p>El pH del agua nos indica la acidez o alcalinidad del agua del acuario, o lo que es igual, la cantidad de hidrógeno (H+) e hidróxido (OH-) que hay en el agua de nuestro acuario. A más Iones de Hidrógeno más ácida es el agua y baja el pH de la misma. Cuando el agua tiene la misma cantidad de hidrógeno e hidróxido se le denomina neutra con un pH de 7. Sin embargo una mayor concentración de Iones de Hidróxido vuelve el agua alcalina con un pH mayor a 7.</p>


				<p>Lo ideal para los peces de agua dulde es que se encuentre entre 5.5 y 7.5, aunque existen diferencias dependiendo de su hábitat.</p>
				<p>Por ejemplo, para especies vivíparas (Guppys, Mollys, Platys, Xiphos...) lo recomendable es entre 7.1 y 8.</p>
				<p>Sin embargo, para los peces disco (Symphysodon discus), su ph óptimo está entre 5 y 7.</p>
				<p>Para todas estas diferencias que existen entre cada pez, en un acuario comunitario se recomienda que el pH esté lo más cercano al 7(neutro).</p>
				<p>Si tenemos en nuestro acuario una gran población de plantas naturales y troncos, y además tenemos puesto un sistema de CO2 para abonar a nuestras plantas podemos ver que el pH desciende considerablemente, por lo que debemos hacer un test regularmente. </p>


			<br>
			</div>
			
			<div class="col-sm-6 fluid pl-5">

				<h2 id="kh" class="alinear "><strong> kH </strong></h2>
				<br>
				<p>Dureza de carbonatos es la medida de alcalinidad del agua, indica las concentraciones de carbonatos (de calcio y magnesio) disueltos en el agua: nos dice que  capacidad tiene el agua de nuestro acuario para mantener un pH estable (capacidad tampón o buffer).</p>
				<br>
				<p>Para el kH se recomienda un valor KH entre 3 grados dH y 10 grados dH para la mayoría de los peces de agua dulce. </p>
				<p>Se puede afirmar que con un nivel de KH alto(a partir de 4), el agua del acuario se mostrará más estable en su PH y tendrá mayor capacidad para neutralizar posibles desequilibrios.</p>
				<p>El pH y kH suelen seguir la siguiente relación:</p>
				<p>* KH menor de 2º revela poca presencia de carbonato. El PH se muestra inestable, los cambios de agua muy ácida a muy alcalina se pueden producir con rapidez.</p>
				<p>*KH entre 2º y 4º, la presencia de carbonato es la óptima para que el PH se mantenga levemente ácido, en el entorno de 6,5.</p>
				<p>*KH entre 4º y 6º, ofrece lecturas de carbonato ideales para estabilizar el PH alcalino entre 7 y 8.</p>
				<p>*Cuando el KH es superior a 6, nos muestra una presencia alta de carbonatos, pudiendo mantener un PH alcalino superior a 8.</p>
				<p>Por ejemplo para los peces disco, el kH recomendable es 3 grados dH.</p>


				<br>
			</div>
			
		</div>
		
		<div class="row abajo container text-justify">
			<div class="col-sm-6 pr-5">

				<h2 id="ito" class="alinear "><strong> No2-</strong> </h2>
				<br>
				<p>Los nitritos son una forma intermedia de nitrógeno, producido cuando el amoniaco se convierte en nitrato durante el ciclo del nitrógeno. Cuando se descompone la materia orgánica, se produce amoniaco, que resulta tóxico para los peces.</p>
				<p>Las altas concentraciones de nitritos, impide que el pez respire normalmente  y comienza a  faltarle el oxigeno, deja de comer  se debilita y finalmente muere.</p>
				<br>
				<p>Lo ideal es que los nitritos se encuentren en una concentración menor a 0.05mg/L. </p>
				<p>Niveles mayores de 0.2mg/L ya son peligrosos y podrían ocasionar la muerte.</p>
				<br>
			</div>
		
		
			<div class="col-sm-6 pl-5">	
				<h2 id="ato" class="alinear "> <strong>No3- </strong></h2>
				<br>
				<P>El nitrato se forma naturalmente en el acuario como consecuencia del ciclo del nitrógeno. Resulta de la descomposición de compuestos nitrogenados como las proteínas de los alimentos, la urea y otros desechos orgánicos etc.</P>
				<br>

				<p>Los valores ideales de nitratos son por debajo de los 20mg/L.</p>
				<br>
			</div>
		</div>
		
		<div class="row container text-justify">
		<div class="col-sm-6 pr-5" >	
			<h2 id="t" class="alinear"> <strong>Temperatura</strong> </h2>
			<br>
			<p>Los peces son animales que mantienen la temperatura de su cuerpo igual a la del medio ambiente. Por esta razón es extremadamente importante mantener la temperatura constante. Los cambios repentinos pueden causar estrés y llevar a enfermedades. Por lo que se recomienda verificar la temperatura del agua diariamente.</p>
			<br>
			<p>Hay peces de "agua fría" que son los que soportan la temperatura del ambiente en que se encuentren (puede varíar entre 15 y 20 grados centígrados), y luego están los tropicales o de "agua caliente", que necesitan temperaturas más cálidas (21 a 29 grados centígrados).</p>
			<br>
		</div>

		<div class="col-sm-6 pl-5">
			<h2 id="gh" class="alinear"> <strong>GH</strong> </h2>
			<br>
			<p>La dureza total del agua viene determinada por diversas sales sobre todo por sales de calcio y magnesio. Si el porcentaje de estas sales es elevado, el agua es calificada de dura; si el contenido en sales es bajo, se trata de una agua blanda. </p>
			
			<p>Este valor es más importante de mirar y regular en peces de agua salada.</p>
			<br>

			<p>Se puede decir que el GH es la suma del KH (carbonatos) y todo lo que no son carbonatos.</p>
		<p>Cuando en acuariofilia se hace referencia a la dureza del agua, si una determinada especie prefiere aguas blandas o duras, hablamos del GH y no del KH. Es importante tener en cuenta estos parámetros, por que un pez de aguas duras no se verá afectado por vivir en aguas blandas, pero un pez de aguas blandas, si tendrá problemas para vivir en aguas duras.</p>
		<p> La dureza total favorable que permite mantener muy bien a la mayoría de los peces ornamentales oscila entre 6 grados dH y 16 grados dH ( grados dH = grado de dureza alemana ).</p>

		<br>
		</div>	
	</div>
	</section>
</div>




<script src="js/jquery-3.2.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.imn.js"></script>		
</body>
</html>