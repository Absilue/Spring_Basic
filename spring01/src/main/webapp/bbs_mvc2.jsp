<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
  input {
    text-align: center;
  }
</style>

</head>
<body>
<a href="list">게시판 전체 목록</a><br>
<hr color="red">

<form action="one">
	보고 싶은 게시판 번호 <input name="id" value="2"> 
	<button>게시판 상세 정보 요청</button>
</form>
</body>
</html>