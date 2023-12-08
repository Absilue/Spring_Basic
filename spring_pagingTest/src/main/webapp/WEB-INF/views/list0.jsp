<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1">
    <tr bgcolor="lime">
        <td>행번호</td>
        <td>id</td>
        <td>이메일</td>
        <td>차이름</td>
    </tr>
<c:forEach items="${list}" var="vo">
    <tr>
        <td>${vo.row_no}</td>
        <td>${vo.id}</td>
        <td>${vo.email}</td>
        <td>${vo.car}</td>
    </tr>
</c:forEach>
</table>
