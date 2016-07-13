<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
			<h1>주문 리스트</h1>
			<table border="1">
			<tr>
				<th>주문 번호</th>
				<th>회원  아이디</th>
				<th>주문 수량</th>
				<th>주문 Product ID</th>
			</tr>
			<tr>
				<c:forEach var="list" items="${orderList}">
				<td>${list.p_num}</td>
				<td>${list.m_name}</td>
				<td>${list.p_amount}</td>
				<td>${list.p_code}</td>
				</c:forEach>
			</tr>
			</table>
</body>
</html>