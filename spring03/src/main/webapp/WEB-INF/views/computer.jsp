<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 목록</title>
<style>
body {
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f0f0f0; /* 배경 색상 추가 */
}

table {
    width: 50%;
    border-collapse: collapse;
    margin: 20px 0;
    background-color: #ffffff; /* 테이블 배경 색상 추가 */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* 그림자 효과 추가 */
}

th, td {
    border: 1px solid #dddddd;
    text-align: center;
    padding: 8px;
}

th {
    background-color: #b0e0e6; /* 파스텔 블루 */
}

tr:nth-child(even) {
    background-color: #e6e6fa; /* 파스텔 퍼플 */
}

tr:hover {
    background-color: #d3d3d3; /* 파스텔 그레이 */
}
</style>
</head>
<body>

    <table border="1">
        <thead>
            <tr>
                <th>제품명</th>
                <th>제품 가격</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>${vo.com}</td>
                <td>${vo.price}</td>
            </tr>
            <tr>
                <td>${vo.mouse}</td>
                <td>${vo.price2}</td>
            </tr>
            <tr>
                <td>총합</td>
                <td>${vo.price + vo.price2}</td>
            </tr>
        </tbody>
    </table>

</body>
</html>