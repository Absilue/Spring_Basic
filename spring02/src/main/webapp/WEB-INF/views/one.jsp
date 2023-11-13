<%@page import="com.multi.mvc02.BookDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
    <h3>북마크가 검색결과</h3>
    <%
        BookDTO dto = (BookDTO)request.getAttribute("one");
    %>
    <table>
        <tr>
            <th>북마크 ID</th>
            <td><%=dto.getId()%></td>
        </tr>
        <tr>
            <th>북마크 이름</th>
            <td><%=dto.getName()%></td>
        </tr>
        <tr>
            <th>북마크 URL</th>
            <td><%=dto.getUrl()%></td>
        </tr>
        <tr>
            <th>북마크 이미지</th>
            <td><%=dto.getImg()%></td>
        </tr>
    </table>
    <a href="index.jsp">
        <button>첫 화면으로 돌아가기</button>
    </a>
</body>
</html>