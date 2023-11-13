<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
  td {
    text-align: center;
  }
</style>

</head>
<body>
	<img src="resources/img/naver.jpg">
	<br>
	<h1>북마크 정보 검색</h1>
	<form action="one">
	<table>
		<tr>
			<td>아이디 :  </td>
			<td><input type = "text"  name = "id"></td>
		</tr>

		<tr>
			<td colspan="1"><button type="submit">서버로 전송</button></td>
		</tr>
	</table>
	</form>

	<hr color="green">
	<h1>북마크 전체 검색</h1>
	<form action="list">
	<table>
		<tr>
			<td><button>전체 검색 요청</button></td>
		</tr>
	</table>
	</form>

	<hr color="green">
	<h1>북마크 추가</h1>
	<form action="insert">
	<table>
		<tr>
			<td>아이디 :  </td>
			<td><input type = "text" name = "id"></td>
		</tr>


		<tr>
			<td>이름 :  </td>
			<td><input type = "text"  name = "name"></td>
		</tr>

		<tr>
			<td>URL :</td>
			<td><input type = "text"  name = "url"></td>
		</tr>

		<tr>
			<td>IMG :</td>
			<td><input type = "text"  name = "img"></td>
		</tr>
		<tr>
			<td colspan="1"><button type="submit">서버로 전송</button></td>
		</tr>
	</table>
	</form>

	<hr color="green">
	<h1>북마크 수정</h1>
	<form action="update">
	<table>
		<tr>
			<td>아이디 :</td>
			<td><input type = "text"  name = "id"></td>
		</tr>

		<tr>
			<td>이름 :</td>
			<td><input type = "text"  name = "name"></td>
		</tr>

		<tr>
			<td colspan="1"><button type="submit">서버로 전송</button></td>
		</tr>
	</table>
	</form>
</body>
</html>