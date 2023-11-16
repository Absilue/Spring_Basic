<%@page import="com.multi.mvc3.ReplyDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.multi.mvc3.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function () {
		$('#b1').click(function() {
			$.ajax({
				url : "string",
				success : function(string) {
					alert(string)
					$('#result').text(string)
					let img = "<img src = 'resources/img/no.png'>";
					if(string == 'winner'){
						img = "<img src = 'resources/img/yes.png'>";
					}
					$('#result').append(img)
				} // success
			}) // ajax
		}) // #b1
		
		$('#b2').click(function() {
			$.ajax({
				url : "json1",
				success : function(json) {
					console.log(json)
					console.log(json.writer)
					// json을 프린트 할 일이 있으면 브라우저의 console을 이용하는게 더 자세함
					
					id_value = json.id
					title_value = json.title
					content_value = json.content
					writer_value = json.writer

					data = id_value + " " + title_value + " " + content_value + " " + writer_value
					$('#result').append(data + "<br>")
				} // success
			}) // ajax
		}) // #b2
		
		$('#b3').click(function() {
			$.ajax({
				url : "json2",
				success : function(array) {
					console.log(array)
					
					$(array).each(function(i, json) {
						// function(index 저장 변수명, 하나씩 꺼내서 넣어줄 변수명)을 순서대로 적어야함
						id_value = json.id
						title_value = json.title
						content_value = json.content
						writer_value = json.writer
						
						data = id_value + " " + title_value + " " + content_value + " " + writer_value
						$('#result').append(data + "<br>")
					}) // for
				} // success
			}) // ajax
		}) // #b3
	}) // $
</script>

</head>
<body>
	<button id="b1">JSON1로 데이터 받아오기(String)</button>
	<button id="b2">JSON2로 데이터 받아오기(Json)</button>
	<button id="b3">JSON2로 데이터 받아오기(Array)</button>
	<hr color="blue">
	<div id="result" style="background : yellow">ajax 통신결과 들어가는 곳 <hr></div>
</body>
</html>