<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>���üũ</title>
	<link rel="stylesheet" type="text/css" href="../style.css">
</head>
<body>
<div align="center">
<br>
<img src="<%=request.getContextPath()%>/img/member1.png" width=540 height="120" border="0" align="middle">
<br><br>
</div>
	<div align="center">
		<form name="f" action="check.do" method="post">
			<table width="80%" height="30%" align="center">
				<tr>
					<th>�̸�</th>
					<td><input type="text" name="m_name" size="7" class="m3"></td>
				</tr>

				<tr>
					<th>�ֹι�ȣ</th>
					<td><input type="text" name="m_ssn1" size="7" maxlength="6"> -
					<input type="password" name="m_ssn2" size="7" maxlength="6"></td>
					
				</tr>
				<br>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="��ȸ">
						<input type="reset" value="���">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
