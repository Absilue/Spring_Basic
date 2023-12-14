<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>검색 결과</title>
    <style>
        /* 여기에 list.jsp와 같거나 유사한 스타일을 추가하세요 */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* 다른 스타일들을 추가해도 됩니다 */
        .result-container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .back-btn {
            text-decoration: none;
            padding: 5px 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #f4f4f4;
            color: #333;
        }

        /* 다른 스타일들을 추가해도 됩니다 */
    </style>
</head>
<body>
    <div class="result-container">
        <h2>검색 결과</h2>
        <!-- 검색 결과 표시 등 추가 스타일링 -->
    </div>

    <div style="text-align: center; margin-top: 20px;">
        <a href="list.jsp" class="back-btn">처음 화면으로 돌아가기</a>
    </div>
</body>
</html>