<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<script type="text/javascript">
	function check(){
		if (f.m_id.value==""){
			alert("���̵� �Է��ϼ���")
			f.m_id.focus();
			return;
		}
		if (!f.m_pw.value){
			alert("��й�ȣ�� �Է��ϼ���")
			f.m_pw.focus();
			return;
		}
		document.f.submit();
	}
</script>
<div align="center">
<img src="<%=request.getContextPath()%>/img/member2.png" width="100%" height="100" border="0" align="middle">
<br><br>
</div>
<div align="center">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style.css"> 
	<body onload="f.m_name.focus()">
		<form name="f" method="POST" action="<%=request.getContextPath()%>/memberInput.do">
			<table width="90%" align="center" class="outline">
				<tr>
					<td width="150" class="m3">���̵�</td>
					<td class="m3">
						<input type="text" name="m_id" class="box">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">��й�ȣ</td>
					<td class="m3">
						<input type="password" name="m_pw" class="box">
					</td>
  				</tr>
  
				<tr>
					<td width="150" class="m3">�̸�</td>
					<td class="m3">
						<input type="text" name="m_name" class="box">
					</td>
				</tr>


  				<tr>
					<td width="150" class="m3">�ֹι�ȣ</td>
					<td class="m3">
						<input type="text" name="m_ssn1" class="box"> -
				<input type="password" name="m_ssn2" class="box">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">�̸���</td>
					<td class="m3">
						<input type="text" name="m_email" class="box">
					</td>
  				</tr>
  				<tr>
					<td width="150" class="m3">����ó</td>
					<td class="m3">
						<input type="text" name="m_hp1" class="box" size="3" maxlength="3"> -
						<input type="text" name="m_hp2" class="box" size="4" maxlength="4"> -
						<input type="text" name="m_hp3" class="box" size="4" maxlength="4">
					</td>
  				</tr>
  				<tr>
					<td colspan="2" align="center">
						<a href="javascript:check()">[����]</a>
						<a href="#">[���]</a>
					</td>
  				</tr>
  			</table>
		</form>
	</body> 
</div>  