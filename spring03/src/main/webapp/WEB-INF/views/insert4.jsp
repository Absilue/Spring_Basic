<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	int result = (int)request.getAttribute("result");
	if(result == 1){		
%>
	${replyDTO.id}, ${replyDTO.oriid} ${replyDTO.content}, ${replyDTO.writer} <br>
<%
	}
%>