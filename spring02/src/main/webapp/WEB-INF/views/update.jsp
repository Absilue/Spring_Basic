<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>북마크 수정 성공</title>
    <style>
        body {
            background-color: #03C75B;
            font-family: 'Arial', sans-serif;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        main {
            text-align: center;
        }

        h3 {
            color: #333;
        }

        a {
            text-decoration: none;
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #03C75B;
            color: white;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #2077c8;
        }
    </style>
</head>
<body>
    <main>
        <h3>북마크가 성공적으로 수정되었습니다</h3>
        <a href="index.jsp">첫 화면으로 돌아가기</a>
    </main>
</body>
</html>