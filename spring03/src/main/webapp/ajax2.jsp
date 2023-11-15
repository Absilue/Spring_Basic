<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty();
		// $()안에 요청은 반드시 String타입으로 ' ' 안에 넣기
			$.ajax({ // url, success
				url : "test",
				success : function(x) { // 브라우저가 http통신으로 결과를 받아옴
					alert("ajax 통신결과 >> " + x)
					$('#result').append(x+"<br>")
				} // success
			}) // ajax
		}) // #b1
		
		$('#b2').click(function() {
			$('#result').empty();
			// $()안에 요청은 반드시 String타입으로 ' ' 안에 넣기
				$.ajax({ // url, success
					url : "test2",
					success : function(x) { // 브라우저가 http통신으로 결과를 받아옴
						alert("ajax 호출 실행 결과 >> " + x)
						$('#result').append(x+"<br>")
					} // success
				}) // ajax
			}) // #b1
	}) // $
</script>

</head>
<body>
	<button id="b1">b1 실행 버튼</button>
	<button id="b2">b2 실행 버튼</button>
	<hr color="blue">
	<div id="result">ajax 통신결과 들어가는 곳</div>
</body>
</html>