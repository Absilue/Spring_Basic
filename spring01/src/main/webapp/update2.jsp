<%@page import="com.multi.mvc01.BbsDTO2"%>
<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <!-- 1. update에서 전달된 데이터들을 가방을 새로 만들어 집어넣음  --> 
   <!-- 2. dao를 이용해 db처리  --> 
   <!-- 3. dao로부터 받은 결과가 1이면 alert('수정이 완료되었습니다') 처리하고 bbs.jsp로 화면을 넘김  --> 
   <!-- 4. dao로부터 받은 결과가 1이 아니면 alert('수정중 오류가 발생했습니다') 처리  --> 
   
    <jsp:useBean id="bag" class="com.multi.mvc01.BbsDTO2"></jsp:useBean>
    <jsp:setProperty property="*" name="bag"/>
    <%
    	BbsDAO dao = new BbsDAO();
    	int result = dao.update(bag);
    	if (result == 1){
    %>
			<script>
			alert('수정이 완료되었습니다');
			location.href='bbs.jsp';
			</script>
	<%	}else{ 
	%>	<script>
    		alert('수정중 오류가 발생했습니다');
			</script>
    <%	}	%>