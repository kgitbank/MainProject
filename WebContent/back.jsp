<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
		String msg = (String)request.getAttribute("msg");
		String back = (String)request.getAttribute("back");
%>
<script type="text/javascript">
	alert("<%=msg%>")
	opener.location.reload()
 	self.close()
</script>
