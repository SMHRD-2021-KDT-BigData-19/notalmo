<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
  <title>커뮤니티</title>
  
<link rel="stylesheet" href="${cpath}/resources/communityListResources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/communityListResources/css/style.css">
<script src="${cpath}/resources/communityListResources/js/setting.js"></script>
<script src="${cpath}/resources/communityListResources/js/template.js"></script>
<script src="${cpath}/resources/communityListResources/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>

<style>

    .placeholder-text {
        color: #666;
        font-style: italic;
        font-size: 18px;
        text-align: right;
    }
    
    .placeholder-text a.jaju {
        text-decoration: underline;
    }
    
    .contents-btn {
      text-align: right;
    }
    
</style>

<body>
	
	<%@ include file="Header.jsp" %>
	
  <main class="th-layout-main ">
    <div class="hooms-N36" data-bid="LklssKG92p" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset textset-h2">
            <h2 class="textset-tit" style="text-align: center; margin-bottom:35px; font-size:56px;">
			<span>자유게시판</span></h2>
          </div>
          
		<br>
		
		<div class="placeholder-text">
			<a class="jaju" href="${cpath}/Jaju.do">자주 묻는 질문</a>
		</div>
		
		<br>
		
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
							<span>병원질문</span>
						</button>
					</li>
					<li class="selectset-item">
						<button class="selectset-link btn" type="button">
							<span>제품질문</span>
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
                 		<td class="tableset-order05">
						    <script>
						        var createDate = new Date('${b.create_date}');
						        var formattedDate = createDate.toLocaleString('ko-KR', {
						            year: 'numeric',
						            month: 'numeric',
						            day: 'numeric',
						            hour: 'numeric',
						            minute: 'numeric'
						        });
						        document.write(formattedDate);
						    </script>
						</td>
						<td class="tableset-order04">${b.nick}</td>
						<td class="tableset-mobile">1234</td>
					</tr>
				</c:forEach>

              </tbody>
            </table>
          </div>
          
          <div class="contents-btn" style="margin-left: 1100px; max-width: 0.5rem;" >
			<c:choose>
			    <c:when test="${empty loginMember}">
			      <a class="btnset" href="${cpath}/LoginPage.do">글쓰기</a>
			    </c:when>
			    <c:otherwise>
			      <a class="btnset" href="${cpath}/PostUploadPage.do">글쓰기</a>
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
    
    document.addEventListener('DOMContentLoaded', function () {
        var toggleButton = document.querySelector('.selectset-toggle');
        var selectList = document.querySelector('.selectset-list');

        toggleButton.addEventListener('click', function () {
            selectList.style.display = (selectList.style.display === 'none' || selectList.style.display === '') ? 'block' : 'none';
        });

        
        document.addEventListener('click', function (event) {
            if (!toggleButton.contains(event.target)) {
                selectList.style.display = 'none';
            }
        });
    });
    
    document.addEventListener('DOMContentLoaded', function () {
        var inputElement = document.querySelector('.inputset-input');
        var placeholderText = document.querySelector('.placeholder-text');

        inputElement.addEventListener('focus', function () {
            placeholderText.style.display = 'none';
        });

        inputElement.addEventListener('blur', function () {
            if (inputElement.value === '') {
                placeholderText.style.display = 'block';
            }
        });
    });
 
    function redirectToJaju() {
        window.location.href = 'Jaju.jsp';
    }
    
  </script>

</body>