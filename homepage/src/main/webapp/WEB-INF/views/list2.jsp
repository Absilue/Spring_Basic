<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            margin-bottom: 10px;
        }

        .post-info {
            font-weight: bold;
            margin-bottom: 10px;
            color: #000000; /* 검은색 */
            position: relative;
            overflow: hidden; /* 부모 요소에서 넘치는 부분을 숨김 */
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

    .post-info img {
        width: auto;
        max-width: 130px; /* 이미지 최대 너비 설정 */
        height: auto;
        max-height: 130px; /* 이미지 최대 높이 설정 */
        position: absolute;
        top: 50%;
        right: 10px; /* 텍스트와 이미지 사이 간격 조절 */
        transform: translateY(-50%); /* 이미지를 세로로 가운데로 이동 */
    }

        /* 버튼 스타일 */
        .back-btn {
            background-color: #e75480; /* 미드나잇 블루 */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            display: block;
            width: fit-content;
            margin: 10px auto 0; /* 위쪽 여백 추가 및 중앙 정렬 */
        }

        .back-btn:hover {
            background-color: #4682b4; /* 스틸 블루 */
        }
        
        .button-container {
            text-align: center;
            margin-top: 20px; /* 버튼 위 여백 */
        }

        /* 버튼 간의 간격을 위한 스타일 */
        .back-btn {
            display: inline-block; /* 인라인 요소로 변환하여 가로 정렬 */
            margin-right: 10px; /* 버튼 사이 간격 조절 */
        }
        
    </style>
</head>
<body bgcolor="yellow">
    <c:forEach var="program" items="${list2}">
        <div class="post-container">
            <div class="post-info">
                <!-- 프로그램 정보 -->
                <div>
                    프로그램명 : ${program.title} <br>
                    대표 아티스트 : ${program.artist} <br>
                    프로그램 테마 : ${program.theme} <br>
                    전시 시작일 : ${program.start_day} <br>
                    전시 종료일 : ${program.end_day} <br>
                    입장료 : ${program.price}원 <br>
                    문의 전화번호 : ${program.tel} <br>
                </div>
                <!-- 프로그램 이미지 -->
                <img src="resources/img/${program.img}" alt="${program.title} 이미지">
            </div>
            <hr color="#e75480">
            <a href="reserve.jsp" class="back-btn">예약하기</a>
        </div>
    </c:forEach>
    <div class="button-container">
        <a href="${pageContext.request.contextPath}/list" class="back-btn">이전 화면으로 돌아가기</a>
        <a href="museum.jsp" class="back-btn">처음 화면으로 돌아가기</a>
    </div>
</body>
</html>
