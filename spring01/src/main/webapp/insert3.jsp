<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<h3>상품등록 요청 되었음. 등록된 상품 개수: ${result} 개</h3>
<%
	int result = (int)request.getAttribute("result");
	if(result == 1){
		out.print("<img src=resources/img/ok.jpg>");
	}else{
		out.print("<img src=resources/img/no.png>");
	}
%>
<a href="product.jsp">등록화면으로!</a>
</body>
</html>