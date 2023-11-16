<%@page import="com.multi.mvc3.ReplyDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.multi.mvc3.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	BbsDTO bag = (BbsDTO)request.getAttribute("bag");
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
	//jquery는 버튼하나당 함수하나, 요청하나당 함수하나 할당
	// 특정한 이벤트가 발생하면 자동으로 함수를 실행시켜주는 방식을 사용(콜백함수)
	// body를 먼저 브라우저가 읽도록 하는 코드를 넣어주어야함($ 코드)

</script>

</head>
<body>
	<button id="b1">컴퓨터 구매 항목 확인</button>
	<hr color="blue">
	<div id="result">ajax 통신결과 들어가는 곳</div>
</body>
</html>