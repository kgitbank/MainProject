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
		<h3 class="menu" >��з� ī�װ� ���</h3>
		<table border="0">
					<tr>
						<th >�� �з� ī�װ�( ���� 2~3���� ex:ä�� -> [VT] )</th>
						<td><input type="text" name="category_1" >
						</td>
					</tr>
					<tr>
						<th>�� �з� ī�װ���</th>
						<td><input type="text" name="category_name" >
						</td>
					</tr>
					<tr>
						<td rowspan="2" align="right">
							<input type="submit" value="���">
						</td>
					</tr>
		</table>
		<br>
		<h3 class="menu" >�ߺз� ī�װ� ���</h3>
		<table border="0">
					<tr>
						<th>�� �з� ī�װ�( ���� Ǯ���� ex:���� -> [gar] )</th>
						<td><input type="text" name="category_1" >
						</td>
					</tr>
					<tr>
						<th>�� �з� ī�װ���</th>
						<td><input type="text" name="category_name" >
						</td>
			</tr>
			<tr>
						<td rowspan="2" align="right">
							<input type="submit" value="���">
						</td>
					</tr>
		</table>
		</div>
	<%@include file = "admin_bottom.jsp" %>


</body>
</html>