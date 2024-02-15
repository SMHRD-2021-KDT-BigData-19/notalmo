<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
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
<meta property="og:url" content="https://웹사이트">
<title>로그인 | 실전프로젝트</title>
<link rel="stylesheet" href="${cpath}/resources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
</head>

<body>
	<!--------------------------------------------상단 메뉴2------------------------------------------->
	<!-- [S]hooms-N55 -->
	<header class="hooms-N55" data-bid="bFLS88Lpv5" id="">
		<div class="header-container container-lg">
			<div class="header-left">
				<h1 class="header-title">
					<a class="header-logo" href="${cpath}/MainPage.do" title="hooms"></a>
				</h1>
			</div>
			<div class="header-center">
				<ul class="header-gnblist">
					<li class="header-gnbitem"><c:choose>
							<c:when test="${empty loginMember}">
								<a class="header-gnblink" href="${cpath}/LoginPage.do"> <span>탈모진단</span>
								</a>
							</c:when>
							<c:otherwise>
								<a class="header-gnblink" href="${cpath}/TalmoTestPage.do">
									<span>탈모진단</span>
								</a>
							</c:otherwise>
						</c:choose></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="${cpath}/ProductPage.do"> <span>제품찾기</span>
					</a></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="${cpath}/HospitalPage.do"> <span>병원찾기</span>
					</a></li>
					<li class="header-gnbitem"><a class="header-gnblink"
						href="${cpath}/CommunityPage.do"> <span>커뮤니티</span>
					</a></li>
				</ul>
			</div>
			<div class="header-right">
				<div class="header-utils">
					<c:choose>
							<c:when test="${empty loginMember}">
								<a href="${cpath}/LoginPage.do" class="header-gnblink">로그인</a>
								<a href="${cpath}/LoginPage.do"
									class="btn-profile header-utils-btn" title="profile"></a>
							</c:when>
							<c:otherwise>
								<a href="${cpath}/Logout.do" class="header-gnblink">로그아웃</a>
								<a href="${cpath}/MyPage.do"
									class="btn-profile header-utils-btn" title="profile"></a>
							</c:otherwise>
						</c:choose>
					<!-- <a href="javascript:void(0);" class="btn-profile header-utils-btn" title="profile"></a> -->
					<button class="btn-search header-utils-btn" title="search"></button>
					<button class="btn-menu header-utils-btn" title="menu"></button>
					<button class="btn-close header-utils-btn" title="close"></button>
				</div>
			</div>
			<div class="header-search-form">
				<div class="inputset inputset-line">
					<button class="icon-right icon-search btn" type="button"
						aria-label="아이콘"></button>
					<input type="text" class="inputset-input form-control"
						placeholder="검색어를 입력해주세요." aria-label="내용">
				</div>
			</div>
		</div>
		</div>

		<div class="header-fullmenu fullmenu-top">
			<div class="fullmenu-head container-lg">
				<h4 class="fullmenu-title">
					<a class="fullmenu-logo" href="javascript:void(0)" title="hooms"></a>
				</h4>
				<button class="fullmenu-close"></button>
			</div>
			<div class="fullmenu-wrapper container-lg">
				<ul class="fullmenu-gnblist">
					<li class="fullmenu-gnbitem"><c:choose>
							<c:when test="${empty loginMember}">
								<a class="fullmenu-gnblink" href="${cpath}/LoginPage.do"> <span>탈모진단</span>
								</a>
							</c:when>
							<c:otherwise>
								<a class="fullmenu-gnblink" href="${cpath}/TalmoTestPage.do">
									<span>탈모진단</span>
								</a>
							</c:otherwise>
						</c:choose></li>
					<li class="fullmenu-gnbitem"><a class="fullmenu-gnblink"
						href="${cpath}/ProductPage.do"> <span>제품찾기</span>
					</a></li>
					<li class="fullmenu-gnbitem"><a class="fullmenu-gnblink"
						href="${cpath}/HospitalPage.do"> <span>병원찾기</span>
					</a></li>
					<li class="fullmenu-gnbitem"><a class="fullmenu-gnblink"
						href="${cpath}/CommunityPage.do"> <span>커뮤니티</span>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="header-dim"></div>
	</header>
	<!-- [E]hooms-N55 -->
	<!-------------------------------------------------------------------------------------------->
	
	<main class="th-layout-main ">
		<!-- [S]hooms-N52 -->
		<div class="hooms-N52" data-bid="ZAls88lq35" id="">
			<div class="contents-inner">
				<div class="contents-container">
					<div class="textset textset-h2">
						<h2 class="textset-tit">로그인</h2>
						<p class="textset-desc">훔스를 방문해주셔서 감사합니다.</p>
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
		<!-- [E]hooms-N52 -->
	</main>

	<!-----------------------------하단 푸터----------------------------->
	<!-- [S]hooms-N57 -->
	<footer class="hooms-N57" data-bid="mDLs88964B">
		<div class="footer-container container-lg">
			<div class="footer-top">
				<h1 class="footer-logo">
					<a href="javascript:void(0)"> <img
						src="${cpath}/resources/images/img_logo_gray.png" alt="로고">
					</a>
				</h1>
				<ul class="footer-menulist">
					<li class="footer-menuitem"><a href="javascript:void(0)">
							<span>이용약관</span>
					</a></li>
					<li class="footer-menuitem"><a href="javascript:void(0)">
							<span>개인정보처리방침</span>
					</a></li>
					<li class="footer-menuitem"><a href="javascript:void(0)">
							<span>푸터메뉴1</span>
					</a></li>
					<li class="footer-menuitem"><a href="javascript:void(0)">
							<span>푸터메뉴2</span>
					</a></li>
				</ul>
				<ul class="footer-snslist">
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="${cpath}/resources/icons/ico_instagram_lightgrey.svg"
							alt="인스타그램">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="${cpath}/resources/icons/ico_youtube_lightgrey.svg"
							alt="유튜브">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="${cpath}/resources/icons/ico_facebook_lightgrey.svg"
							alt="페이스북">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink"
						href="javascript:void(0)"> <img
							src="${cpath}/resources/icons/ico_kakao_lightgrey.svg" alt="카카오톡">
					</a></li>
				</ul>
			</div>
			<div class="footer-bottom">
				<div class="footer-txt">
					<p>전라남도 순천시 중앙로 260</p>
					<p>
						<span>T. 061-754-3501</span> <span>E. help@openfield.co.kr</span>
					</p>
				</div>
				<!-- <div class="footer-txt">
          <p>2022 BY TEMPLATEHOUSE. ALL RIGHTS RESEVED</p>
        </div> -->
			</div>
		</div>
	</footer>
	<!-- [E]hooms-N57 -->

	<script src="${cpath}/resources/js/setting.js"></script>
	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script>
</body>