<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>community</title>
</head>
<body>
	커뮤니티 목록 페이지
	<br>
	<a href="${cpath}/CommunityViewPage.do">게시물 글 확인 + 댓글</a>
	<br><br>
	<a href="${cpath}/PostUploadPage.do">게시물 등록</a>
</body>
</html>