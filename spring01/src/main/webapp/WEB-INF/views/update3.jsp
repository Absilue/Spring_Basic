<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<h3>update성공/실패했는지 결과</h3>
<%
	//상속관계에서만 작/큰 판단.!
	//int -- Integer -- Object
	int result = (int)request.getAttribute("result");
	if(result == 1){
		out.print("<h3>수정 성공</a>");
	}else{
		out.print("<h3>수정 실패</a>");
	}
%>
</body>
</html>