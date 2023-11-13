<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
    
		insert.jsp —> insert2.jsp --dto—> dao --sql—> db
		browser	<— html      	   <—1                   <—1
		
		1. basket.jsp를 복사해서 insert2.jsp를 만드세요.
		2. bag(dto)를 만들어서 받은 앞페이지에서 받은 데이터를 dto에 넣으세요.
		    액션태그 사용(jsp:useBean,jsp:setProperty)
		3. dao.insert(bag)을 이용해서 db처리후 결과가 1이면 bbs.jsp로 화면자동 넘김
		    response.sendRedirect(“bbs.jsp”);
		4. db처리후 결과가 1이 아니면 ~~~ 저와함께 구현!
     -->
     <jsp:useBean id="bag" class="com.multi.mvc01.BbsDTO"></jsp:useBean>
     <jsp:setProperty property="*" name="bag"/>
     
     <%
     	BbsDAO dao = new BbsDAO();//????????
     	int result = dao.insert(bag);//1
     	if(result == 1){
     		response.sendRedirect("bbs.jsp");
     	}
     %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/project.css">
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
	<br><br>
		<% if(session.getAttribute("id") != null ) { %>
			<%= session.getAttribute("id") %>님 환영합니다.
			<a href="logout.jsp">
				<button class="btn btn-outline-danger">로그아웃</button>
			</a>
		<% } %>
	</div>
</div>
</body>
</html>