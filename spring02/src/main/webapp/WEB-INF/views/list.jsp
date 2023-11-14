<%@page import="java.util.List"%>
<%@page import="com.multi.mvc02.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>북마크 검색 결과</title>
<style>
body {
	background-color: #03C75B;
	font-family: 'Arial', sans-serif;
	margin: 0;
}

header {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 1em;
}

main {
	max-width: 800px;
	margin: 20px auto;
	padding: 20px;
	background-color: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h3 {
	color: #333;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
	text-align: center;
}

th, td {
	border: 1px solid #ddd;
	padding: 10px;
}

th {
	background-color: #f2f2f2;
}

a {
	text-decoration: none;
	display: inline-block;
	padding: 10px 20px;
	background-color: #03C75B;
	color: white;
	border-radius: 5px;
	transition: background-color 0.3s;
}

a:hover {
	background-color: #2077c8;
}

.bookmark-link {
    color: white;
    text-decoration: none;
}

.bookmark-link:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
	<header>
		<h1>북마크 검색 결과</h1>
	</header>

	<main>
		<%
			List<BookDTO> list = (List<BookDTO>)request.getAttribute("list");
		%>
		<table>
			<tr>
				<th>북마크 ID</th>
				<th>북마크 이름</th>
				<th>북마크 URL</th>
				<th>북마크 로고</th>
			</tr>
			<%
				for(BookDTO dto : list) {
			%>
			<tr>
				<td><%=dto.getId()%></td>
				<td><a class="bookmark-link" href="one?id=<%=dto.getId()%>">
				<%=dto.getName()%></a></td>
				<td><a class="bookmark-link" href="<%=dto.getUrl()%>" target="_blank"><%=dto.getUrl()%></a></td>
				<td><img src="resources/img/<%=dto.getImg()%>" width = 200 height = 100></td>
			</tr>
			<% } %>
		</table>
		<a href="index.jsp">첫 화면으로 돌아가기</a>
	</main>
</body>
</html>