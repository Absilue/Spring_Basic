<%@page import="com.multi.mvc3.ReplyDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.multi.mvc3.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//컨트롤러에서 모델로 지정한 것 request.getAttribute("모델이름");
	BbsDTO bag = (BbsDTO) request.getAttribute("bag");
	//작 = (작)큰;
%>

<%
	session.setAttribute("user", "apple");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>

<style>
body {
	background-color: #ffe4e1; /* 미스트 로즈 */
	margin: 20px;
}

hr {
	border: 2px solid #e75480; /* 미드나잇 블루 */
}

.container {
	max-width: 800px;
	margin: 0 auto;
	background-color: #fafad2; /* 레몬치킨 */
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
}

.post-info {
	font-weight: bold;
	margin-bottom: 10px;
}

.reply-info {
	margin-left: 20px;
	margin-top: 10px;
}
</style>

<script type="text/javascript" src="resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
$(function() {
	$('#b1').click(function () {
		$.ajax({
			url : "insert4",
			data : {
				oriid : '<%= bag.getId()%>',
				content : $('#reply').val(),
				writer : '${user}'
			},
			success : function(response) {
				$('#result').append(response)
			} // success
		}) //ajx
	}) // b1
}) // $
</script>
</head>
<body>
	<div class="container">
		<div class="post-info">

			게시판 id
			<%=bag.getId()%>
			<br> 게시판 title
			<%=bag.getTitle()%>
			<br> 게시판 content
			<%=bag.getContent()%>
			<br> 게시판 writer
			<%=bag.getWriter()%>
			<br>
		</div>
		<hr color="#e75480">
		댓글 입력 : <input id="reply" value="댓글">
		<button id="b1">댓글 달기</button>


		<hr color="#e75480">

		<div id="result">
			<%
				List<ReplyDTO> list = (List<ReplyDTO>) request.getAttribute("list");
			%>

			<%
				for (ReplyDTO dto : list) {
			%>

			<%=dto.getId()%>,
			<%=dto.getOriid()%>,
			<%=dto.getContent()%>,
			<%=dto.getWriter()%>
			<br>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>