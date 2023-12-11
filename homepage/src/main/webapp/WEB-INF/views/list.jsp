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
        ArrayList<MuseumVO> list = (ArrayList<MuseumVO>)request.getAttribute("list"); 
        for(MuseumVO bag: list){
    %>
        <div class="post-container">
            <div class="post-info">
                미술관 ID <%= bag.getMuseum_Id()%> <br>
                미술관명 <%= bag.getName()%> <br>
                미술관 위치 <%= bag.getLocation()%> <br>
                미술관 운영시간 <%= bag.getTime_open()%> <br>
                미술관 운영시간 <%= bag.getTime_close()%> <br>
                미술관 휴관일 <%= bag.getClosure()%> <br>
                미술관 전화번호 <%= bag.getTel()%> <br>               
            </div>
            <hr color="#e75480">
        </div>
    <% } %>
</body>
</html>
