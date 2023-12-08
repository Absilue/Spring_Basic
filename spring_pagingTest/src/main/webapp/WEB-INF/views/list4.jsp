<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int pages = (int)request.getAttribute("pages");
	for(int p = 1; p <= pages; p++){
%>
	<a href="list4?page=<%= p %>">
		<button style="background: pink;"><%= p %></button>
	</a>
<%		
	}
%>
	<table border="1">
		<tr bgcolor="lime">
			<td>행번호</td>
			<td>id</td>
			<td>이메일</td>
			<td>차이름</td>
		</tr>
		<c:forEach items="${list}" var="vo">
			<tr>
				<td>${vo.row_no}</td>
				<td>${vo.id}</td>
				<td>${vo.email}</td>
				<td>${vo.car}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>