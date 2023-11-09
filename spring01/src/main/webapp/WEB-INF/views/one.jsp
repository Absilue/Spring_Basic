<%@page import="com.multi.mvc01.BbsDTO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<%
		// 컨트롤러에서 모델로 지정한 것
		// request.getAttribute("모델이름")으로 꺼냄
		BbsDTO2 bag = (BbsDTO2)request.getAttribute("bag");
	%>
</body>
	게시판 Id : <%=bag.getId() %> <br>
	게시판 Title : <%=bag.getTitle() %> <br>
	게시판 Content : <%=bag.getContent() %> <br>
	게시판 Writer : <%=bag.getWriter() %> <br>
</html>