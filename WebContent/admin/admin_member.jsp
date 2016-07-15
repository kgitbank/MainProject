<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "admin_top.jsp" %>
<script type="text/javascript"> 
</script>
<table class="outline" width="99%">
	<caption>ȸ�����</caption>
	<tr class="m2">
		<th>ID</th>
		<th>�̸�</th>
		<th>�ֹι�ȣ</th>
		<th>����</th>
		<th>�ڵ���</th>
		<th>���ּ�</th>
		<th>�̸���</th>
		<th>���Գ�¥</th>
		<th>��������Ʈ</th>
		<th>�α��γ�¥</th>
		<th>�湮��</th>		
	</tr>
	<c:if test="${memberList == null && memberList.size()==0}">
	<tr>
		<td colspan="8" align="center">
			��ϵ� ��ǰ�� �����ϴ�.
		</td>
	</tr>
	</c:if>
	<c:if test="${memberList != null && memberList.size()!=0}">
		<c:forEach var="vo" items="${memberList}">
	<tr>
		<td>${vo.m_id}</td>
		<td>${vo.m_name}</td>
		<td>${vo.m_ssn}</td>
		<td>${vo.m_gender}</td>
		<td>${vo.m_phone}</td>
		<td>${vo.m_addr1} ${vo.m_addr2}</td>
		<td>${vo.m_email}</td>  
		<td>${vo.m_joindate}</td>
		<td>${vo.m_point}</td>
		<td>${vo.m_logindate}</td>
		<td>${vo.m_visitcount}</td>
	</tr>
		</c:forEach>		
	</c:if>
</table>
<%@include file = "admin_bottom.jsp" %>