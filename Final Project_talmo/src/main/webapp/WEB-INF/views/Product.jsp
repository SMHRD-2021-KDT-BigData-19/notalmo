<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product</title>
<head>

</head>

<body>
	<h1>Products</h1>
	
	
	<script>
	

	  fetch("http://127.0.0.1:5000/sampu")
	    .then((response) => response.json())
	    .then((data) => console.log(data));
	
	
	</script>
</body>
</html>
<%@ include file="Footer.jsp" %>