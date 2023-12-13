<%@page import="com.multi.test100.ProgramVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>프로그램 목록</title>
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
            background-color: #c7c7de; /* 보라색 */
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
        ArrayList<ProgramVO> list = (ArrayList<ProgramVO>)request.getAttribute("list2"); 
        for(ProgramVO bag: list){
    %>
        <div class="post-container">
            <div class="post-info">
                프로그램명 : <%= bag.getTitle()%> <br>
                프로그램 이미지 : <%= bag.getImg()%> <br>
                대표 아티스트 : <%= bag.getArtist()%> <br>
                프로그램 테마 : <%= bag.getTheme()%> <br>
                전시 시작일 : <%= bag.getStart_day()%> <br>
                전시 종료일 : <%= bag.getEnd_day()%> <br>
                입장료 : <%= bag.getPrice()%>원 <br>
                문의 전화번호 : <%= bag.getTel()%> <br>               
            </div>
            <hr color="#e75480">
        </div>
    <% } %>
</body>
</html>
