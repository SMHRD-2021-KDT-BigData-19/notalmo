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
<title>News_Article_상세 | 13245689</title>
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>
<style>
	
	.h7{
		text-align:center;
		font-size: 36px;
		font-weight: bold;
	}
	
	.p1{
		text-align:right;
		font-size: 18px;
	}
	
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
		margin: 0px 0 20px 0;
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
	<!--------------------------------------------------------------------------------------------> --%>
	
	<main class="th-layout-main ">
		<!-- [S]hooms-N32 -->
		<div class="hooms-N32" data-bid="kylsTY0GhF" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<h1 class="h7">${vo.title}</h1>
					<p style="font-size: 20px; font-weight: bold;">${vo.category}</p>

					<p class="p1">${vo.create_date}</p>
					<div class="contents-cardlist contents-cardlist-active">
					
	    					<p style="margin-top: 10px; font-weight: bold;">닉네임 : ${vo.nick}</p>
						<c:choose>
	    					<c:when test="${empty loginMember}">
	        					<!-- 로그인 멤버가 비어있는 경우 처리 -->
	    					</c:when>
						    <c:otherwise>
						    	<div style="text-align: right;">
							        <c:if test="${loginMember.user_id eq vo.user_id}">
							            <!-- user_id가 post_id와 일치하는 경우에만 수정 및 삭제 링크를 표시 -->
							            <a href="javascript:void(0)"><strong>수정 /</strong></a>
							            <a href="${cpath}/PostDelete.do/${vo.post_id}"><strong>삭제 /</strong></a>
							            <a href="javascript:void(0)"><strong>신고</strong></a>
							        </c:if>
						        </div>
						    </c:otherwise>
						</c:choose>
						<a href="javascript:void(0)" class="cardset">
							<div class="cardset-body">
								<p class="cardset-descView" style="font-size: 20px;">${vo.content}</p>
							</div>
							<figure>
								<c:forEach items="${Ivo}" var="ivo">
									<%-- <h4>${ivo.picture_id}</h4>
									<h4>${ivo.folder}\'${ivo.file_name}'</h4> --%>
									<%-- <img class="cardset-img" src="${ivo.folder}\${ivo.file_name}" alt="이미지"> --%>
									<img class="cardset-imgT" src="http://172.30.1.59:8080/imgT/post/${vo.post_id}/${ivo.file_name}" alt="이미지">
								</c:forEach>
							</figure>
						</a>
					</div>



					<!-- 댓글창 -->
					<div class="comment" id="comments-container">
						<h2 class="h2">댓글</h2>
						<c:forEach items="${Cvo}" var="Cvo">
							<div class="comment-section">
								<div class="comment-display">
									<div class="comment-user">
										<strong>${Cvo.nick}</strong>
									</div>
									<div class="comment-date">${Cvo.create_date}</div>
									&nbsp&nbsp&nbsp&nbsp
									<div class="comment-actions">
										<c:if test="${loginMember.user_id eq Cvo.user_id}">
					            			<!-- user_id가 post_id와 일치하는 경우에만 수정 및 삭제 링크를 표시 -->
					            			<a href="${cpath}/CommentDelete.do/${Cvo.comment_id}/${vo.post_id}">삭제 /</a>
					        			</c:if>
										<a> 신고</a>
									</div>
									<div class="comment-content">${Cvo.content}</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<!-- 댓글 입력창 -->
					<c:choose>
						<c:when test="${empty loginMember}">
							
						</c:when>
						<c:otherwise>
							<form id="frm">
							<div><div class="inputset inputset-lg inputset-label">
								<input type="hidden" name="user_id" value="${loginMember.user_id}">
								<input type="hidden" name="post_id" value="${vo.post_id}">
								<label>
								<textarea class="inputset-textarea" name="content" id="comment-input" placeholder="댓글을 입력해 주세요." required=""></textarea>
								<div class="inputset-langth">
									<span class="inputset-count">0</span>
									<span class="inputset-total">/4000</span>
								</div>
								</label>
							</div>
							<div class="contents-btn">
								<a class="btnset" onclick="addComment('${loginMember.nick}')">등록</a>
							</div></div>
							</form>
						</c:otherwise>
					</c:choose>
					</form>
					
					
				</div>
			</div>
		</div>
		<script>
		function DeleteComment(comment_id){
			console.log(comment_id);
		}
		function addComment(nick) {
		    // 댓글 입력값 가져오기
		    var commentInput = document.getElementById('comment-input');
		    var commentText = commentInput.value;
		    var fData = $("#frm").serialize();
		    console.log(fData);
		    
		    if (commentText.trim() !== '') {
		    	// To DB
		    	$.ajax({
	  				url: "${cpath}/Comment.do",
	  				type: "post", // 내용이 길 떄, 생성시킬 때 사용
	  				data: fData,
	  				/* success: function () {
	  		            alert("성공~~");
	  		        },
	  				error: function(e){
	  					console.log(e);
	  					alert("댓글 저장 실패ㅜ");
	  				} */
  				}); // END ajax
  			
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
		            '<div class="comment-date">' + formattedTime + '</div>&nbsp&nbsp&nbsp&nbsp' +
		            '<div class="comment-actions">' +
						'<a href="javascript:void(0)">삭제 /</a>'+
    					'<a>  신고</a></div>'+
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
			</div>
		</div>
	</footer>
	<!-- [E]hooms-N57 -->


	<script src="${cpath}/resources/communityViewResources/js/setting.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/plugin.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/template.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/common.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/script.js"></script>
</body>