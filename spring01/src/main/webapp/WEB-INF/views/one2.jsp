<%@page import="com.multi.mvc01.ProductDTO"%>
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
	ProductDTO bag = (ProductDTO) request.getAttribute("bag");
	%>

	<table border="1">
		<tr bgcolor="pink" align="center">
			<td width=150>제품 ID</td>
			<td width=150><%=bag.getId()%></td>
		</tr>
	</table>

	<table border="1">
		<tr bgcolor="pink" align="center">
			<td width=150>제품 이름</td>
			<td width=150><%=bag.getTitle()%></td>
		</tr>
	</table>

	<table border="1">
		<tr bgcolor="pink" align="center">
			<td width=150>제품 내용</td>
			<td width=150><%=bag.getContent()%></td>
		</tr>
	</table>

	<table border="1">
		<tr bgcolor="pink" align="center">
			<td width=150>제품 가격</td>
			<td width=150><%=bag.getPrice()%></td>
		</tr>
	</table>

	<table border="1">
		<tr bgcolor="pink" align="center">
			<td width=150>제품 제조회사</td>
			<td width=150><%=bag.getCompany()%></td>
		</tr>
	</table>

	<table border="1">
		<tr bgcolor="pink" align="center">
			<td width=150>제품 이미지</td>
			<td><img src="resources/img/<%=bag.getImg()%>" width="150" height="200"></td>
		</tr>
	</table>
		<br>
		<a href="list2">
			<button>상품 전체 목록으로 돌아가기</button>
		</a>		
</body>
</html>