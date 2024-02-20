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
<title>News_Article_상세 | 13245689</title>
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<style>
.comment {
	padding-top: 5rem;
}

.comment-content {
	padding: 1rem 0;
}

.comment-actions {
	text-align: right;
}

.comment-actions a {
	font-weight: bold;
	font-size: 1.2rem;
}

.comment-user, .comment-date, .comment-actions {
	display: inline-block;
	margin-right: 10px;
	/* 간격 조절, 필요에 따라 조절 가능 */
}

.comment-section {
	background-color: #f0f0f0;
	/* 댓글창 배경색 */
	padding: 10px;
	border-radius: 5px;
	margin: 20px 0;
}
</style>

<body>
	<%@ include file="Header.jsp" %>
	<%-- <!--------------------------------------------상단 메뉴2------------------------------------------->
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
 --%>
	<main class="th-layout-main ">
		<!-- [S]hooms-N32 -->
		<div class="hooms-N32" data-bid="kylsTY0GhF" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<h2 class="h2">중 제목 H2</h2>
					<h4 class="h4">콘텐츠 제목 H4</h4>
					<div class="contents-cardlist contents-cardlist-active">
						<a href="javascript:void(0)" class="cardset">
							<div class="cardset-body">
								<p class="cardset-desc">템플릿 하우스는 원 클릭과 드래그앤 드랍만으로도 누구나 쉽고
									아름답게 웹 페이지를 만들고 HTML 코드 산출물을 다운받아 본인의 호스팅에 옮겨 자유롭게 추가 개발을 할 수
									있습니다. 코로나19로 전 세계의 온라인이 일상화, 디지털 전환의 가속화로 IT 인재 확보의 경쟁이 치열해 지면서
									시니어급의 전문가 확보 경쟁으로 과도한 연봉 인상 등 자금력이 부족한 중소기업은 인재를 채용하는데 더 어려움을
									겪고 있습니다. 작업 페이지가 많은 금융, 공공기관, 대형 SI 프로젝트인 경우 전체 분량의 50% 이상이 같은
									패턴의 반복되는 비 생산적 중복 업무로 이루어져 있어, 업무의 비 생산성을 가지고 있습니다. 웹 페이지 산출물이
									나오는 과정은 3명의 전문가들의 각각의 시간을 할애하여 생산하는 부분을 템플릿 하우스를 사용하면 1사람이 원
									클릭과 드래그앤 드랍 방식을 통해 웹 페이지를 10분 만에 생성하고 코드 편집과 코드 산출물 다운로드 기능을 통해
									더 자유롭게 개발할 수 있습니다.</p>
							</div>
							<figure class="cardset-figure">
								<img class="cardset-img"
									src="../resources/images/img_customer_03_1.png" alt="이미지">
							</figure>
						</a>
					</div>



					<!-- 댓글창 -->
					<div class="comment" id="comments-container">
						<h2>댓글 창</h2>
						<div class="comment-section">
							<div class="comment-display">
								<div class="comment-user">
									<strong>오승지</strong>
								</div>
								<div class="comment-date">2023-02-19 14:19</div>
								&nbsp&nbsp&nbsp&nbsp
								<div class="comment-actions">
									<a>수정</a> &nbsp/&nbsp <a>삭제</a> &nbsp/&nbsp <a>신고</a>
								</div>
								<div class="comment-content">웹사이트 리뉴얼이 정말 멋지게 되었네요! 새로운
									디자인이 마음에 듭니다.</div>
							</div>
						</div>
						<div class="comment-section">
							<div class="comment-display">
								<div class="comment-user">
									<strong>오승지</strong>
								</div>
								<div class="comment-date">2023-02-19 14:19</div>
								&nbsp&nbsp&nbsp&nbsp
								<div class="comment-actions">
									<a>수정</a> &nbsp/&nbsp <a>삭제</a> &nbsp/&nbsp <a>신고</a>
								</div>
								<div class="comment-content">웹사이트 리뉴얼이 정말 멋지게 되었네요! 새로운
									디자인이 마음에 듭니다.</div>
							</div>
						</div>
						<div class="comment-section">
							<div class="comment-display">
								<div class="comment-user">
									<strong>오승지</strong>
								</div>
								<div class="comment-date">2023-02-19 14:19</div>
								&nbsp&nbsp&nbsp&nbsp
								<div class="comment-actions">
									<a>수정</a> &nbsp/&nbsp <a>삭제</a> &nbsp/&nbsp <a>신고</a>
								</div>
								<div class="comment-content">웹사이트 리뉴얼이 정말 멋지게 되었네요! 새로운
									디자인이 마음에 듭니다.</div>
							</div>
						</div>
					</div>

					<!-- 댓글 입력창 -->
					<div>
						<div class="inputset inputset-lg inputset-label">
							<label>
								<textarea class="inputset-textarea" id="comment-input" placeholder="댓글을 입력해 주세요." required=""></textarea>
								<div class="inputset-langth">
									<span class="inputset-count">0</span>
									<span class="inputset-total">/4000</span>
								</div>
							</label>
						</div>
						<div class="contents-btn">
							<a class="btnset" onclick="addComment('${loginMember.nick}')">등록</a>
						</div>
					</div>

				</div>
			</div>
		</div>
		<script>
		
		function addComment(nick) {
		    // 댓글 입력값 가져오기
		    var commentInput = document.getElementById('comment-input');
		    var commentText = commentInput.value;

		    if (commentText.trim() !== '') {
		        // 새로운 댓글 요소 생성
		        var newCommentSection = document.createElement('div');
		        newCommentSection.className = 'comment-section';

		        var newCommentDisplay = document.createElement('div');
		        newCommentDisplay.className = 'comment-display';

		        // 현재 시간 가져오기
		        var currentTime = new Date();
		        var formattedTime = currentTime.toISOString().slice(0, 19).replace('T', ' ');

		        newCommentDisplay.innerHTML =
		            '<div class="comment-user"><strong>' + nick + '</strong></div>' +
		            '<div class="comment-date">' + formattedTime + '</div>' +
		            '<div class="comment-actions">' +
		            	'<a>수정</a> &nbsp;/&nbsp; <a>삭제</a> &nbsp;/&nbsp; <a>신고</a>' +
		            '</div>' +
		            '<div class="comment-content">' + commentText + '</div>';

		        // 새로운 댓글 요소를 기존 댓글 컨테이너에 추가
		        var commentsContainer = document.getElementById('comments-container');
		        commentsContainer.appendChild(newCommentSection);
		        newCommentSection.appendChild(newCommentDisplay);

		        // 댓글 입력창 초기화
		        commentInput.value = '';
		    }
		}
    </script>
		<!-- [E]hooms-N32 -->

	</main>
<%-- 	<!-----------------------------하단 푸터----------------------------->
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
			</div>
		</div>
	</footer>
	<!-- [E]hooms-N57 --> --%>
	<%@ include file="Footer.jsp" %>

	<script src="${cpath}/resources/communityViewResources/js/setting.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/plugin.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/template.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/common.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/script.js"></script>
</body>