<%@page import="com.multi.test100.MuseumVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>미술관 목록</title>
    <style>
        /* 전체 페이지 테마 */
        body {
            background-color: #bebcba; /* Violet */
            margin: 20px;
            font-family: 'Arial', sans-serif;
        }

        /* 포스트 스타일 */
        .post-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #c7c7de; /* Grey */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
            margin-bottom: 20px;
        }

        .post-info {
            font-weight: bold;
            margin-bottom: 10px;
            color: #000000; /* 검은색 */
        }

        /* 링크 스타일 */
        a {
            color: #383832; /* Grey */
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #e75480; /* 인디고 */
        }

        hr {
            border: 2px solid #e75480; /* 미드나잇 블루 */
        }
    </style>
</head>
<body>
    <% 
        ArrayList<MuseumVO> list = (ArrayList<MuseumVO>)request.getAttribute("list"); 
        for(MuseumVO bag: list){
    %>
        <div class="post-container">
            <div class="post-info">
                미술관명 :  <a href="list2?museum_Id=<%= bag.getMuseum_Id() %>"><%= bag.getName() %></a> <br>
                미술관 위치 :  <%= bag.getLocation()%> <br>
                미술관 운영시간 :  <%= bag.getTime_open()%> <br>
                미술관 운영시간 :  <%= bag.getTime_close()%> <br>
                미술관 휴관일 :  <%= bag.getClosure()%> <br>
                미술관 전화번호 :  <%= bag.getTel()%> <br>               
            </div>
            <hr color="#e75480">
        </div>
    <% } %>
</body>
</html>