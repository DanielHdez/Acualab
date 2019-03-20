onload=graficos;
function graficos(){

	grafico("popChart");
	grafico2("popChart1");
	grafico("popChart2");
	grafico3("speedChart");
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
function grafico2(graf){
var speedCanvas = document.getElementById(graf);

Chart.defaults.global.defaultFontFamily = "Lato";
Chart.defaults.global.defaultFontSize = 18;

var speedData = {
  labels: ["0s", "10s", "20s", "30s", "40s", "50s", "60s"],
  datasets: [{
    label: "Car Speed (mph)",
    data: [0, 59, 75, 20, 20, 55, 40],
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
    data: [0, 59, 75, 20, 20, 55, 40],
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
    data: [20, 15, 60, 60, 65, 30, 70],
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
    data: [10, 12, 50,40, 45, 60, 80],
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
  labels: ["0 ", "10", "20", "30", "40", "50", "60", "mg/l"],
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