<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
  <title>메인페이지</title>
  
<link rel="stylesheet" href="${cpath}/resources/communityListResources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/communityListResources/css/style.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="${cpath}/resources/communityListResources/js/setting.js"></script>
<script src="${cpath}/resources/communityListResources/js/template.js"></script>
<script src="${cpath}/resources/communityListResources/js/script.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

</head>

<style>
	.swiper-container {
    width: 100%;
    padding-top: 50px;
    padding-bottom: 50px;
  }

  .swiper-slide {
    background-position: center;
    background-size: cover;
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
  }



  .cardset-item {
    width: calc(100% / 7);
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

	<%@ include file="Header.jsp" %>

	<main class="th-layout-main ">
		<div class="hooms-N1" data-bid="uRLS880PXf">
			<div class="contents-container">
				<div class="contents-swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="contents-backimg img-pc" alt="배너 PC 이미지"
								style="background-image: url('${cpath}/resources/images/MainPageBanner1.jpg');"></div>
							<div class="contents-slide-group">
								<h2 class="contents-title">Full Fill</h2>
								<p class="contents-text">
									Full Fill만의 독자적인 기능 <br> AI가 진단해주는 나의 탈모 진행율은?
								</p>
								<a class="contents-link" href="${cpath}/TalmoTestStartPage.do">AI 탈모 진단 받기</a>
							</div>
						</div>			
					</div>
				</div>
			</div>
		</div>

		<div class="hooms-N36" data-bid="dvlS8895wE">
			<div class="contents-inner">
				<div class="contents-container container-md" style="width:1200px;">
					<div class="textset textset-span" style="text-align:center;">
						<span class="textset-tit" style="font-weight: bold; font-size: 30px;">관련 기사</span>
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
                                 <div class="cardset-title">탈모 예방하는<br>습관 5가지</div>
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
                                 <div class="cardset-title">탈모 관련 화장품 주가 17% 상승</div>
                             </div>
                         </a>
                     </li>
                     
                     <li class="tabset-item">
                         <a href="https://weekly.chosun.com/news/articleView.html?idxno=17300" class="cardset" target="_blank">
                             <div class="cardset-container">
                                 <figure class="cardset-figure">
                                     <img class="cardset-img"
                                         src="${cpath}/resources/images/MainPage_talmo_img4.jpg"
                                         alt="카드 이미지" style="width: 100%; height: 100%; object-fit: cover; display: block;">
                                 </figure>
                                 <div class="cardset-title">탈모 방지에 좋은<br>채소5 &nbsp과일5</div>
                             </div>
                         </a>
                     </li>
                     
                     <li class="tabset-item">
                         <a href="https://www.enewstoday.co.kr/news/articleView.html?idxno=1651118" class="cardset" target="_blank">
                             <div class="cardset-container">
                                 <figure class="cardset-figure">
                                     <img class="cardset-img"
                                         src="${cpath}/resources/images/MainPage_talmo_img5.jpg"
                                         alt="카드 이미지" style="width: 100%; height: 100%; object-fit: cover; display: block;">
                                 </figure>
                                 <div class="cardset-title">갈수록 치열해지는 탈모 샴푸 경쟁</div>
                             </div>
                         </a>
                     </li>
                     
                     <li class="tabset-item">
                         <a href="https://www.fsnews.co.kr/news/articleView.html?idxno=38883" class="cardset" target="_blank">
                             <div class="cardset-container">
                                 <figure class="cardset-figure">
                                     <img class="cardset-img"
                                         src="${cpath}/resources/images/MainPage_talmo_img6.png"
                                         alt="카드 이미지" style="width: 100%; height: 100%; object-fit: cover; display: block;">
                                 </figure>
                                 <div class="cardset-title">탈모는 유전에<br>의해서만 생긴다?</div>
                             </div>
                         </a>
                     </li>
							

							
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<div class="hooms-N48" data-bid="DrLsS6RTPl" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset" >
						<p class="textset-tit" style="font-weight: bold; font-size: 30px;">최신 게시글</p>
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
									<th scope="col">카테고리</th>
									<th scope="col">제목</th>
									<th scope="col">등록일</th>
									<th scope="col">등록자</th>
									<th scope="col">조회수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="tableset-mobile">자유게시판</td>
									<td class="tableset-tit tableset-order02"><a
										href="javascript:void(0)"> <span>안녕하세요. 문의드립니다.</span>
									</a></td>
									<td class="tableset-order05">2023.01.01</td>
									<td class="tableset-order04">홍**</td>
									<td class="tableset-mobile">166</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

</main>

<br>
<br>
<br>
	<%@ include file="Footer.jsp" %>

	<script src="${cpath}/resources/js/setting.js"></script>
	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script>

</body>