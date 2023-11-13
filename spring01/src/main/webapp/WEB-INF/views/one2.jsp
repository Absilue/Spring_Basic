<%@page import="com.multi.mvc01.ProductDTO"%>
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
	ProductDTO bag = (ProductDTO)request.getAttribute("bag");
%>
<table border="1">
<tr align="center">
	<td bgcolor="pink" width="100">상품id</td>
	<td width="200"><%= bag.getId() %></td>
</tr>
<tr align="center">
	<td bgcolor="pink" width="100">상품title</td>
	<td width="200"><%= bag.getTitle() %></td>
</tr>
<tr align="center">
	<td bgcolor="pink" width="100">상품content</td>
	<td width="200"><%= bag.getContent() %></td>
</tr>
<tr align="center">
	<td bgcolor="pink" width="100">상품price</td>
	<td width="200"><%= bag.getPrice() %></td>
</tr>
<tr align="center">
	<td bgcolor="pink" width="100">상품company</td>
	<td width="200"><%= bag.getCompany() %></td>
</tr>
<tr align="center">
	<td bgcolor="pink" width="100">상품img</td>
	<td width="200">
		<img src="resources/img/<%= bag.getImg() %>" width="200" height="150">
	</td>
</tr>

</table>
<!-- 상품 전체 목록으로 가는 링크 버튼 -->
<a href="list2">
	<button>상품 전체 목록으로</button>
</a>
</body>
</html>