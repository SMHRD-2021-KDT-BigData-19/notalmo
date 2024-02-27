<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    
<title>hospital</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=b4kv28xagn"></script>
</head>
<body>
    <form id="searchForm">
        <label for="query">검색어:</label> <input type="text" id="query" name="query" required>
        <button type="button" onclick="HospitalSearch()">검색</button>    
    </form>
    <div id="map" style="width: 100%; height: 400px;"></div>
    <div>
    	<ul>
    		<li><a>1</a></li>
    		<li><a>2</a></li>
    		<li><a>3</a></li>
    		<li><a>4</a></li>
    		<c:forEach items="${Hvo}" var="h">
    			<li><a>${h.title}</a></li>
    			<li><a>${h.link}</a></li>
    			<li><a>${h.category}</a></li>
    			<li><a>${h.address}</a></li>
    			<li><a>${h.roadAddress}</a></li>
			</c:forEach>
    		<li><a>5</a></li>
    	</ul>
    </div>
    <script>
        function HospitalSearch() {
            var fData = document.getElementById('query').value;
            console.log(fData);

            $.ajax({
                url : "${cpath}/HospitalSearch.do",
                type : "post",
                data : {
                    "query" : fData
                },
                success : function(data) {
                    alert("검색 성공!!");
                    console.log(data);
                },
                error : function() {
                    alert("검색 실패ㅜ");
                }
            });
        }

        var mapOptions = {
            zoom : 13
        };

        var map = new naver.maps.Map('map', mapOptions);

        // 사용자의 현재 위치 확인 및 지도에 표시
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var userLatLng = new naver.maps.LatLng(position.coords.latitude, position.coords.longitude);

                // 사용자의 현재 위치로 지도 중심 이동
                map.setCenter(userLatLng);

                /* // 사용자 위치에 마커 생성
                var marker = new naver.maps.Marker({
                    position: userLatLng,
                    map: map
                }); */
            }, function(error) {
                alert('사용자의 위치를 확인할 수 없습니다.');
            });
        } else {
            alert('브라우저가 Geolocation을 지원하지 않습니다.');
        }
    </script>
</body>
</html>
