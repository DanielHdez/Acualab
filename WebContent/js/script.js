


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


