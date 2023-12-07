<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1">
    <tr bgcolor="lime">
        <td>행번호</td>
        <td>id</td>
        <td>제목</td>
        <td>내용</td>
        <td>작성자</td>
    </tr>
<c:forEach items="${list}" var="vo">
    <tr>
        <td>${vo.bbs_no}</td>
        <td>${vo.id}</td>
        <td>${vo.title}</td>
        <td>${vo.content}</td>
        <td>${vo.writer}</td>
    </tr>
</c:forEach>
</table>
