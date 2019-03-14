$(document).ready(function() {
	$("#informe").click(function() {

		var ruta = "Informe";
		var ph = document.getElementById("ph").value;
		var kh = document.getElementById("dur").value;
		var no2 = document.getElementById("no2").value;
		var no3 = document.getElementById("no3").value;
		var temp = document.getElementById("temp").value;

		
		var parametros = "?ph=" + ph + "&dur=" + kh + "&no2=" + no2 + "&no3=" + no3 +"&temp=" + temp;
		ruta = ruta + parametros;

		$.ajax({
			url : ruta,
			success : function(respuesta) {
				$("#respuesta").html(respuesta);
			},
			error : function() {
				$("#respuesta").text("Error ajax");
			}
		});
	});
});
