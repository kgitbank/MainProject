<%@ include file="top.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
   <title>F마트몰 지점 위치</title>
    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=gu8hkDiBfkIBcvArXTIs"></script>
</head>
<body>
<div id="map" align="center" style="width:100%; height:900px;"></div>
<script>
var fmart = new naver.maps.LatLng(37.5348042, 127.1414341),
    map = new naver.maps.Map('map', {
        center: fmart.destinationPoint(0, -30),
        zoom: 13,
        zoomControl: true
    }),
    marker = new naver.maps.Marker({
        map: map,
        position: fmart
    });

var contentString = [
        '<div class="iw_inner">',
        '   <br> <img src="img/logo.JPG" width="110" height="95" alt="F마트" class="thumb" align="center" />',
        '   <p>도로명 주소 : 서울특별시 강동구 천호대로185길 20 <br>지번 주소 : 서울특별시 강동구 길동 233<br /><br>',
        '       <img src="img/logo.JPG" width="90" height="40" alt="F마트" class="thumb" align="center" /><br/><br>',
        '       02-122 | 식자재 도매점<br />',
        '       <a href="http://www.fmartmall.com" target="_blank">www.fmartmall.com</a>',
        '   </p>',
        '</div>'
    ].join('');

var infowindow = new naver.maps.InfoWindow({
    content: contentString
});

naver.maps.Event.addListener(marker, "click", function(e) {
    if (infowindow.getMap()) {
        infowindow.close();
    } else {
        infowindow.open(map, marker);
    }
});

infowindow.open(map, marker);



</script>
<div align="right">
<a href ="index.jsp">돌아가기</a>
</div>
</body>
</html>
<%@include file="bottom.jsp" %>	