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
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>

<%-- 	<h1>mainPage</h1>
	<a href="${cpath}/LoginPage.do">로그인</a>
	<a href="${cpath}/SignupPage.do">회원가입</a>
	<a href="${cpath}/Logout.do">로그아웃</a> --%>
	<!--------------------------------------------상단 메뉴1------------------------------------------->
	<!-- [S]hooms-N54 -->
	<header class="hooms-N54" data-bid="sELS8895JS">
		<div class="header-inner">
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
								<a class="fullmenu-gnblink" href="${cpath}/TalmoTestPage.do">
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
	<!-- [E]hooms-N54 -->
	<!------------------------------------------------------------------------------------>

	<main class="th-layout-main ">
		<!-- [S]hooms-N1 -->
		<div class="hooms-N1" data-bid="uRLS880PXf">
			<div class="contents-container">
				<div class="contents-swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="contents-backimg img-pc" alt="배너 PC 이미지"
								style="background-color: orange;"></div>
							<div class="contents-slide-group">
								<h2 class="contents-title">HOOMS</h2>
								<p class="contents-text">
									훔스만의 독자적인 기술로 완성된 포켓스프링 <br> 흔들리지 않는 편안함, 그 아름다운 휴식
									Beautyrest
								</p>
								<a class="contents-link" href="javascript:void(0)">Learn
									more</a>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="contents-backimg img-pc" alt="배너 PC 이미지"
								style="background-color: deepskyblue;"></div>
							<div class="contents-slide-group">
								<h2 class="contents-title">HOOMS</h2>
								<p class="contents-text">
									훔스만의 독자적인 기술로 완성된 포켓스프링 <br> 흔들리지 않는 편안함, 그 아름다운 휴식
									Beautyrest
								</p>
								<a class="contents-link" href="javascript:void(0)">Learn
									more</a>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="contents-backimg img-pc" alt="배너 PC 이미지"
								style="background-color: yellowgreen;"></div>
							<div class="contents-slide-group">
								<h2 class="contents-title">HOOMS</h2>
								<p class="contents-text">
									훔스만의 독자적인 기술로 완성된 포켓스프링 <br> 흔들리지 않는 편안함, 그 아름다운 휴식
									Beautyrest
								</p>
								<a class="contents-link" href="javascript:void(0)">Learn
									more</a>
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
		<!-- [E]hooms-N1 -->

		<!-- [S]hooms-N2 -->
		<!-- <div class="hooms-N2" data-bid="yklS8895Mj">
      <div class="contents-container">
        <div class="contents-visual img-pc" alt="비주얼 PC 이미지"></div>
        <div class="contents-body container-md">
          <h2 class="contents-title">INTRO</h2>
          <p class="contents-text"> 편안하고 기품있는 침실문화의 시작 <br> 실용성을 넘어선 공간의 새로운 가치를 만들어갑니다 </p>
        </div>
      </div>
    </div> -->
		<!-- [E]hooms-N2 -->

		<!-- [S]hooms-N58 -->
		<!-- <div class="hooms-N58" data-bid="SNlS8895S3">
      <div class="contents-container container-md">
        <div class="tabset tabset-solid">
          <ul class="tabset-list tabset-sm">
            <li class="tabset-item">
              <a class="tabset-link active" href="javascript:void(0)">
                <span>INTRO</span>
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" href="javascript:void(0)">
                <span>BRAND STORY</span>
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" href="javascript:void(0)">
                <span>OUR PHILOSOPHY</span>
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" href="javascript:void(0)">
                <span>HERITAGE</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div> -->
		<!-- [E]hooms-N58 -->

		<!-- [S]hooms-N36 -->
		<div class="hooms-N36" data-bid="dvlS8895wE">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset textset-span">
						<span class="textset-tit">풀뿌리 최신글</span>
					</div>
					<div class="tabset tabset-brick">
						<ul class="tabset-list tabset-sm tabset-fill">
							<li class="tabset-item"><a href="javascript:void(0);"
								class="cardset">
									<figure class="cardset-figure">
										<img class="cardset-img"
											src="${cpath}/resources/images/MainPage_community_talmo_img1.png"
											alt="카드 이미지">
									</figure> <span>탈모 일지2</span>
							</a> <!-- <img src="../resources/images/img_subvisual_mobile_01.png" alt="비주얼 모바일 이미지">
                <a class="tabset-link" href="javascript:void(0)">
                  <span>Q&amp;A</span>
                </a> --></li>
							<li class="tabset-item">
								<!-- <a class="tabset-link" href="javascript:void(0)">
                  <span>자주 묻는 질문</span>
                </a> --> <a href="javascript:void(0);" class="cardset">
									<figure class="cardset-figure">
										<img class="cardset-img"
											src="${cpath}/resources/images/MainPage_community_talmo_img2.png"
											alt="카드 이미지">
									</figure> <span>탈모 일지2</span>
							</a>
							</li>
							<li class="tabset-item">
								<!-- <a class="tabset-link" href="javascript:void(0)">
                  <span>1:1 문의</span>
                </a> --> <a href="javascript:void(0);" class="cardset">
									<figure class="cardset-figure">
										<img class="cardset-img"
											src="${cpath}/resources/images/MainPage_community_talmo_img3.png"
											alt="카드 이미지">
									</figure> <span>탈모 일지2</span>
							</a>
							</li>
						</ul>
					</div>
					<!-- <div class="contents-search">
            <p class="contents-result"> 전체<span> 24</span>개 </p>
            <div class="contents-form">
              <div class="selectset selectset-lg">
                <button class="selectset-toggle btn" type="button">
                  <span>전체</span>
                </button>
                <ul class="selectset-list">
                  <li class="selectset-item">
                    <button class="selectset-link btn" type="button" data-value="전체">
                      <span>전체</span>
                    </button>
                  </li>
                </ul>
              </div>
              <div class="inputset inputset-lg">
                <button class="inputset-icon icon-right icon-search btn" type="button" aria-label="아이콘"></button>
                <input type="text" class="inputset-input form-control" placeholder="검색어를 입력해주세요." aria-label="내용">
              </div>
            </div>
          </div> -->
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
							<!-- <thead class="thead-light thead-border-top">
                <tr>
                  <th scope="col">No.</th>
                  <th scope="col">구분</th>
                  <th scope="col">제목</th>
                  <th scope="col">등록일</th>
                  <th scope="col">등록자</th>
                  <th scope="col">답변</th>
                  <th scope="col">조회수</th>
                </tr>
              </thead> -->
							<tbody>
								<tr>
									<!-- <td class="tableset-mobile">24</td>
                  <td class="tableset-category tableset-order03">가구 상담</td> -->
									<td class="tableset-tit tableset-order02"><a
										class="tableset-ico" href="javascript:void(0)">안녕하세요.
											문의드립니다.</a></td>
									<!-- <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td> -->
									<!-- <td class="tableset-order01">
                    <div class="badgeset">대기</div>
                  </td> -->
									<td class="tableset-mobile">166</td>
								</tr>
								<tr>
									<!-- <td class="tableset-mobile">23</td>
                  <td class="tableset-category tableset-order03">인테리어 상담</td> -->
									<td class="tableset-tit tableset-order02"><a
										class="tableset-ico" href="javascript:void(0)">안녕하세요.
											문의드립니다.</a></td>
									<!-- <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td> -->
									<!-- <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td> -->
									<td class="tableset-mobile">166</td>
								</tr>
								<tr>
									<!-- <td class="tableset-mobile">22</td>
                  <td class="tableset-category tableset-order03">A/S 신청</td> -->
									<td class="tableset-tit tableset-order02"><a
										class="tableset-ico" href="javascript:void(0)">안녕하세요.
											문의드립니다.</a></td>
									<!-- <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td> -->
									<!-- <td class="tableset-order01">
                    <div class="badgeset">대기</div>
                  </td> -->
									<td class="tableset-mobile">166</td>
								</tr>
								<tr>
									<!-- <td class="tableset-mobile">21</td>
                  <td class="tableset-category tableset-order03">기타</td> -->
									<td class="tableset-tit tableset-order02"><a
										class="tableset-ico" href="javascript:void(0)">안녕하세요.
											문의드립니다.</a></td>
									<!-- <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td> -->
									<!-- <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td> -->
									<td class="tableset-mobile">166</td>
								</tr>
								<tr>
									<!-- <td class="tableset-mobile">20</td>
                  <td class="tableset-category tableset-order03">가구 상담</td> -->
									<td class="tableset-tit tableset-order02"><a
										class="tableset-ico" href="javascript:void(0)">안녕하세요.
											문의드립니다.</a></td>
									<!-- <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td> -->
									<!-- <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td> -->
									<td class="tableset-mobile">166</td>
								</tr>
								<!-- <tr>
                  <td class="tableset-mobile">19</td>
                  <td class="tableset-category tableset-order03">기타</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                  <td class="tableset-mobile">166</td>
                </tr>
                <tr>
                  <td class="tableset-mobile">18</td>
                  <td class="tableset-category tableset-order03">기타</td>
                  <td class="tableset-tit tableset-order02">
                    <a class="tableset-ico" href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order04">홍**</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                  <td class="tableset-mobile">166</td>
                </tr> -->
							</tbody>
						</table>
					</div>
					<!-- <div class="contents-btn">
            <a class="btnset modalset-btn" href="javascript:void(0)">상담 문의</a>
          </div> -->
					<!-- <nav class="pagiset pagiset-line">
            <div class="pagiset-ctrl">
              <a class="pagiset-link pagiset-first" href="javascript:void(0)">
                <span class="visually-hidden">처음</span>
              </a>
            </div>
            <div class="pagiset-ctrl">
              <a class="pagiset-link pagiset-prev" href="javascript:void(0)">
                <span class="visually-hidden">이전</span>
              </a>
            </div>
            <div class="pagiset-list">
              <a class="pagiset-link active-fill" href="javascript:void(0)">1</a>
              <a class="pagiset-link" href="javascript:void(0)">2</a>
              <a class="pagiset-link" href="javascript:void(0)">3</a>
            </div>
            <div class="pagiset-ctrl">
              <a class="pagiset-link pagiset-next" href="javascript:void(0)">
                <span class="visually-hidden">다음</span>
              </a>
            </div>
            <div class="pagiset-ctrl">
              <a class="pagiset-link pagiset-last" href="javascript:void(0)">
                <span class="visually-hidden">마지막</span>
              </a>
            </div>
          </nav> -->
				</div>
			</div>
			<!-- <div id="modalSet1" class="modalset">
        <div class="modal-header">
          <h6 class="modal-title">1:1 문의</h6>
        </div>
        <div class="modal-body">
          <p> 로그인이 필요한 서비스입니다. <br> 로그인하시겠습니까? </p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btnset btnset-ghost modal-close">취소</button>
          <a href="javascript:void(0)" class="btnset btnset-confirm">확인</a>
        </div>
      </div>
      <div class="modalset-dim"></div> -->
		</div>
		<!-- [E]hooms-N36 -->


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