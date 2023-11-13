<%@page import="com.multi.mvc01.BbsDTO"%>
<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <jsp:useBean id="bag" class="com.multi.mvc01.BbsDTO"></jsp:useBean>
    <jsp:setProperty property="id" name="bag"/>
    <%
    //jsp에서 자동import ==> "클릭" -> ctrl + shift + m
        	BbsDAO dao = new BbsDAO();
        	BbsDTO bag2 = dao.one(bag);
    %>
    
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
			<%= session.getAttribute("id") %>님 환영합니다.
			<a href="logout.jsp">
				<button class="btn btn-outline-danger">로그아웃</button>
			</a>
		<% } %>
		<br>
		<hr color="blue">
		<!-- insert2.jsp?title=1&content=1 -->
		<form action="update2">
			<input name="id" value="<%= bag2.getId() %>" type="hidden">
				<table border="1"  class="table table-hover">
					<tr  class="table-warning">
						<td width="200">제목</td>
						<td width="300"><input name="title" value="<%= bag2.getTitle()%>"></td>
					</tr>
					<tr  class="table-warning">
						<td width="200">내용</td>
						<td width="300">
							<textarea name="content" rows="5" cols="20"><%= bag2.getContent()%>
						</textarea></td>
					</tr>
					<tr  class="table-warning">
						<td width="200">작성자</td>
						<td width="300">
							<input name="writer" value="${id}" readonly="readonly">
						</td>
					</tr>
					<tr  class="table-warning">
						<td width="200" colspan="2">
							<button type="submit" class="btn btn-info">글수정하기</button>
						</td>
					</tr>
				</table>
		</form>
	</div>
</div>
</body>
</html>