<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hospital</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<body>
	<script>
		function HospitalSearch(){
			var fData = document.getElementById('query').value;
  			console.log(fData);
  			
  			$.ajax({
  				url: "${cpath}/HospitalSearch.do",
  				type: "post", // 내용이 길 떄, 생성시킬 때 사용
  				data: {"query": fData},
  				success: function(data){
  					alert("검색 성공!!");
  					console.log(data);
  				},
  				error: function(){
  					alert("검색 실패ㅜ");
  				}
  			}); // END ajax
		}
	</script>
	<form id="searchForm">
        <label for="query">검색어:</label>
        <input type="text" id="query" name="query" required>
        <button type="button" onclick="HospitalSearch()">검색</button>
    </form>
</body>
</html>