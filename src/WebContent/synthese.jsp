<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
window.onload = function () {
    var chart = new CanvasJS.Chart("chartContainer");

    chart.options.axisY = { prefix: "", suffix: "" };
    chart.options.title = { text: "Synthése globale des Reprises des nons conformités non traitées" };

    var series1 = { //dataSeries - first quarter
        type: "column",
        name: "Moins de 3 mois",
        showInLegend: true
    };

    var series2 = { //dataSeries - second quarter
        type: "column",
        name: "Plus que 3 mois",
        showInLegend: true
    };

    chart.options.data = [];
    chart.options.data.push(series1);
    chart.options.data.push(series2);


    series1.dataPoints = [
            { label: "Compactage", y: 8 },
            { label: "Etanchéité", y: 2 },
            { label: "Inspection TV", y: 12 },
            { label: "Inspection V", y: 1 },
    ];

    series2.dataPoints = [
        { label: "Compactage", y: 15 },
        { label: "Etanchéité", y: 21 },
        { label: "Inspection TV", y: 2 },
        { label: "Inspection V", y: 13 },
    ];

    chart.render();
}
</script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</head>

<body>
    <div id="chartContainer" style="height: 300px; width: 100%;">
    </div>
    
</body>
</html>