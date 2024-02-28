<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
<!--   <meta charset="UTF-8">
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
  <title>커뮤니티</title>
  
<link rel="stylesheet" href="${cpath}/resources/communityListResources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/communityListResources/css/style.css">

<%-- <link rel="stylesheet" href="${cpath}/resources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/css/style.css"> --%>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	/* $(document).ready(function(){
		// alert("제이쿼리 시작!!");
		// 게시글 목록을 가져오는 ajax통신이
		// 문서가 시작되면 바로 요청을 보냈다가 응답 받아오는 함수를 호출
		boardList()
	});
	
	
	function boardList(){
		// ajax가 통신하는 서버는 REST SERVER
		// ajax는 보통 응답할 떄 json 형식으로 주고받음 
		$.ajax({
			url: "${cpath}/boardAjaxList.do",
			type: "get",
			// data 보내줄 데이터 없음
			dataType: "json",
			// 응답해왔을 때 처리할 수 았는 콜백 함수 사용
			// ajax에서 함수를 부를 떄 ()를 붙이지 않음
			success: callBack,
			error: function(){
				alert("게시글 목록 가져오기 실패ㅜㅜ");
			}
		}) // END ajax
	} // END boardList() */
</script>

</head>

<body>
	
	<%@ include file="Header.jsp" %>
	
  <main class="th-layout-main ">
    <!-- [S]hooms-N36 -->
    <div class="hooms-N36" data-bid="LklssKG92p" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset textset-h2">
            <h2 class="textset-tit" style="text-align: center;">
			<span>자유게시판</span></h2>
          </div>

          <div class="contents-search">
            <p class="contents-result"> 전체<span> 24</span>개 </p>
            <div class="contents-form">
              <div class="selectset selectset-lg">
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
              <div class="inputset inputset-lg">
                <button class="inputset-icon icon-right icon-search btn" type="button" aria-label="아이콘"></button>
                <input type="text" class="inputset-input form-control" placeholder="검색어를 입력해주세요." aria-label="내용">
              </div>
            </div>
          </div>
          <div class="tableset">
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
                  <th scope="col" contenteditable="true">카테고리</th>
                  <th scope="col">제목</th>
                  <th scope="col">등록일</th>
                  <th scope="col">등록자</th>
                  <th scope="col">조회수</th>
                </tr>
              </thead>
              <tbody>
                
                
              	<c:forEach items="${PostList}" var="b">
					<tr>
						<td class="tableset-mobile">${b.category}</td>
						<c:url var="contectLink" value="CommunityView.do/${b.post_id}" />
						<td class="tableset-tit tableset-order02">
							<a class="tableset-ico" href="${contectLink}">
                      			<span>${b.title}</span>
                   			</a>
                 		<td class="tableset-order05">${b.create_date}</td>
						<td class="tableset-order04">${b.nick}</td>
						<td class="tableset-mobile">1234</td>
					</tr>
				</c:forEach>

              </tbody>
            </table>
          </div>
          <div class="contents-btn">
			<c:choose>
			    <c:when test="${empty loginMember}">
			      <a class="btnset" href="${cpath}/LoginPage.do">게시물 등록</a>
			    </c:when>
			    <c:otherwise>
			      <a class="btnset" href="${cpath}/PostUploadPage.do">게시물 등록</a>
			    </c:otherwise>
		  	</c:choose>
          </div>
          <nav class="pagiset pagiset-line">
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
          </nav>
        </div>
      </div>

    </div>
  </main>
  
	<%@ include file="Footer.jsp" %>
	
  <script>
    document.addEventListener('DOMContentLoaded', function () {
      const pagisetLinks = document.querySelectorAll('.pagiset-link');
      pagisetLinks.forEach(function (link) {
        link.addEventListener('click', function () {
          const activeLink = document.querySelector('.pagiset-link.active-line');
          if (activeLink) {
            activeLink.classList.remove('active-line');
          }
          link.classList.add('active-line');
        });
      });
    });
  </script>

<%-- 	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script> --%>
	

	<script src="${cpath}/resources/communityListResources/js/setting.js"></script>
	<script src="${cpath}/resources/communityListResources/js/template.js"></script>
	<script src="${cpath}/resources/communityListResources/js/script.js"></script>
</body>