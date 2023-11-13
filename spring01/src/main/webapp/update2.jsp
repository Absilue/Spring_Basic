<%@page import="com.multi.mvc01.BbsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	1. 앞 페이지에서 전달된 데이터들을 가방을 만들어서 다 집어넣어주세요.
	==> 액션태그 사용- jsp:useBean, jsp:setProperty사용하면 더 좋습니다.
	2. dao를 이용해서 db처리해주세요.
	3. dao로부터 받은 결과가 1이면 alert("수정성공@@@")를 띄워주고 
	   bbs.jsp로 화면을 넘김 
	4. 결과가 1이 아니면 alert("수정실패@@@")를 띄워주세요.  
 -->
 <jsp:useBean id="bag" class="com.multi.mvc01.BbsDTO"></jsp:useBean>
 <jsp:setProperty property="*" name="bag"/>
 
 <%
 	BbsDAO dao = new BbsDAO();
 	int result = dao.update(bag);
 	if(result == 1){
 %>
 		<script>
 			alert('수정성공@@@');
 			location.href='bbs.jsp';
 		</script>
 <%
 	}else{
 %>	
 		<script>
 			alert('수정실패@@@');
 		</script>
 <%	} %>
 %>