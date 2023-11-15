<%@page import="java.util.ArrayList"%>
<%@page import="com.multi.mvc3.BbsDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
    <style>
        body {
            background-color: #fafad2; /* 레몬치킨 */
            margin: 20px;
            font-family: 'Arial', sans-serif;
        }

        .post-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #ffebcd; /* 프랑스 블루 */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
            margin-bottom: 20px;
        }

        .post-info {
            font-weight: bold;
            margin-bottom: 10px;
        }

        a {
            color: #008080; /* 다크 시안 */
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #4b0082; /* 인디고 */
        }

        hr {
            border: 2px solid #e75480; /* 미드나잇 블루 */
        }
    </style>
</head>
<body bgcolor="yellow">
    <% 
        ArrayList<BbsDTO> list = (ArrayList<BbsDTO>)request.getAttribute("list"); 
        for(BbsDTO bag: list){
    %>
        <div class="post-container">
            <div class="post-info">
                게시판 id <%= bag.getId() %> <br>
                <a href="one?id=<%= bag.getId() %>">게시판 title <%= bag.getTitle() %></a>
                <br>
                게시판 writer <%= bag.getWriter() %> <br>
            </div>
            <hr color="#e75480">
        </div>
    <% } %>
</body>
</html>
