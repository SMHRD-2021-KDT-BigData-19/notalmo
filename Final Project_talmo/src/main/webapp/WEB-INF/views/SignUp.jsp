<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>회원가입 | 실전프로젝트</title>
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
							<a href="${cpath}/LoginPage.do"
								class="btn-profile header-utils-btn" title="profile"></a>
						</c:when>
						<c:otherwise>
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
					<li class="fullmenu-gnbitem">
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
		<!------------------------------회원가입-------------------------------->
		<!-- [S]hooms-N53 -->
		<form action="${cpath}/Signup.do" method="post">
			<div class="hooms-N53" data-bid="hxlS88V86v" id="">
				<div class="contents-inner">
					<div class="contents-container">
						<div class="textset textset-h2">
							<h2 class="textset-tit">회원가입</h2>
						</div>
						<div class="contents-form">
							<div class="contents-form-top">
								<label class="labelset"> <strong class="labelset-vital">
										<span>*</span>필수입력
								</strong>
								</label>

								<div class="contents-form-bottom">
									<div class="inputset inputset-lg inputset-label">
										<label>
											<h6 class="inputset-tit">
												성별<span>*</span>
											</h6>
											<input type="radio" name="gender" value="male" required>남성
											&nbsp;&nbsp;
											<input type="radio" name="gender" value="female" required>여성
										</label>
									</div>

									<div class="inputset inputset-lg inputset-label">
										<label>
											<h6 class="inputset-tit">
												아이디<span>*</span>
											</h6>
											<input type="text" class="inputset-input form-control"
											placeholder="사용하실 아이디를 입력해 주세요." aria-label="내용"
											required="아이디를 입력해 주세요." id="id" name="id">
										</label>
										<button class="btnset btnset-line btnset-lg">중복확인</button>
									</div>

									<div class="inputset inputset-lg inputset-label">
										<label>
											<h6 class="inputset-tit">
												비밀번호<span>*</span>
											</h6>
											<input id="password" type="password"
											class="inputset-input form-control"
											placeholder="사용하실 비밀번호를 입력해 주세요." aria-label="내용"
											required="비밀번호를 입력해 주세요.">
										</label>
									</div>

									<div class="inputset inputset-lg inputset-label">
										<label>
											<h6 class="inputset-tit">
												비밀번호 재확인<span>*</span>
											</h6>
											<input id="confirmPassword" type="password"
											class="inputset-input form-control"
											placeholder="사용하실 비밀번호를 다시 입력해 주세요." aria-label="내용"
											required="비밀번호를 다시 입력해 주세요." name="pw">
										</label>
										<p id="passwordMatchStatus" class="password-not-match">비밀번호가 일치하지 않습니다.</p>
									</div>

									<script>
										var passwordInput = document .getElementById('password');
										var confirmPasswordInput = document.getElementById('confirmPassword');
										var passwordMatchStatus = document.getElementById('passwordMatchStatus');

										confirmPasswordInput.addEventListener('input',
											function() {
												var password = passwordInput.value;
												var confirmPassword = this.value;

												if (password === confirmPassword) {
													passwordMatchStatus.textContent = '비밀번호가 일치합니다.';
													passwordMatchStatus.className = 'password-match';
												} else {
													passwordMatchStatus.textContent = '비밀번호가 일치하지 않습니다.';
													passwordMatchStatus.className = 'password-not-match';
												}
										});
									</script>

									<br>

									<div class="inputset inputset-lg inputset-label">
										<label>
											<h6 class="inputset-tit">
												생년월일<span>*</span>
											</h6> <input type="text" class="inputset-input form-control"
											placeholder="YYYY-MM-DD" aria-label="내용"
											required="생년월일을 입력해 주세요." id="birthday" name="birthday">
										</label>
									</div>

									<div class="inputset inputset-lg inputset-label">
										<label>
											<h6 class="inputset-tit">
												휴대폰 번호<span>*</span>
											</h6>
											<input type="tel" class="inputset-input form-control"
											placeholder="- 없이 입력해주세요." aria-label="내용"
											required="휴대폰 번호를 입력해 주세요." id="phone" name="phone">
										</label>
									</div>
									<div class="inputset inputset-lg inputset-label">
										<label>
											<h6 class="inputset-tit">
												이메일<span>*</span>
											</h6>
											<input type="email" class="inputset-input form-control"
											placeholder="사용하실 이메일을 입력해 주세요." aria-label="내용"
											required="이메일을 입력해 주세요." id="email" name="email">
										</label>
										<!-- <div class="selectset selectset-lg">
											<button class="selectset-toggle btn" type="button">
												<span>선택해주세요</span>
											</button>
											<ul class="selectset-list">
												<li class="selectset-item">
													<button class="selectset-link btn on" type="button"
														data-value="선택해주세요">
														<span>선택해주세요</span>
													</button>
												</li>
												<li class="selectset-item">
													<button class="selectset-link btn" type="button"
														data-value="naver.com">
														<span>naver.com</span>
													</button>
												</li>
												<li class="selectset-item">
													<button class="selectset-link btn" type="button"
														data-value="gmail.com">
														<span>gmail.com</span>
													</button>
												</li>
											</ul>
										</div> -->
										<button class="btnset btnset-line btnset-lg">인증번호 발송</button>
									</div>

									<div class="inputset inputset-lg inputset-label">
										<label>
											<input type="tel"
												class="inputset-input form-control"
												placeholder="발송된 인증번호를 입력해주세요." aria-label="내용"
												required="발송된 인증번호를 입력해주세요.">
										</label>
										<button class="btnset btnset-line btnset-lg">확인</button>
									</div>

									<div class="inputset inputset-lg inputset-label">
										<label>
											<h6 class="inputset-tit">
												닉네임<span>*</span>
											</h6>
											<input type="text" class="inputset-input form-control"
											placeholder="사용하실 닉네임을 입력해 주세요." aria-label="내용"
											required="닉네임을 입력해 주세요." id="nick" name="nick">
										</label>
										<button class="btnset btnset-line btnset-lg">중복확인</button>
									</div>


									<div class="inputset inputset-lg"></div>
								</div>
							</div>

							<div class="contents-agree">
								<div class="inputset inputset-lg inputset-label">
									<label>
										<h6 class="inputset-tit">개인정보수집 및 이용동의</h6>
										<div class="inputset-board">
											- 수집하는 개인정보 항목 : 이메일 주소 <br> <br> 작성해주시는 개인 정보는 문의
											접수 및 고객 불만 해결을 위해 5년간 보관됩니다. 이용자는 본 동의를 거부할 수 있으나, 미동의시 문의
											접수가 불가능합니다.
										</div>
									</label>
								</div>
								<div class="checkset">
									<input id="checkset-a-2-1" class="checkset-input input-fill"
										type="checkbox" value="" aria-label="내용" required="체크해 주세요.">
									<label class="checkset-label" for="checkset-a-2-1"></label> <span
										class="checkset-text">위 내용을 읽었으며, 내용에 동의합니다. (필수)</span>
								</div>
							</div>
							<button class="btnset btnset-lg contents-submit" type="submit">가입완료</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- [E]hooms-N53 회원가입 -->
		<!-------------------------------------------------------------->
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
	<!-------------------------------------------------------------->

	<script src="${cpath}/resources/js/setting.js"></script>
	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script>
</body>