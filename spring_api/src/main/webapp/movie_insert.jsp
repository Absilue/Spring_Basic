<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/menuCss.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

</head>
<body>
	<div id="total">
		<div id="center">
			<h3 style="text-align: center;">영화 등록 페이지</h3>
			<hr color="grey">
			<form 	action="insert2" id="form" 
					method="post" 
					enctype="multipart/form-data" >
				<span class="input-group-text">TITLE</span> 
				
				<input type="text"
					class="form-control input-sm" name="title" placeholder="title" 
					value="서울의 봄"
					><br>
					
				<span class="input-group-text">IMG</span>
						파일 선택: <input class="btn btn-danger" 
										type="file" 
										name="file" ><br>
					
				<span class="input-group-text">GENRE</span> 
				<input type="text"
					class="form-control" name="genre" placeholder="genre" value="시대물"><br>
					
				<span class="input-group-text">RUNNING_TIME</span> 
				<input
					type="text" class="form-control" name="running_time"
					placeholder="running_time" value="2"><br> 
					<span
					class="input-group-text">VIDEO</span> 
					<input type="text"
					class="form-control" name="link" placeholder="link" value="https://namu.wiki/w/%EC%84%9C%EC%9A%B8%EC%9D%98%20%EB%B4%84(%EC%98%81%ED%99%94)"><br>
				<button type="submit" class="btn btn-secondary">등록</button>
			</form>
		</div>
	</div>
</body>
</html>