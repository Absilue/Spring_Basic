<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 
	1. id를 받아서 dtd에 저장 
	2. dao db처리하고
	3. 성공하면 bbs.jsp로 넘어가자.
	   bbs.jsp로 넘어가지 전에 alert()를 띄워주자.!
  -->
<jsp:useBean id="bag" class="com.multi.mvc01.BbsDTO2"></jsp:useBean>
<jsp:setProperty property="id" name="bag" />

<%
//스크립트릿(코드블록)

BbsDAO dao = new BbsDAO();
int result = dao.delete(bag);//int
if(result == 1){
%>
	<script>
		alert('게시글 삭제에 성공하였습니다');
		location.href = "bbs.jsp"
	</script>
<% } else { %>
	<script>
		alert('게시글 삭제중 오류가 발생했습니다');
	</script>
<% } %>
