<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="header.jsp"%>
<script>
	$(function() {
		//특정한 이벤트가 발생할 때마다
		//자동으로 호출되는 함수를 콜백함수
		//시작하자마자 
		//db의 결과를 webapp로 가지고 와야한다면
		//ajax를 사용하세요.
		$.ajax({
			url: "list.memo",
			success: function(result) {
				$('#result').html(result)
			}
		})
		
		$('#push').click(function() {
			//alert('실행되는가?')
			$.ajax({
				url: "insert.memo",
				data: {
					name : $('#name').val(),
					content :  $('#content').val(),
					weather :  $('#weather').val()
				},
				success: function() {
					alert('메모 추가 성공!!!')
					//전체 리스트를 다시 불러와주세요.!
				    $.ajax({
						url: "list.memo",
						success: function(result) {
							$('#result').html(result)
						}
					})
				}//success
			})//ajax
		})//push
	});
</script>
</head>
<body>
<a href="test.memo?name=aaa&content=bbb">테스트(VO)</a>
	<h2 style="background: orange; color: red; width: 800px; height: 50px;">멀티 메모장!! 자유롭게 아무말이나~~!!</h2>

	이름 : <input id="name" value="win"> 
	메모 : <input id="content" size="30" value="win">
	날씨 : <input id="weather" value="win"> 
	<button id="push">등록</button>
	<div id="result" style="background: yellow; width:800px; height: 300px;"></div>
</body>
</html>
