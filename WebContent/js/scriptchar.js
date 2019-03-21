onload=graficos;
function graficos(){
	grafico3("popChart1");
	grafico2("popChart", "Temperatura");
	grafico5("popChart2", "PH");
	grafico4("speedChart");
	
  recibir();
}
  


function recibir(){
    var requestURL = 'http://localhost:8080/AcuarioProject/Historico';
    var xhr = new XMLHttpRequest();
     xhr.onreadystatechange = function () {
        if (xhr.readyState == 4) { //Esta en estado finalizado 
            if (xhr.status == 200){ //Que esta ok
              var json=JSON.parse(xhr.responseText);
              alert(json);
            }else{
              document.getElementById("resultado").innerHTML = "Error AJAX";
              
            }
        }
      }
    xhr.open('POST', requestURL);
    xhr.responseType = 'json';
    xhr.send();
    }
    

    /*function cargarDatos()
    {
        var DatosJson = request.response;
       // document.getElementById("tabla").innerHTML=DatosJson;
    }
   /*  $.ajax({
          url: requestURL,
          success: function(respuesta) {
            //Respuesta me daría directamente el json para trabajar 

            $("#resultado").text("respuesta");
          },
          error: function(e) {
            $("#resultado").text("e");
             //Devuelve el error;
            }
        });*/


function grafico(graf){
var popCanvas = $(graf);
var popCanvas = document.getElementById(graf);
var popCanvas = document.getElementById(graf).getContext("2d");
var barChart = new Chart(popCanvas, {
  type: 'bar',
  data: {
    labels: ["China", "India", "United States", "Indonesia", "Brazil", "Pakistan", "Nigeria", "Bangladesh", "Russia", "Japan"],
    datasets: [{
      label: 'Population',
      data: [1379302771, 1281935911, 326625791, 260580739, 207353391, 204924861, 190632261, 157826578, 142257519, 126451398],
      backgroundColor: [
        'rgba(255, 99, 132, 0.6)',
        'rgba(54, 162, 235, 0.6)',
        'rgba(255, 206, 86, 0.6)',
        'rgba(75, 192, 192, 0.6)',
        'rgba(153, 102, 255, 0.6)',
        'rgba(255, 159, 64, 0.6)',
        'rgba(255, 99, 132, 0.6)',
        'rgba(54, 162, 235, 0.6)',
        'rgba(255, 206, 86, 0.6)',
        'rgba(75, 192, 192, 0.6)',
        'rgba(153, 102, 255, 0.6)'
      ]
    }]
  }
});
}
function grafico2(graf, titulo){
var speedCanvas = document.getElementById(graf);

Chart.defaults.global.defaultFontFamily = "Lato";
Chart.defaults.global.defaultFontSize = 18;

var speedData = {
  labels: ["01/3", "02/03", "03/03", "04/03", "05/03", "10/03", "20/03"],
  datasets: [{
    label:titulo,
    data: [20, 22, 19, 21.5, 22.5, 18.9, 19.2],
  }]
};

var chartOptions = {
  legend: {
    display: true,
    position: 'top',
    labels: {
      boxWidth: 80,
      fontColor: 'black'
    }
  }
};

var lineChart = new Chart(speedCanvas, {
  type: 'line',
  data: speedData,
  options: chartOptions
});
}
function grafico3(graf){

var speedCanvas = document.getElementById(graf);

Chart.defaults.global.defaultFontFamily = "Lato";
Chart.defaults.global.defaultFontSize = 18;

var dataFirst = {
    label: "NO2",
    data: [0.5, 0.59, 0.75, 0.20, 0.25, 0.55, 0.40],
    lineTension: 0.3,
    fill: false,
    borderColor: 'red',
    backgroundColor: 'transparent',
    pointBorderColor: 'red',
    pointBackgroundColor: 'lightgreen',
    pointRadius: 5,
    pointHoverRadius: 15,
    pointHitRadius: 30,
    pointBorderWidth: 2,
    pointStyle: 'rect'
  };

var dataSecond = {
    label: "KH",
    data: [3, 1.5, 5.2, 4.7, 6.5, 3.0, 4.50],
    lineTension: 0.3,
    fill: false,
    borderColor: 'black',
    backgroundColor: 'transparent',
    pointBorderColor: 'yellow',
    pointBackgroundColor: 'lightgreen',
    pointRadius: 5,
    pointHoverRadius: 15,
    pointHitRadius: 30,
    pointBorderWidth: 2
  };
 var datathird = {
    label: "NO3",
    data: [10, 12, 9,9, 7.6, 11, 8.0],
    lineTension: 0.3,
    fill: false,
    borderColor: 'purple',
    backgroundColor: 'transparent',
    pointBorderColor: 'purple',
    pointBackgroundColor: 'lightgreen',
    pointRadius: 5,
    pointHoverRadius: 15,
    pointHitRadius: 30,
    pointBorderWidth: 2
  };

var speedData = {
  labels: ["01/3", "02/03", "03/03", "04/03", "05/03", "10/03", "20/03"],
  datasets: [dataFirst, dataSecond,datathird]
};

var chartOptions = {
  legend: {
    display: true,
    position: 'top',
    labels: {
      boxWidth: 80,
      fontColor: 'black'
    }
  }
};

var lineChart = new Chart(speedCanvas, {
  type: 'line',
  data: speedData,
  options: chartOptions
});
}

function grafico4(graf){
	var marksCanvas = document.getElementById(graf);

var marksData = {
  labels: ["K", "PH", "KH", "NO2", "NO3", "Temperatura"],
  datasets: [{
    label: "Valores ideales",
    backgroundColor: "rgba(200,0,0,0.2)",
    data: [6.5, 7, 3, 0.1, 10, 20]
  }, {
    label: "Student B",
    backgroundColor: "rgba(0,0,200,0.2)",
    data: [8, 6,5, 2.8, 0.05, 15, 25]
  }]
};

var radarChart = new Chart(marksCanvas, {
  type: 'radar',
  data: marksData
});
}
function grafico5(graf, titulo){
var speedCanvas = document.getElementById(graf);

Chart.defaults.global.defaultFontFamily = "Lato";
Chart.defaults.global.defaultFontSize = 18;

var speedData = {
  labels: ["01/3", "02/03", "03/03", "04/03", "05/03", "10/03", "20/03"],
  datasets: [{
    label:titulo,
    data: [6, 5.9, 7.5, 6.4, 5.0, 5.5, 5.2],
  }]
};

var chartOptions = {
  legend: {
    display: true,
    position: 'top',
    labels: {
      boxWidth: 80,
      fontColor: 'black'
    }
  }
};

var lineChart = new Chart(speedCanvas, {
  type: 'line',
  data: speedData,
  options: chartOptions
});
}