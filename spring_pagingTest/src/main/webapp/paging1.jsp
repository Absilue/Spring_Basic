<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			//ajax
			$.ajax({
				url: "list1",
				data: {
					start: 10,
					end: 15 
				},
				success: function(result) {
					$('#result').html(result)
				}//success
			})//ajax
		})//b1
		$('#b2').click(function() {
			//ajax
			$.ajax({
				url: "list1",
				data: {
					page : 1 
				},
				success: function(result) {
					$('#result').html(result)
				}//success
			})//ajax
		})//b2
		$('#b3').click(function() {
			//ajax
			$.ajax({
				url: "list1",
				data: {
					page : 2 
				},
				success: function(result) {
					$('#result').html(result)
				}//success
			})//ajax
		})//b3
	})//$
</script>

</head>
<body>
<button id="b1">10-15번까지 가지고 오기</button>
<button id="b2">page1가지고 오기</button>
<button id="b3">page2가지고 오기</button>
<hr>
<div id="result" style="background: yellow"></div>

</body>
</html>