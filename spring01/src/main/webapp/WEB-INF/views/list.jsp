<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
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
		ArrayList<BbsDTO2> list = (ArrayList<BbsDTO2>)request.getAttribute("list");
		
		for(BbsDTO2 bag: list) {
	%>	
		게시판 Id : <%=bag.getId() %> <br>
		<a href="one?id=<%=bag.getId()%>">게시판 Title : <%=bag.getTitle() %> </a> <br>
		게시판 Content : <%=bag.getContent() %> <br>
		게시판 Writer : <%=bag.getWriter() %> <br>
		<hr color="blue">
	<% } %>
</body>

</html>