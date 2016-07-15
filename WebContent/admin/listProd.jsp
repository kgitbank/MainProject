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
		<h3 class="menu" >상품 목록</h3>
			<table border="0">
				<tr bgcolor ="#EDEDED" >
					<td>상품 코드</td>
					<td>1차 카테고리</td>
					<td>2차 카테고리</td>
					<td>상품 이름</td>
					<td>상품 키워드</td>
					<td>상품 사이즈</td>
					<td>원산지</td>
					<td>상품 재고량</td>				
					<td>상품 가격</td>
					<td>상품 등록날짜</td>
					<td>상품 포인트</td>
					<td>판매량</td>
					<td>생산자</td>
					<td>옵션 1</td>
					<td>옵션 2</td>
					<td>유통 기한</td>
					<td>클릭수</td>
				</tr>
				<tr align="center">
					<td colspan="17">상품이 없습니다.</td>
				</tr>
			</table>		
		<%@include file = "admin_bottom.jsp" %>
</body>
</html>