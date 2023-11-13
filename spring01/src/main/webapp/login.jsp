<%@page import="com.multi.mvc01.MemberDAO"%>
<%@page import="com.multi.mvc01.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--1. 클라이언트가 입력해서 전달한 id, pw를 받아서 저장   -->
    <%
    	String id = request.getParameter("id");
    	String pw = request.getParameter("pw");
    
    	MemberDTO bag = new MemberDTO();
    	bag.setId(id);
    	bag.setPw(pw);
    	
    	MemberDAO dao = new MemberDAO();
    	int result = dao.login(bag); //boolean(true/false)
    	if(result == 1){ //if(조건) {조건이 true이면 이 괄호를 실행해라!}
    		//세션을 설정해주자.!!!
    		session.setAttribute("id", bag.getId());
    	}
    	//화면을 첫화면으로 넘어가자.!
    	response.sendRedirect("member.jsp");
    	//서버가 클라이언트(브라우저)에게 member.jsp를 
    	//요청하라고 명령!!
    %>
    <!--2. dao를 이용해서 db처리, login(bag) -->
    <!--3. 결과는 member.jsp로 다시 돌아감. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>