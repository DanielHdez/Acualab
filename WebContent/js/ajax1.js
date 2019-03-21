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
        $.ajax({
        	url: ruta,
        	success: function(respuesta) {
        		$("#resultado").html(respuesta);
        	},
        	error: function() {
        		$("#resultado").text("Error ajax1");
            }
        });
    });
  
});


$(document).ready(function () {
    $("#informe").click(function () {
        var ruta = "ControlAnalisis"; //Servlet
        var Ph = document.getElementById("ph").value;
        var kh = document.getElementById("dur").value;
        var nitritos = document.getElementById("no2").value;
        var nitratos = document.getElementById("no3").value;
        var temp = document.getElementById("temp").value;
        var observaciones = document.getElementById("comment").value;
        var parametros = "?ph=" + Ph + "&dur=" + kh + "&no2=" + nitritos + "&no3=" + nitratos + "&tem=" + temp + "&coment=" + observaciones;
        ruta = ruta + parametros;
        $.ajax({
        	url: ruta,
        	success: function(respuesta) {
        		$("#resultado").html(respuesta);
        	},
        	error: function() {
        		$("#resultado").text("Error ajax1");
            }
        });
    });
  
});


$(document).ready(function () {
    $("#altausuario").click(function () {
        var ruta = "RegistroUsurio"; //Servlet
        var nombre = document.getElementById("nombre").value;
        var apellido = document.getElementById("apellido").value;
        var ciudad = document.getElementById("ciudad").value;
        var telefono = document.getElementById("telefono").value;
        var mailper = document.getElementById("mailper").value;
        var pass = document.getElementById("pass").value;
        var parametros = "?nombre=" + nombre + "&apellido=" + apellido + "&ciudad=" + ciudad + "&telefono=" + telefono + "&mailper=" + mailper + "&pass=" + pass;
        ruta = ruta + parametros;
        $.ajax({
        	url: ruta,
        	success: function(respuesta) {
        		$("#result").html(respuesta);
        	},
        	error: function() {
        		$("#resul").text("Error ajax2");
            }
        });
       
               
    });
});




