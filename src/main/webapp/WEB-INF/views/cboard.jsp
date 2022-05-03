<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 게시판</title>
</head>
<body>
<h1>게시판</h1>
<hr/>
<table border="1">
	<tr>
		<th width=50>글번호</th>
		<th width=150>게시자</th>
		<th width=400>제목</th>
		<th width=250>날짜</th>
		<th width=50>조회수</th>
	</tr>
	<c:forEach items="${boardlist }" var="dto">
	<tr>
		<td align="center">${dto.bID }</td>
		<td align="center">${dto.mID }</td>
		<td><c:if test="${dto.bIndnt!=0}"><c:forEach begin="2" end="${dto.bIndnt }">　</c:forEach>└</c:if>
			<a href="content_view?bID=${dto.bID }">${dto.bTitl }</a></td>
		<td align="center">${dto.bDate }</td>
		<td align="center">${dto.bHits }</td>
	</tr>
	</c:forEach>
	<tr>
		<th colspan=5><button onclick="location.href='content_write'">새글작성</button></th>
	</tr>
</table>
</body>
</html>