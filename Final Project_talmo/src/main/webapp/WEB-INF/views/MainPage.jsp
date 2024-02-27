<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- java에서 제공해주는 함수를 사용하고 싶을 때: jstl의 function 
	core처럼 태그모양으로 쓰는게 아니라 중괄호({}) 안에 fn: 표시로 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<title>MainPage</title>
<link rel="stylesheet" href="${cpath}/resources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">
<!-- <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>

<style>


  .cardset-item {
    width: 33.33%;
    box-sizing: border-box;
    float: left;
    margin-right: 0;
    padding: 0;
  }

  .cardset-container {
    position: relative;
    overflow: hidden;
    margin: 0;
  }

  .cardset-figure {
    margin: 0;
  }

  .cardset-img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    margin: 0;
    padding: 0;
  }

  .cardset-title {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    text-align: center;
    padding: 10px;
    background-color: rgba(255, 255, 255, 0.7);
    font-size: 18px;
    font-weight: bold;
    margin: 0;
  }
</style>


<body>

	<header class="hooms-N54" data-bid="sELS8895JS">
		<div class="header-inner">
			<div class="header-container container-lg">
				<div class="header-left">
					<h1 class="header-title">
						<a class="header-logo" href="${cpath}/MainPage.do" title="full fill"></a>
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
									<a class="header-gnblink" href="${cpath}/TalmoTestStartPage.do">
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
		<div class="header-fullmenu-dark fullmenu-top">
			<div class="fullmenu-head container-lg">
				<h4 class="fullmenu-title">
					<a class="fullmenu-logo" href="javascript:void(0)" title="hooms"></a>
				</h4>
				<button class="fullmenu-close"></button>
			</div>
			<div class="fullmenu-wrapper container-lg">
				<ul class="fullmenu-gnblist">
					<li class="fullmenu-gnbitem">
						<c:choose>
							<c:when test="${empty loginMember}">
								<a class="fullmenu-gnblink" href="${cpath}/LoginPage.do"> <span>탈모진단</span> </a> </c:when>
							<c:otherwise>
								<a class="fullmenu-gnblink" href="${cpath}/TalmoTestStartPage.do">
									<span>탈모진단</span> </a> </c:otherwise>
						</c:choose>
					</li>
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

	<main class="th-layout-main ">
		<div class="hooms-N1" data-bid="uRLS880PXf">
			<div class="contents-container">
				<div class="contents-swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="contents-backimg img-pc" alt="배너 PC 이미지"
								style="background-color: orange;"></div>
							<div class="contents-slide-group">
								<h2 class="contents-title">Full Fill</h2>
								<p class="contents-text">
									Full Fill만의 독자적인 기능 <br> AI가 진단해주는 나의 탈모 진행율은?
								</p>
								<a class="contents-link" href="${cpath}/TalmoTestStartPage.do">AI 탈모 진단 받기</a>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="contents-backimg img-pc" alt="배너 PC 이미지"
								style="background-color: deepskyblue;"></div>
							<div class="contents-slide-group">
								<h2 class="contents-title">Full Fill</h2>
								<p class="contents-text">
									Full Fill의 추천 두피 샴푸
								</p>
								<a class="contents-link" href="javascript:void(0)">제품 보러가기</a>
							</div>
						</div>
					</div>
					
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
					<div class="contents-control">
						<div class="swiper-pagination"></div>
						<div class="swiper-button-pause">
							<img src="${cpath}/resources/icons/ico_pause.svg" alt="스와이퍼 멈춤버튼">
						</div>
						<div class="swiper-button-play">
							<img src="${cpath}/resources/icons/ico_play.svg" alt="스와이퍼 재생버튼">
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="hooms-N36" data-bid="dvlS8895wE">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset textset-span">
						<span class="textset-tit" style="font-weight: bold;">관련 기사</span>
					</div>
					<div class="tabset tabset-brick">
						<ul class="tabset-list tabset-sm tabset-fill">
						
							<li class="tabset-item">
							    <a href="https://topclass.chosun.com/news/articleView.html?idxno=31628" class="cardset" target="_blank">
							        <div class="cardset-container">
							            <figure class="cardset-figure">
							                <img class="cardset-img"
							                    src="${cpath}/resources/images/MainPage_talmo_img1.jpg"
							                    alt="카드 이미지" style="width: 100%; height: 100%; object-fit: cover; display: block;">
							            </figure>
							            <div class="cardset-title">탈모 예방하는 습관 5가지</div>
							        </div>
							    </a>
							</li>


							<li class="tabset-item">
							    <a href="https://www.healthinnews.co.kr/news/articleView.html?idxno=22486" class="cardset" target="_blank">
							        <div class="cardset-container">
							            <figure class="cardset-figure">
							                <img class="cardset-img"
							                    src="${cpath}/resources/images/MainPage_talmo_img2.jpg"
							                    alt="카드 이미지" style="width: 100%; height: 100%; object-fit: cover; display: block;">
							            </figure>
							            <div class="cardset-title">청소년 탈모의 원인과 치료법</div>
							        </div>
							    </a>
							</li>

							
							<li class="tabset-item">
							    <a href="https://www.pinpointnews.co.kr/news/articleView.html?idxno=188566" class="cardset" target="_blank">
							        <div class="cardset-container">
							            <figure class="cardset-figure">
							                <img class="cardset-img"
							                    src="${cpath}/resources/images/MainPage_talmo_img3.jpg"
							                    alt="카드 이미지" style="width: 100%; height: 100%; object-fit: cover; display: block;">
							            </figure>
							            <div class="cardset-title">탈모 관련 화장품 긍정적 평가 나와…주가 17% 이상 올라</div>
							        </div>
							    </a>
							</li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class="textset textset-span">
			<span class="textset-tit" style="font-weight: bold; margin-left:120px;">최신글</span>
		</div>
		
		<br>
		<br>
		
		<div class="full-width-image-container" style="margin-left: 120px; margin-right: 50px;">
    		<img src="${cpath}/resources/images/MainPage_img.png" alt="전체 너비 이미지" style="width: 95%; height: auto;">
		</div>

</main>

<br>
<br>
<br>
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
			</div>
		</div>
	</footer>

	<script src="${cpath}/resources/js/setting.js"></script>
	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script>

</body>