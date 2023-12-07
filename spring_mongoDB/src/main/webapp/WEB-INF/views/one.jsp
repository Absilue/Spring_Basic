<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HTML Table 5x2</title>
<style>
/* Add your CSS styles here */
table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f2f2f2;
}
</style>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>항목명</th>
				<th>값</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>번호</td>
				<td>${vo._id}</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${vo.name}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${vo.content}</td>
			</tr>
			<tr>
				<td>날씨</td>
				<td>${vo.weather}</td>
			</tr>
			<tr>
				<td>날짜</td>
				<td>${vo.date}</td>
			</tr>
		</tbody>
	</table>
	<a href="update.memo">
		<button style="background: lime;">메모 수정 요청</button>
	</a>
	<a href="delete.memo">
		<button style="background: red;">메모 삭제 요청</button>
	</a>
	<a href="list.memo">
		<button style="background: lightblue;">전체 메모 요청</button>
	</a>
</body>
</html>