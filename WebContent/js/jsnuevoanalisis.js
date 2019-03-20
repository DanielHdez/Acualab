$(document).ready(function() {
	$(function () {
        $('#informe').bind("click", function () {
            var dest = $("#respuestaph").offset().top;
            $("html, body").animate({scrollTop: dest});
        });

    });

});




$(document).ready(function() {
	$("#informe").click(function() {

		var ph = $("#ph").val();
		var kh = $("#dur").val();
		var no2 = $("#no2").val();
		var no3 = $("#no3").val();
		var temp = $("#temp").val();



		var textoHTML = "<h1 class='bienvenido'>Informe del an\u00E1lisis</h1><br><br><br><br>"
		+"<h2><strong>Ph</strong> "+ph+" </h2><br>"	
		

		if(ph>=5.5&&ph<=7.5){
			var resultadoph="<p><strong>Tienes el Ph dentro de los parametros optimos.</strong></p>"

		}else if(ph>7.5){
			var resultadoph="<p style='color:red' ><strong>Tienes el Ph por encima de los valores optimos.</strong> Deberias a\u00F1adir liquido para bajar el Ph.</p>"

		}else if(ph<5.5){

			var resultadoph="<p style='color:red' ><strong>Tienes el Ph por debajo de los valores optimos.</strong> Deberias a\u00F1adir liquido para subir el Ph.</p>"
		}
		var ph="<p> Lo ideal para los peces de agua dulde es que se encuentre entre 5.5 y 7.5, aunque existen diferencias dependiendo de su h\u00E1bitat.</p>"
		+"<p>El pH del agua nos indica la acidez o alcalinidad del agua del acuario,"
		+" o lo que es igual, la cantidad de hidr\u00F3geno (H+) e hidr\u00F3xido (OH-) que hay en el"
		+"agua de nuestro acuario. A m\u00E1s Iones de Hidr\u00F3geno m\u00E1s \u00E1cida es el agua y baja el pH de la misma."
		+" Cuando el agua tiene la misma cantidad de hidr\u00F3geno e hidr\u00F3xido se le denomina neutra con un pH de 7."
		+"Sin embargo una mayor concentraci\u00F3n de Iones de Hidr\u00F3xido vuelve el agua alcalina con un pH mayor a 7.</p>"


		var resultadokh = "<br><br><h2><strong>Kh</strong> "+kh+"(mg/l) </h2><br>"

		if(kh>=2&&kh<=6){
			resultadokh=resultadokh+
			"<p><strong>El Kh esta dentro de los parametros optimos.</strong></p>"
			+"<p>La presencia de carbonato es la \u00F3ptima para que el PH se mantenga levemente \u00E1cido, en el entorno de 6,5.</p>"

		}else if(kh>6){
			resultadokh=resultadokh+
			"<p style='color:red' ><strong>El Kh esta por encima de los valores optimos.</strong>"
			+" Revisa en la tabla de productos, cual te puede ayudar a bajar el Kh.</p>"
			+"<p>Cuando el KH es superior a 6, nos muestra una presencia alta de carbonatos, pudiendo mantener un PH alcalino superior a 8.</p>"

		}else if(kh<2){

			resultadokh=resultadokh
			+"<p style='color:red' ><strong>El Kh esta por debajo de los valores optimos.</strong>"
			+" Revisa en la tabla de productos, cual te puede ayudar a bajar el Kh</p>"+
			"<p> KH menor de 2º revela poca presencia de carbonato. El PH se muestra inestable, los cambios de agua muy \u00E1cida a muy alcalina se pueden producir con rapidez.</p>"


		}
		var kh="<p>La dureza de carbonatos Kh es la medida de alcalinidad del agua, se recomienda un valor entre 2 grados dH y 4 grados dH.  "
		+"Kh indica las concentraciones de carbonatos (de calcio y magnesio)"
		+" disueltos en el agua: nos dice que  capacidad tiene el agua de nuestro acuario para mantener un pH "
		+ "estable (capacidad tamp\u00F3n o buffer).</p>"





		var resultadono2 = "<br><br><h2><strong>Nitritos (No2)</strong> "+no2+"(mg/l) </h2><br>"

		if(no2<0.2){
			resultadono2=resultadono2+
			"<p><strong>Los Nitritos est\u00E1n dentro de los parametros recomendados.</strong></p>"
			

		}else if(no2>=0.2){

			resultadono2=resultadono2
			+"<p style='color:red' ><strong>¡Peligro! Los Nitritos est\u00E1n por encima de los valores recomendados.</strong>"
			+" A\u00F1ade bacterias para que crezca la colonia.</p>"

		}
		var no2="<p>Los nitritos son una forma intermedia de nitr\u00F3geno, producido cuando el amoniaco "
		+"se convierte en nitrato durante el ciclo del nitr\u00F3geno. Cuando se descompone la materia"
		+" org\u00E1nica, se produce amoniaco, que resulta t\u00F3xico para los peces. "
		+"Las altas concentraciones de nitritos, impide que el pez respire normalmente "
		+"y comienza a  faltarle el oxigeno, deja de comer  se debilita y finalmente muere.</p>"
		+"<p>Lo ideal es que los nitritos se encuentren en una concentraci\u00F3n menor a 0.05mg/L. "
		+"Niveles mayores de 0.2mg/L ya son peligrosos y podr\u00EDan ocasionar la muerte.</p>"



		var resultadono3 = "<br><br><h2><strong>Nitratos (No3)</strong> "+no3+"(mg/l) </h2><br>"

		if(no3<20){
			resultadono3=resultadono3+
			"<p><strong>Los Nitratos est\u00E1n dentro de los parametros recomendados.</strong></p>"
			

		}else if(no3>=20){

			resultadono3=resultadono3
			+"<p style='color:red' ><strong>Los Nitratos est\u00E1n por encima de los valores recomendados.</strong>"
			+" Haz cambios de agua m\u00E1s seguidos unos d\u00EDas a\u00F1adiendo bacterias hasta que reduzcan los valores."
			+" Seguro que te has pasado echando comida... ;).</p>"

		}
		var no3="<P>El nitrato se forma naturalmente en el acuario como consecuencia del "
		+"ciclo del nitr\u00F3geno. Resulta de la descomposici\u00F3n de compuestos nitrogenados "
		+"como las prote\u00EDnas de los alimentos, la urea y otros desechos org\u00E1nicos etc.</P>"




		var resultadotemp = "<br><br><h2><strong>Temperatura </strong> "+temp+" \u00B0 </h2><br>"

		if(temp>18 && temp<=22){
			resultadotemp=resultadotemp+
			"<p><strong>La temperatura esta perfecta.</strong></p>"
			

		}else if(temp<18){

			resultadotemp=resultadotemp
			+"<p style='color:red' ><strong>La temperatura esta muy baja.</strong></p>"
			+"<p>Deber\u00EDas utilizar un calentador.</p>"

		}else if(temp>22){

			resultadotemp=resultadotemp
			+"<p style='color:red' ><strong>La temperatura esta muy alta.</strong></p>"
			+"<p>Para reducir la temperatura podr\u00EDas reducir horas de luz"
			+" (siempre teniendo en cuenta los requerimientos lum\u00EDnicos m\u00EDnimos"
			+" de nuestras plantas) o instalar ventiladores en las tapas del acuario.</p>"

		}
		var temp="<p>Los peces son animales que mantienen la temperatura de su "
		+"cuerpo igual a la del medio ambiente. Por esta raz\u00F3n es "
		+"extremadamente importante mantener la temperatura constante. "
		+"Los cambios repentinos pueden causar estr\u00E9s y llevar a enfermedades. "
		+"Por lo que se recomienda verificar la temperatura del agua diariamente.</p>"







		$("#respuestaph").html(textoHTML+resultadoph+ph);
		$("#respuestakh").html(resultadokh+kh);
		$("#respuestano2").html(resultadono2+no2);
		$("#respuestano3").html(resultadono3+no3);
		$("#respuestatemp").html(resultadotemp+temp);




	});
});