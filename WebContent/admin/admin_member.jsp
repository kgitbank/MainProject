<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "admin_top.jsp" %>
<script type="text/javascript"> 
</script>
<table class="outline" width="99%">
	<caption>회원목록</caption>
	<tr class="m2">
		<th>ID</th>
		<th>이름</th>
		<th>주민번호</th>
		<th>성별</th>
		<th>핸드폰</th>
		<th>집주소</th>
		<th>이메일</th>
		<th>가입날짜</th>
		<th>보유포인트</th>
		<th>로그인날짜</th>
		<th>방문수</th>		
	</tr>
	<c:if test="${memberList == null && memberList.size()==0}">
	<tr>
		<td colspan="8" align="center">
			등록된 상품이 없습니다.
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