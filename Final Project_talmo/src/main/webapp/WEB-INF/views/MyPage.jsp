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
<title>마이페이지 | 13245689</title>
<link rel="stylesheet" href="${cpath}/resources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<link rel="stylesheet" href="${cpath}/resources/mypageResources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/mypageResources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/mypageResources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/mypageResources/css/style.css">
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
							<a href="${cpath}/MyPage.do" class="btn-profile header-utils-btn"
								title="profile"></a>
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

		<!-- [S]hooms-N46 -->
		<div class="hooms-N46" data-bid="RRlSS6RTd9" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset textset-h2">
						<h2 class="textset-tit">My Page</h2>
					</div>
					<div class="contents-top">
						<div class="contents-tit">
							<h3>
								<strong>${loginMember.nick}</strong>님 안녕하세요!
							</h3>
						</div>
					</div>
					<div class="contents-bottom">
						<ul class="contents-list">
							<li class="contents-item"><strong>아이디</strong> <span>${loginMember.id}</span>
							</li>
							<li class="contents-item"><strong>생년월일</strong> <span>${loginMember.birthday}</span>
							</li>
							<li class="contents-item"><strong>휴대폰 번호</strong> <span>${loginMember.phone}</span>
							</li>
							<li class="contents-item"><strong>이메일</strong> <span>${loginMember.email}</span>
							</li>
							<li class="contents-item"><strong>닉네임</strong> <span>${loginMember.nick}</span>
							</li>
						</ul>
						<div class="contents-btn">
							<a class="btnset btnset-ghost" href="${cpath}/UpdatePage.do">회원수정</a>
							<a class="btnset btnset-ghost" href="${cpath}/PwUpdatePage.do">비밀번호 수정</a>
							<a class="btnset" href="${cpath}/DeletePage.do">회원탈퇴</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]hooms-N46 -->
		<!-- [S]hooms-N47 -->
		<div class="hooms-N47" data-bid="calSs6rtlC" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset">
						<p class="textset-tit">최근 3개월 주문내역</p>
					</div>
					<div class="tableset tableset-receipt">
						<table class="tableset-table table">
							<colgroup>
								<col>
								<col>
								<col>
								<col>
								<col>
							</colgroup>
							<thead class="thead-light thead-border-top">
								<tr>
									<th scope="col">상품명</th>
									<th scope="col">주문번호</th>
									<th scope="col">주문일자</th>
									<th scope="col">상태</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="tableset-tit td-border-bottom">Beautyrest
										Collection Zalmon &amp; Derfel</td>
									<td class="tableset-dark"><strong>주문번호</strong>
										20230401-0123456</td>
									<td class="tableset-dark"><strong>주문일자</strong> 2023-04-01
										<br class="tableset-mobile"> 09:00:00</td>
									<td class="tableset-mobile"><strong>상태</strong> 상품준비중</td>
								</tr>
								<tr>
									<td class="tableset-tit td-border-bottom">Beautyrest
										Collection Zalmon &amp; Derfel</td>
									<td class="tableset-dark"><strong>주문번호</strong>
										20230401-0123456</td>
									<td class="tableset-dark"><strong>주문일자</strong> 2023-04-01
										<br class="tableset-mobile"> 09:00:00</td>
									<td class="tableset-mobile"><strong>상태</strong> 배송완료</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]hooms-N47 -->
		<!-- [S]hooms-N48 -->
		<div class="hooms-N48" data-bid="DrLsS6RTPl" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset">
						<p class="textset-tit">내 게시글</p>
					</div>
					<div class="tableset">
						<table class="tableset-table table">
							<colgroup>
								<col>
								<col>
								<col>
								<col>
								<col>
								<col>
								<col>
							</colgroup>
							<thead class="thead-light thead-border-top">
								<tr>
									<th scope="col">문의유형.</th>
									<th scope="col">제목</th>
									<th scope="col">등록일</th>
									<th scope="col">등록자</th>
									<th scope="col">답변</th>
									<th scope="col">조회수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="tableset-mobile">Q&amp;A</td>
									<td class="tableset-tit tableset-order02"><a
										href="javascript:void(0)"> <span>안녕하세요. 문의드립니다.</span>
									</a></td>
									<td class="tableset-order05">2023.01.01</td>
									<td class="tableset-order04">홍**</td>
									<td class="tableset-order01">
										<div class="badgeset">대기</div>
									</td>
									<td class="tableset-mobile">166</td>
								</tr>
								<tr>
									<td class="tableset-mobile">1:1 상담</td>
									<td class="tableset-tit tableset-order02"><a
										href="javascript:void(0)"> <span>안녕하세요. 문의드립니다.</span>
									</a></td>
									<td class="tableset-order05">2023.01.01</td>
									<td class="tableset-order04">홍**</td>
									<td class="tableset-order01">
										<div class="badgeset badgeset-active">답변완료</div>
									</td>
									<td class="tableset-mobile">166</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]hooms-N48 -->
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
					<li class="footer-snsitem"><a class="footer-snslink" href="javascript:void(0)">
						<img src="${cpath}/resources/icons/ico_instagram_lightgrey.svg" alt="인스타그램">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink" href="javascript:void(0)">
						<img src="${cpath}/resources/icons/ico_youtube_lightgrey.svg" alt="유튜브">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink" href="javascript:void(0)">
						<img src="${cpath}/resources/icons/ico_facebook_lightgrey.svg" alt="페이스북">
					</a></li>
					<li class="footer-snsitem"><a class="footer-snslink" href="javascript:void(0)">
						<img src="${cpath}/resources/icons/ico_kakao_lightgrey.svg" alt="카카오톡">
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
	<!-- [E]hooms-N57 -->
	
	
	<script src="${cpath}/resources/js/setting.js"></script>
	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script>
	
	<script src="${cpath}/resources/mypageResources/js/setting.js"></script>
	<script src="${cpath}/resources/mypageResources/js/template.js"></script>
	<script src="${cpath}/resources/mypageResources/js/script.js"></script>
</body>