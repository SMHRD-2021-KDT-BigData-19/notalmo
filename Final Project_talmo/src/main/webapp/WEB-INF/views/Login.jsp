<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
<!-- <meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta name="title" content="웹사이트">
<meta name="description" content="웹사이트입니다.">
<meta name="keywords" content="키워드,키워드,키워드">
<meta property="og:title" content="웹사이트">
<meta property="og:description" content="웹사이트입니다">
<meta property="og:image" content="https://웹사이트/images/opengraph.png">
<meta property="og:url" content="https://웹사이트"> -->
<title>로그인 | 실전프로젝트</title>
<%-- <link rel="stylesheet" href="${cpath}/resources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css"> --%>
</head>

<body>
	<%@ include file="Header.jsp"%>
	<!-- [E]hooms-N55 -->
	<!-------------------------------------------------------------------------------------------->
	
	<main class="th-layout-main ">
		<!-- [S]hooms-N52 -->
		<div class="hooms-N52" data-bid="ZAls88lq35" id="">
			<div class="contents-inner">
				<div class="contents-container">
					<div class="textset textset-h2">
						<h2 class="textset-tit">로그인</h2>
						<p class="textset-desc">Full Fill을 방문해주셔서 감사합니다.</p>
					</div>
					<form action="${cpath}/Login.do" method="post">
						<div class="contents-form">
							<%-- <form class="form-inline" action="${cpath}/Login.do" method="post">
                 		<div class="form-group">
	                   		<label for="memId">ID:</label>
	                   		<input type="text" class="form-control" id="memId" name="memId">
                 		</div>
               			<div class="form-group">
                   			<label for="pwd">PW:</label>
                   			<input type="password" class="form-control" id="memPw" name="memPw">
                		</div>
                    	<button type="submit" class="btn btn-default">login</button>
            		</form> --%>

							<div class="inputset inputset-lg inputset-label">
								<label>
									<h6 class="inputset-tit">ID</h6> <input type="text"
									class="inputset-input form-control" placeholder="아이디를 입력해주세요."
									id="id" name="id">
								</label>
							</div>
							<div class="inputset inputset-lg inputset-label">
								<label>
									<h6 class="inputset-tit">Password</h6> <input type="password"
									class="inputset-input form-control" placeholder="비밀번호를 입력해주세요."
									id="pw" name="pw">
								</label>
							</div>


							<div class="contents-checkset">
								<!-- <div class="checkset">
								<input id="checkset-a-1-1" class="checkset-input input-fill"
									type="checkbox" value=""> <label class="checkset-label"
									for="checkset-a-1-1"></label> <span class="checkset-text">자동
									로그인</span>
							</div>
							<div class="checkset">
								<input id="checkset-a-1-2" class="checkset-input input-fill"
									type="checkbox" value=""> <label class="checkset-label"
									for="checkset-a-1-2"></label> <span class="checkset-text">아이디
									저장</span>
							</div> -->
							</div>
							<button class="btnset btnset-lg" type="submit">로그인</button>
						</div>
					</form>
					<ul class="contents-list">
						<!-- <li class="contents-item"><a href="javascript:void(0)"
							class="contents-link">아이디 찾기</a></li>
						<li class="contents-item"><a href="javascript:void(0)"
							class="contents-link">비밀번호 찾기</a></li> -->
						<li class="contents-item"><a href="${cpath}/SignupPage.do"
							class="contents-link">회원가입</a></li>
					</ul>
					<div class="contents-start"></div>
				</div>
			</div>
		</div>
	</main>

<%-- 	<script src="${cpath}/resources/js/setting.js"></script>
	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script> --%>
</body>
</html>
<%@ include file="Footer.jsp"%>