$(document).ready(function () {
    $("#comprobar").click(function () {
        var ruta = "ControlAnalisis"; //Servlet
        var Ph = document.getElementById("ph").value;
        var kh = document.getElementById("dur").value;
        var nitritos = document.getElementById("no2").value;
        var nitratos = document.getElementById("no3").value;
        var temp = document.getElementById("temp").value;
        var observaciones = document.getElementById("comment").value;
        var parametros = "?ph=" + Ph + "&dur=" + kh + "&no2=" + nitritos + "&no3=" + nitratos + "&tem=" + temp + "&coment=" + observaciones;
        ruta = ruta + parametros;
        alert(ruta);
        $.ajax({
        	url: ruta,
        	success: function(respuesta) {
        		$("#resultado").html(respuesta);
        	},
        	error: function() {
        		$("#resultado").text("Error ajax");
            }
        });
    });
});
/**
 * Ph = request.getParameter("ph");
		kh = request.getParameter("dur");
		nitritos = request.getParameter("no2");
		nitratos = request.getParameter("no3");
		temp = request.getParameter("tem");
		observaciones = request.getParameter("coment");
 */