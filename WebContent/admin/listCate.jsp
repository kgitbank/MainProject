<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%@include file = "admin_top.jsp" %>
		<h3 class="menu" >대분류</h3>
			<table border="0">
				<tr bgcolor ="#EDEDED" >
					<td>category_1</td>
					<td>category_name</td>
					<td>category_2</td>
					<td>category_name</td>
				</tr>
				<tr align="center">
					<td colspan="17">대 분류 카테고리가 없습니다.</td>
				</tr>
			</table>
			<h3 class="menu" >중분류</h3>
			<table border="0">
				<tr bgcolor ="#EDEDED" >
					<td>category_2</td>
					<td>category_name</td>
					<td>category_1</td>
				</tr>
				<tr align="center">
					<td colspan="17">중 분류 카테고리가 없습니다.</td>
				</tr>
			</table>			
		<%@include file = "admin_bottom.jsp" %>
</body>
</html>