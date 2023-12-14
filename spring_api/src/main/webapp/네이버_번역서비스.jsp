<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="header.jsp" %>
</head>
<body>
<h3>번역할 데이터 입력</h3>
<form action="trans">
  <div class="mb-3 mt-3">
    <label for="ko" class="form-label">번역할 한글 문장 입력</label>
    <input type="text" class="form-control" name="ko" value="내일은 금요일이야.!! 신난다.!">
  </div>
<button class="btn btn-danger">한글을 영어로 번역해주세요.</button> 
</form>
</body>
</html>