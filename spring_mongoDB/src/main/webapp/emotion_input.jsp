<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="header.jsp"%>
</head>
<body>
	<form action="emotion">
	<div class="form-floating mb-3 mt-3">
	   <span class="input-group-text">감정분석할 문장을 입력하세요 : </span>
		<input 	name="sentence" 
				class="form-control"
				style="background: yellow;"
				value="유재석 최고 재미 짱.!!">
		<button class="btn btn-primary" style="width:100%">감정분석 요청(런닝맨 리뷰)!</button>
	 </div>
	</form>
	<hr>
	<form action="emotion">
	 <div class="form-floating mb-3 mt-3">
 		<span class="input-group-text">감정분석할 문장을 입력하세요 : </span>
		<input 	name="sentence" 
				class="form-control"
				style="background: yellow;"
				value="갑자기 모든 것이 꿈이라니.. 너무 허무하다. 마지막화 짜증">
		<button class="btn btn-primary" style="width:100%">감정분석 요청(부자집 막내아들 리뷰)!</button>
	 </div>
	</form>
	<hr>
	<form action="emotion">
	 <div class="form-floating mb-3 mt-3">
	  <span class="input-group-text">감정분석할 문장을 입력하세요 : </span>
		<input 	name="sentence" 
				class="form-control"
				style="background: yellow;"
				value="화려한데 밋밋하고 지루 이건 오류 아닌가">
		<button  class="btn btn-primary" style="width:100%">감정분석 요청(영화 아바타 리뷰)!</button>
	 </div>
	</form>
	<hr>
</body>
</html>
