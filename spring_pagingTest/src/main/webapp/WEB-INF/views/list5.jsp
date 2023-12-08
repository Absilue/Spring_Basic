<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
<script type="text/javascript">
	$(function() {
		$('.pages').click(function() {
			$.ajax({
				url: "list0",
				data: {
					page: $(this).text()
				},
				success: function(table) {
					$('#result').html(table)
				}
			})
		})
	})
</script>
</head>
<body>
<%
	int pages = (int)request.getAttribute("pages");
	for(int p = 1; p <= pages; p++){
%>
		<button style="background: pink;" class="pages"><%= p %></button>
<%		
	}
%>
<div id="result">
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
</div>
</body>
</html>