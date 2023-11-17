<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
    <script type="text/javascript">
    
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);
      
      function drawChart() {
		$.ajax({
			url : "chart1",
			success : function(array){
					alert(array.length)
					var data = google.visualization.arrayToDataTable([
					          ['Task', 'Hours per Day'],
					          [array[0].doing, array[0].time],
					          [array[1].doing, array[1].time],
					          [array[2].doing, array[2].time],
					          [array[3].doing, array[3].time],
					          [array[4].doing, array[4].time],
					          [array[5].doing, array[5].time],
					          [array[6].doing, array[6].time]
					]);
					var options = {
						    title: '나의 주중 하루',
						    colors: ['#FFD1DC', '#FFB6C1', '#FFA07A', '#FFD700', '#98FB98', '#AFEEEE', '#ADD8E6']
						};

			        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

			        chart.draw(data, options);
			   }//success
			})//ajax
		}//drawChart  
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>