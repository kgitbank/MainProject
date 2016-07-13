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
		<div align="center">
		<h3 class="menu" >대분류 카테고리 등록</h3>
		<table border="0">
					<tr>
						<th >대 분류 카테고리( 영문 2~3글자 ex:채소 -> [VT] )</th>
						<td><input type="text" name="category_1" >
						</td>
					</tr>
					<tr>
						<th>대 분류 카테고리명</th>
						<td><input type="text" name="category_name" >
						</td>
					</tr>
					<tr>
						<td rowspan="2" align="right">
							<input type="submit" value="등록">
						</td>
					</tr>
		</table>
		<br>
		<h3 class="menu" >중분류 카테고리 등록</h3>
		<table border="0">
					<tr>
						<th>중 분류 카테고리( 영문 풀네임 ex:마늘 -> [gar] )</th>
						<td><input type="text" name="category_1" >
						</td>
					</tr>
					<tr>
						<th>중 분류 카테고리명</th>
						<td><input type="text" name="category_name" >
						</td>
			</tr>
			<tr>
						<td rowspan="2" align="right">
							<input type="submit" value="등록">
						</td>
					</tr>
		</table>
		</div>
	<%@include file = "admin_bottom.jsp" %>


</body>
</html>