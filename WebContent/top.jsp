<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style.css">
<html>
<head>
<%
		String mbId = (String)session.getAttribute("mbId");
		String mbName = (String)session.getAttribute("mbName");
		boolean isLogin = false;
		boolean isAdmin = false;
		if (mbId == null || mbName == null){
			isLogin = false;
		}else if(mbId.equals("1")){
			isAdmin = true;
			isLogin = true;
		}else isLogin = true;
		 %>
<title>����������Ʈ</title>
	<script type="text/javascript">
		function login(){
			window.open("login.do", "login", "width=600, height=510")
		}
	</script>
</head>
<body>
<div align ="center"  >
	<table width ="1200"  border ="0">
			<tr align ="right" height ="50">
				<td colspan ="2">
				<%if(isLogin){ %>
					<a href="<%=request.getContextPath()%>/member/logout.jsp">�α׾ƿ�</a>
				<% }else{ %><a href="javascript:login()">�α��� </a>
					<% } %>	 | ��ٱ���  |  <a href="buy_list.do">�ֹ������ȸ</a>  |  ������ 
					<%if(isAdmin){ %>
					 |  <a href="admin.do">������ �޴�</a>
					 <%} %> 
				</td>		
			</tr>
			<tr height ="115">
				<td colspan="2" background="img/bgimg.png"  >
				 </td>					
			</tr>
			<tr bgcolor ="#EDEDED"  height ="50" >
				<td align ="center"  colspan ="2">
					<h3 class="menu" >
						<a href="index.jsp" class="topMenu">����</a> | 
						�û���� | 
						������ | 
						����Ʈ |  	
						������ | 
						������ | 
						��ȹ�� | 
						�̺�Ʈ&���� 
					</h3>
				</td>
			</tr>
			<tr height ="40"  align ="center" >
				<th bgcolor ="#33353D" width="190" align ="center">
				<h3>���ο丮</h3>
				</th>
				<td rowspan="4">