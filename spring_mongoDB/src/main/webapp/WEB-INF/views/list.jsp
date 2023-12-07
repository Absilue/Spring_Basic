<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1" width=800>
<tr>
	<td>번호</td>
	<td>작성자</td>
	<td>내용</td>
	<td>날씨</td>
	<td>날짜</td>
</tr>
<c:forEach items="${list}" var="vo" varStatus="status">
<tr>
	<td>${status.count}</td>
	<td>${vo.name}</td>
	<td>
		<a href="one.memo?_id=${vo._id}">
			${vo.content}
		</a>
	</td>
	<td>${vo.weather}</td>
	<td>${vo.date}</td>
</tr>
</c:forEach>
</table>