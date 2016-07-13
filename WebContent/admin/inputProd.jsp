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
		<h3 class="menu" >상품 등록</h3>
		<table border="0" width="650" height="600">
					<tr>
						<th width="110" bgcolor ="#EDEDED" ><h3 class="menu" >대분류<br>카테고리</h3></th>
						<td><input type="text" name="category_1" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >중분류<br>카테고리</th>
						<td><input type="text" name="category_2" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							상품 이름
						</th>
						<td>
							<input type="text" name="food_name" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							상품 키워드
						</th>
						<td>
							<input type="text" name="food_name" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							상품<br>상세내용
						</th>
						<td>
							<textarea rows="10" cols="20">상세내용 입력</textarea>
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							상품 사이즈
						</th>
						<td>
							<input type="text" name="food_size" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							원산지
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							상품 재고량
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							상품 가격
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							상품 이미지
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							상품 등록날짜
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							포인트
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							판매량
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							생산자
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
					<tr>
						<th bgcolor ="#EDEDED" >
							옵션1
						</th>
						<td>
							<input type="text" name="food_origin" >
						</td>
					</tr>
		</table>
		<br>
		<input type="submit" value="상품 등록">&nbsp;
		</div>
		
	<%@include file = "admin_bottom.jsp" %>


</body>
</html>