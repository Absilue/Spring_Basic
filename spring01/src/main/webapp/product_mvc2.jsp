<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        .center-input {
            text-align: center;
        }
    </style>
</head>
<body>
	<a href="list2">상품 전체 목록</a><br><br>
	<hr color="blue"><br>
	
	<form action="one2">내가 보고 싶은 상품 번호 : <input name="id" value="100" 
			style="text-align: center;" class="center-input">
		<button>상품 상세 정보 요청</button>
	</form>
</body>
</html>