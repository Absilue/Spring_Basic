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
				url : "json.jsp",
				dataType : "json",
				success : function(json) {
					$('#result').html(json.tel)
				} // success
			}) // ajax
		}) // #b1
		
		$('#b2').click(function() {
			$.ajax({
				url : "json2.jsp",
				dataType : "json",
				success : function(array) {
					$('#result').html(array.tel)
				} // success
			}) // ajax
		}) // #b1
	}) // $
</script>

</head>
<body>
	<button id="b1">JSON1로 데이터 받아오기</button>
	<button id="b2">JSON2로 데이터 받아오기</button>
	<hr color="blue">
	<div id="result">ajax 통신결과 들어가는 곳</div>
</body>
</html>