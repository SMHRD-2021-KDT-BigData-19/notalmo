<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>톰캣이 실행되면 자동으로 제일 먼저 실행할 웰컴 페이지</title>
<!-- Servers/web.xml 제일 밑에 정리 되어있음 -->
</head>
<body>
	<!-- 만약 jstl을 몰랐을 시절
		response.sendRedirect("boardList.do"); -->
	<!-- jstl은 따로 지정해주지 않아도 현재의 프로젝트 내에서만 찾을 수 있게 실행 -->
	<c:redirect url="MainPage.do"/>
	
</body>
</html>