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
<title>게시글 등록 | post</title>
<link rel="stylesheet" href="${cpath}/resources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css">

<link rel="stylesheet"
	href="${cpath}/resources/postupload/css/style.css">
<link rel="stylesheet"
	href="${cpath}/resources/postupload/css/plugin.css">
<link rel="stylesheet"
	href="${cpath}/resources/postupload/css/template.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>

<body>
	<script>
		function insertPost() {
			// var title = ${"#title"}.val();
			// 너무 일일이 가져오는 번거로움
			// form태그에 담긴 내용을 직렬화 하는 js 함수
			// 필수 입력 필드 검증
			var titleValue = $("#Title").val().trim();
			var contentValue = $("#Inquiry").val().trim();

			if (titleValue === "" || contentValue === "") {
				alert("제목과 내용을 모두 입력해주세요.");
				return false;
			}

			var fData = $("#frm").serialize();
			console.log(fData);

			$.ajax({
				url : "${cpath}/PostUpload.do",
				type : "post", // 내용이 길 떄, 생성시킬 때 사용
				data : fData,
				// 가져올값 없음 dataType X
				// 통신이 끝나고 나면 다시 게시글 목록이 뜨기
				// boardList() js 함수에 이미 만듦
				success : function() {
					alert("성공~~");
				},
				error : function() {
					alert("글쓰기 실패ㅜ");
				}
			}); // END ajax

		} // END insertPost()
	</script>

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
		<!-- [S]opilsol-N34 -->
		<div class="opilsol-N34" data-bid="ZflSLHIxiE" id="">
			<div class="content-container container-md">
				<div class="textset content-tit">
					<p class="textset-eu">post</p>
					<h2 class="textset-tit">게시글 등록</h2>
				</div>
			</div>
		</div>
		<!-- [E]opilsol-N34 -->

		<!-- [S]opilsol-N27 -->
		<div class="opilsol-N27" data-bid="DOlslHiXq3" id="">
			<div class="content-container">
				<div class="contents-form container-md">
					<div class="contents-form-top d-flex justify-content-between">
						<span>작성자: ${loginMember.nick}</span>
					</div>
					<div class="contents-form tableset">
						<!-- 게시물 등록 -->
						<form id="frm">
							<input type="hidden" name="user_id"
								value="${loginMember.user_id}"> <input type="hidden"
								name="category" id="categoryHiddenInput" value="자유게시판">
							<div class="tableset-inner">
								<table class="tableset-table table">
									<colgroup>
										<col>
										<col>
										<col>
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th><span class="label">카테고리 선택</span></th>
											<td colspan="3">
												<div class="selectset">
													<button class="selectset-toggle btn" type="button">
														<span>자유게시판</span>
													</button>
													<ul class="selectset-list">
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>자유게시판</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>고민 상담</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>탈모 진단</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>모발 이식</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>두피 문신</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>병원</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>제품</span>
															</button>
														</li>
													</ul>
												</div>
											</td>
										</tr>
										<tr>
											<th><label class="req label" for="Title">제목</label></th>
											<td colspan="3">
												<div class="inputset">
													<input type="text" class="inputset-input form-control"
														id="Title" aria-label="제목" name="title">
												</div>
											</td>
										</tr>
										<tr>
											<th><label class="req label" for="Inquiry">게시글</label></th>
											<td colspan="3">
												<div class="inputset">
													<textarea class="inputset-input form-control textarea"
														id="Inquiry" aria-label="게시글" name="content"></textarea>
												</div>
											</td>
										</tr>
										<tr>
											<th><span class="label">파일첨부</span></th>
											<td>
												<div class="fileset fileset-lg fileset-label">
													<label>
														<div class="fileset-body">
															<div class="fileset-group">
																<input type="file" class="fileset-input"
																	accept="image/jpeg, image/png" id="fileInput">
																<button class="fileset-cancel"></button>
															</div>
															<span
																class="btnset btnset-line btnset-mono btnset-lg btnset-rect fileset-upload">파일첨부</span>
														</div>
													</label>
												</div>
											</td>
											<td>
												<p class="p1 co-text3">이미지 형식의 jpg(jpeg), png만 첨부 가능합니다.</p>
												<p class="p1 co-text3">첨부파일은 20MB를 초과할 수 없습니다.</p>
											</td>
										</tr>
										<tr>
											<th><span class="label">미리 보기</span></th>
											<td colspan="3">
												<div id="imagePreview"></div>
											</td>
										</tr>

										<script>
											// 이미지 미리 보기 함수
											function previewImage() {
												const fileInput = document.getElementById('fileInput');
												const imagePreview = document.getElementById('imagePreview');

												if (fileInput.files && fileInput.files[0]) {
													const reader = new FileReader();

													reader.onload = function(e) {
														// 이미지를 미리 보여주는 엘리먼트에 설정
														imagePreview.innerHTML = '<img src="' + e.target.result + '" alt="미리 보기">';
													};

													reader.readAsDataURL(fileInput.files[0]);
												}
											}
										</script>



									</tbody>
								</table>
								<a href="${cpath}/CommunityPage.do">취소</a>
								<button type="button" class="btn btn-secondary btn-lg" onclick="insertPost()">등록</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]opilsol-N27 -->

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

	<script src="${cpath}/resources/js/setting.js"></script>
	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script>

	<script src="${cpath}/resources/postupload/js/setting.js"></script>
	<script src="${cpath}/resources/postupload/js/plugin.js"></script>
	<%-- <script src="${cpath}/resources/postupload/js/template.js"></script> --%>

</body>