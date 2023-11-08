<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	게시판 글쓰기 요청됨  <br>
	글쓰기한 행의 개수 : ${result } <hr> <br>
	<%
		String result = (String)request.getAttribute("result");
	%>
	<a href="bbs.jsp">게시판 목록으로 이동</a>
</body>
</html>