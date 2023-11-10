<%@page import="com.multi.mvc01.ProductDTO"%>
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
		ArrayList<ProductDTO> list = (ArrayList<ProductDTO>)request.getAttribute("list");
	%>

	<table border="1">
		<tr bgcolor="pink" align="center">
			<td width=150>제품 ID</td>
			<td width=150>제품 이름</td>
			<td width=150>제품 이미지</td>
		</tr>

		<%for (ProductDTO bag : list) {%>
		<tr bgcolor="lightblue"  align="center">
			<td><%=bag.getId() %></td>
			<td><a href="one2?id=<%= bag.getId() %>"><%= bag.getTitle() %></a></td>
			<td><img src="resources/img/<%=bag.getImg()%>" width="100" height="100"></td>
		</tr>
		<%} %>
	</table>

</body>

</html>