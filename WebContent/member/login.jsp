<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- login.jsp-->
<script type="text/javascript">
	function loginCheck(){
		if (f.id.value==""){
			alert("아이디를 입력하세요!!");
			f.id.focus();
			return;
		}
		if (f.pwd.value==""){
			alert("비밀번호를 입력하세요!!");
			f.pwd.focus();
			return;
		}
		document.f.submit();
	}
	function searchMember(mode){
		window.open("<%=request.getContextPath()%>/login/search.jsp?mode="+mode,
				"search", "width=540, height=300");
	}
</script>	
<link rel="stylesheet" type="text/css" href="../style.css">
<%
		Cookie[] cks = request.getCookies();
		String value = null;
		if (cks != null){
			for(int i=0; i<cks.length; ++i){
				String name = cks[i].getName();
				if (name.equals("saveId")){
					value = cks[i].getValue();
					break;
				}
			}
		}
%>
<div align="center">
<br>
<br>
<h2>나혼자 산다 Mall에 오신 것을 환영합니다!</h2>
</div>
<br>
<img src="<%=request.getContextPath()%>/img/bottom.gif" width=540 height="40" border="0" align="middle" alt="">
<br>
<p>
<img src="<%=request.getContextPath()%>/img/tm_login.gif" width=100 height="13" border="0" align="middle" ALT="회원 로그인">
<form name="f" action="loginOk.do" method="post">
	<table width="60%" align="center" height="120">
		<tr>
			<td align="right" width="30%">
				<img src="<%=request.getContextPath()%>/img/id01.gif" 
				width="27" height="13" border="0" alt="아이디">&nbsp;&nbsp;
			</td>
			<td width="30%">
<%		if (value==null){ %>			
				<input type="text" name="m_id" tabindex="1">
<%		}else{ %>
				<input type="text"  name="m_id" value="<%=value%>" tabindex="1">
<%		} %>				
			</td>
			<td rowspan="2" width="30%" valign="middle">
				<a href="javascript:loginCheck()">
					<img src="<%=request.getContextPath()%>/img/bt_login.gif" border="0" alt="로그인"  tabindex="3">&nbsp;&nbsp;<br>
				</a>
				<nobr>
<%		if (value==null){ %>			
				<input type="checkbox" name="saveId">
<%		}else{ %>
				<input type="checkbox" name="saveId" checked>
<%		} %>					
					<font face="굴림" size="2">아이디 기억하기</font>
				</nobr>
			</td>
		</tr>
		<tr>
			<td align="right">
				<img src="<%=request.getContextPath()%>/img/pwd.gif" 
							width="37" height="11" alt="비밀번호">
			</td>
			<td>
				<input type="password" name="m_pw"  tabindex="2">
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<a href="memberSsn.do">
					<img src="<%=request.getContextPath()%>/img/bt_join.gif" border="0" width="60" height="22" alt="회원가입">
				</a>					
				<a href="javascript:searchMember('m_id')">
 					<img src="<%=request.getContextPath()%>/img/bt_search_id.gif" border="0" width="60" height="22" alt="아이디 찾기">
 				</a>	
 				<a href="javascript:searchMember('m_pw')">
					<img src="<%=request.getContextPath()%>/img/bt_search_pw.gif" border="0" width="60" height="22" alt="비밀번호 찾기">
				</a>
			</td>
		</tr>
	</table>
</form> 