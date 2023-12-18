<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>서울시 미술관 ChatBot</title>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="resources/js/sockjs-0.3.4.js"></script>
    <script type="text/javascript" src="resources/js/stomp.js"></script>
    <script type="text/javascript" src="resources/js/webSocketSendToUserApp.js"></script>

    <style>
        /* 전체 페이지 테마 */
        body {
            background-color: #bebcba; /* Violet */
            color: #000000; /* Black */
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
        }

        /* 링크 스타일 */
        a {
            color: #9191c4; /* Yellow */
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            color: #e75480; /* Violet */
        }

        hr {
            border: 2px solid #c7c7de; /* Grey */
        }

        /* 폼 스타일 */
        .input-group {
            display: flex;
            flex-wrap: wrap;
        }

        input {
            text-align: center;
            padding: 10px;
            margin: 10px 0;
            flex: 1 0 80%;
            box-sizing: border-box;
        }

        button {
            background-color: #e75480; /* 수정한 부분 */
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            flex: 1 0 20%;
            border-color: #e75480; /* 테두리 색상 */
        }

        /* 미술관 전체 목록 */
        .link {
            font-size: 24px;
            display: block;
            text-align: center;
        }

        /* 수정한 부분: 글자색과 박스 배경색 */
        #response {
            color: #fff; /* 수정한 부분: 글자색 */
            background-color: #e75480; /* 수정한 부분: 박스 배경색 */
            border-color: #e75480; /* 수정한 부분: 박스 테두리 색상 */
            text-align: center;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #e75480;">
    <div class="container">
        <a class="navbar-brand" href="#">서울시 미술관 ChatBot</a>
    </div>
</nav>
<div class="container mt-5">
    <img src="resources/img/seoul.jpg" class="img-fluid mb-4" alt="Payco Logo">
    <hr>
    <div id="conversationDiv">
        <p id="response" class="alert alert-success">
            문의사항 >> 1)미술관 관련 문의사항 2)프로그램 관련 문의사항 3)기타 문의사항<br>
        </p>
        <div class="input-group mb-2">
            <input type="text" id="text" placeholder="명령어를 입력해주세요" class="form-control" style="flex: 1 0 80%;" />
            <button id="sendMessage" onclick="sendMessage();" class="btn btn-primary" style="flex: 0 0 20%; background-color: #e75480; border-color: #e75480;">전송</button>
        </div>
    </div>
</div>
</body>
</html>