<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>게시판 리스트</title>
</head>
<body>
	<div align="center">
		<h1>게시판 리스트</h1>
		글쓰기
		<table border="1">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록자</th>
				<th>등록일</th>
			</tr>
			<c:if test="${boardList != null && boardList.size()!=0}">
				<c:forEach var="vo" items="${boardList}">
				<tr>
					<td>${vo.seq}</td>
					<td>${vo.title}</td>
					<td>${vo.writer}</td>
					<td>${vo.regdate}</td>
				</tr>
				</c:forEach>		
			</c:if>
			<c:if test="${boardList == null || boardList.size()==0}">
			
			</c:if>		
		</table>
	</div>
	</body>
</html>



