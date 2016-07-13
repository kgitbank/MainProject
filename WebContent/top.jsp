<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style.css">
<html>
<head>
	<title>메인프로젝트</title>
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
							<a href="javascript:login()">로그인 </a> | 장바구니  |  <a href="buy_list.do">주문배송조회</a>  |  고객센터 | <a href="admin/main.jsp">관리자 메뉴</a>
				</td>		
			</tr>
			<tr height ="115">
				<td colspan="2" background="img/bgimg.png"  >
				 </td>					
			</tr>
			<tr bgcolor ="#EDEDED"  height ="50" >
				<td align ="center"  colspan ="2">
					<h3 class="menu" >
						<a href="index.jsp" class="topMenu">메인</a> | 
						늘사던거 | 
						정기배송 | 
						베스트 |  	
						세일중 | 
						오반장 | 
						기획전 | 
						이벤트&쿠폰 
					</h3>
				</td>
			</tr>
			<tr height ="40"  align ="center" >
				<th bgcolor ="#33353D" width="190" align ="center">
				<h3>메인요리</h3>
				</th>
				<td rowspan="4">