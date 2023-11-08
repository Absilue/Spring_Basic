<%@page import="com.multi.mvc01.BbsDTO2"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/project.css">
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include> <!-- 액션태그 -->
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
	<br>
		<% if(session.getAttribute("id") != null ) { %>
			<span class="alert alert-success"> 
				<%=session.getAttribute("id")%>님 환영합니다.
			</span>
			<a href="insert.jsp">
				<button class="btn btn-danger">글쓰기</button>
			</a>
			<a href="logout.jsp">
				<button class="btn btn-outline-danger">로그아웃</button>
			</a>
		<% } %>
		<%
			BbsDAO dao = new BbsDAO();
			ArrayList<BbsDTO2> list = dao.list();
		%>
		전체게시물: <%= list.size() %>개 
		<br><br>
		<table border="1" class="table table-hover">
				<thead>
					<tr class="table-warning">
						<td>게시글</td>
						<td>내용</td>
						<td>작성자</td>
					</tr>
				</thead>
				<tbody>
				<% for(BbsDTO2 bag: list) {%>
					<tr class="table-info">
						<td><%= bag.getTitle() %></td>
						<td>
							<a href="bbs2.jsp?id=<%= bag.getId() %>">
								<%= bag.getContent() %>
							</a>
						</td>
						<td><%= bag.getWriter() %></td>
					</tr>
				<%} %>
				</tbody>
		</table>
		
	</div>
</div>
</body>
</html>