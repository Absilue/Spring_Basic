<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		background: orange;
	}
	*{
		font-size: 20px;
		text-align: center;
	}
	.left { 
		/* 여러개를 선택해서 지정하고 싶을 때 클래스를 사용. 클래스 중 left에 해당하는 것만 스타일을 지정해라. */
		/* 클래스 선택은 .클래스명 */
		width: 100px;
		background: blue;
		color: white;
	}
	#bottom {
		background: red;
		color: yellow;
	}
	input{
		background: greenyellow;
	}
</style>
</head>
<body>
		<h3>상품등록수정화면입니다.</h3>
		<hr color="red">
		<form action="update3">
		<table border="1" align="center">
			<tr>
				<td>id: </td>
				<td>
					<input name="id" value="111">
				</td>
			</tr>
			<tr>
				<td>title: </td>
				<td>
					<input name="title" value="111">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">상품수정요청</button>
					<!-- <input type="submit" value="회원가입요청"> --> 
					<!-- 컨트롤 + 쉬프트 + 슬러시(/): 주석 -->
					<!-- form 안에 들어있는 버튼은 전송용 버튼 -->
					<!-- type="submit"은 생략할 수 있음.-->
				</td>
			</tr>
		</table>
		</form>
</body>
</html>