
onload=iniciar;

function iniciar(){
 usuario();
}

function usuario(){
var a=1;
var nombre="Paco";
var texto="<a>Registro </a> / <a>Login</a>";
if(a==1){
	document.getElementById("log").innerHTML=texto;
	cambiarimagen("imagenes/user.png");
//	document.getElementById("log").innerHTML = "Paragraph changed!";
}else{
	document.getElementById("log").innerHTML="<a>Usario: "+nombre+"</a>";
	cambiarimagen("imagenes/userreg.png");
}
}

function cambiarimagen(img){

	document.getElementById("imagenuser").src=img;
}

function range(){
	 var a=document.getElementById("temran").value;
	 document.getElementById("temp").value=a;
	 
}
function etiqueta(){
	 var a=document.getElementById("temp").value;
	 document.getElementById("temran").value=a;

}
function cambiar(prop,cambi){
	 var a=document.getElementById(prop).value;
	 document.getElementById(cambi).value=a;
	 
}
$(document).ready(function () {
$('#mitabla').DataTable({
"scrollY": "400px",
"scrollCollapse": true,
 "scrollX": true
});
$('.dataTables_length').addClass('bs-select');
});

