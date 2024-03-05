<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp" %>

<!DOCTYPE html>
<html>
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
  <title>TestResult</title>
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/setting.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/plugin.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/template.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/style.css">
</head>

<body>
  <div class="hooms-N13" data-bid="txlSpTE580" id="">
    <div class="contents-container">
      <img class="contents-backimg" src="${cpath}/resources/talmotest/images/result_banner.png" alt="배너 이미지">
      <div class="contents-body">
        <h2 class="contents-tit">진단 결과</h2>
        <p class="contents-desc">탈모 유무의 결과가 나왔습니다</p>
      </div>
    </div>
  </div>
  <!-- [E]hooms-N13 -->
  <!-- [S]hooms-N27 -->
  <div class="hooms-N27" data-bid="xMlspTfPMr">
    <div class="contents-container container-lg">
      <div class="textset textset-h2 container-md">
        <span class="textset-name">Test Result</span>
        <h2 class="textset-tit">당신은 탈모 <strong>${talmoResult}단계</strong> 입니다.</h2>
        <input type="hidden" data-talmoResult="${String(talmoResult)}">
      </div>
      <div class="contents-swiper-container container-md">
        <div class="contents-swiper">
          <div class="swiper-wrapper contents-wrapper">
          	<div class="swiper-slide contents-slide contents-price-active">
              <a class="contents-link" href="javascript:void(0)">
                <div class="contents-productimg">
                  <img src="${cpath}/resources/talmotest/images/result0.png" alt="이미지">
                </div>
                <div class="contents-price">
                  0단계
                  <span>
                    Full Fill만의 AI검진 결과입니다. 사이트에서 탈모관련 제품을 구경해보세요! 
                  </span>
                </div>
              </a>
            </div>
            <div class="swiper-slide contents-slide contents-price-active">
              <a class="contents-link" href="javascript:void(0)">
                <div class="contents-productimg">
                  <img src="${cpath}/resources/talmotest/images/result1.png" alt="이미지">
                </div>
                <div class="contents-price">
                  1단계
                  <span>
                    Full Fill만의 AI검진 결과입니다. 사이트에서 탈모관련 제품을 구경해보세요! 
                  </span>
                </div>
              </a>
            </div>
            <div class="swiper-slide contents-slide contents-price-active">
              <a class="contents-link" href="javascript:void(0)">
                <div class="contents-productimg">
                  <img src="${cpath}/resources/talmotest/images/result2.png" alt="이미지">
                </div>
                <div class="contents-price">
                  2단계
                  <span>
                    Full Fill만의 AI검진 결과입니다. 사이트에서 탈모관련 제품을 구경해보세요!
                  </span>
                </div>
              </a>
            </div>
            <div class="swiper-slide contents-slide contents-price-active">
              <a class="contents-link" href="javascript:void(0)">
                <div class="contents-productimg">
                  <img src="${cpath}/resources/talmotest/images/result3.png" alt="이미지">
                </div>
                <div class="contents-price">
                  3단계
                  <span>
                   	Full Fill만의 AI검진 결과입니다. 사이트에서 탈모관련 제품을 구경해보세요! 
                  </span>
                </div>
              </a>
            </div>
            <div class="swiper-slide contents-slide contents-price-active">
              <a class="contents-link" href="javascript:void(0)">
                <div class="contents-productimg">
                  <img src="${cpath}/resources/talmotest/images/result4.png" alt="이미지">
                </div>
                <div class="contents-price">
                  4단계
                  <span>
					Full Fill만의 AI검진 결과입니다. 사이트에서 탈모관련 제품을 구경해보세요! 
                  </span>
                </div>
              </a>
            </div>
            <div class="swiper-slide contents-slide contents-price-active">
              <a class="contents-link" href="javascript:void(0)">
                <div class="contents-productimg">
                  <img src="${cpath}/resources/talmotest/images/result5.png" alt="이미지">
                </div>
                <div class="contents-price">
                  5단계
                  <span>
					Full Fill만의 AI검진 결과입니다. 사이트에서 탈모관련 제품을 구경해보세요! 
                  </span>
                </div>
              </a>
            </div>
            <div class="swiper-slide contents-slide">
              <a class="contents-link" href="javascript:void(0)">
                <div class="contents-productimg">
                  <img src="${cpath}/resources/talmotest/images/result6.png" alt="이미지">
                </div>
                <div class="contents-price">
                  6단계
                  <span>
                   Full Fill만의 AI검진 결과입니다. 사이트에서 탈모관련 제품을 구경해보세요! 
                  </span>
                </div>
              </a>
            </div>
            <div class="swiper-slide contents-slide">
              <a class="contents-link" href="javascript:void(0)">
                <div class="contents-productimg">
                  <img src="${cpath}/resources/talmotest/images/result7.png" alt="이미지">
                </div>
                <div class="contents-price">
                  7단계
                  <span>
                   Full Fill만의 AI검진 결과입니다. 사이트에서 탈모관련 제품을 구경해보세요! 
                  </span>
                </div>
              </a>
            </div>
          </div>
          <!-- 화살표 추가 -->
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
        </div>
        <div class="swiper-pagination container-md"></div>
      </div>
    </div>
  </div>
  <!-- [E]hooms-N27 -->
  <!-- [S]blank-DrLspTfgJC -->
  <div class="blank-DrLspTfgJC" data-bid="DrLspTfgJC">
    <div class="container"></div>
  </div>
  <!-- [E]blank-DrLspTfgJC -->
  <!-- [S]hooms-N11 -->
<div class="hooms-N11" data-bid="OclSpu3SRf" id="">
  <div class="contents-container">
    <div class="contents-top">
      <img class="contents-backimg" src="${cpath}/resources/talmotest/images/testproduct.jpg" alt="배경 이미지">
      <div class="contents-topinner container-md">
        <div class="textset textset-h2">
          <h2 class="textset-tit">제품을​​<br>추천해 드릴게요.</h2>
        </div>
        <div class="textset">
          <h5 class="textset-tit">인기 제품 Top4</h5>
          <p class="textset-desc">
            현재 쿠팡에서 가장 인기있는 제품 top4를 가져왔어요.
            <br>
            정보가 더 필요하시면 하단의 'view more'을 클릭하세요.
          </p>
        </div>
      </div>
    </div>
    <div class="contents-bottom container-md">
      <div class="contents-cardgroup">
        <!-- 카드들이 여기에 삽입됩니다 -->
      </div>
    </div>
    <div class="textset contents-link container-md">
      <a class="textset-link btnset btnset-mono" href="${cpath}/ProductPage.do">View more</a>
    </div>
  </div>
</div>
  <!-- [E]hooms-N11 -->
  <!-- [S]hooms-N41 -->
<!--   <div class="hooms-N41" data-bid="HELspU66Ix">
    <div class="contents-inner">
      <div class="contents-container container-md">
        <div class="textset textset-h2">
          <h2 class="textset-tit">병원을 추천해 드릴게요.</h2>
        </div>
        <div class="contents-search">
          <p class="contents-result">
            전체<span> 5</span>개
          </p>
          <div class="selectset selectset-lg">
            <button class="selectset-toggle btn" type="button">
              <span>최근 등록순</span>
            </button>
            <ul class="selectset-list">
              <li class="selectset-item">
                <button class="selectset-link btn" type="button" data-value="최근 등록순">
                  <span>최근 등록순</span>
                </button>
              </li>
              <li class="selectset-item">
                <button class="selectset-link btn" type="button" data-value="평점 높은 순">
                  <span>평점 높은 순</span>
                </button>
              </li>
              <li class="selectset-item">
                <button class="selectset-link btn" type="button" data-value="평점 낮은 순">
                  <span>평점 낮은 순</span>
                </button>
              </li>
            </ul>
          </div>
        </div>
        <div class="contents-group">
          <div class="contents-cardlist contents-cardlist-active">
            <a href="javascript:void(0)" class="cardset cardset-hor">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/api/t-a/56/1708156800/resources/images/img_review_01_1.png" alt="이미지">
              </figure>
              <div class="cardset-body">
                <div class="contents-info">
                  <ul class="contents-ico-list">
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                  </ul>
                  <div class="contents-name">
                    홍길동
                    <span class="contents-date">2023.01.01</span>
                  </div>
                </div>
                <div class="cardset-tit-group">
                  <h5 class="cardset-tit">
                    만족스러워요.
                  </h5>
                </div>
                <p class="cardset-desc">
                  아무래도 덩치가 커서 혹시나 불편하지 않을까 걱정도 했는데 책상뒤로 쭉밀어 고정시키면 일반 슈퍼싱글이랑 똑같기에 괜한 걱정이었고 공간활용면에서 이 제품만한 것이 없네요.
                </p>
              </div>
            </a>
            <a href="javascript:void(0)" class="cardset cardset-hor">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/api/t-a/56/1708156800/resources/images/img_review_01_2.png" alt="이미지">
              </figure>
              <div class="cardset-body">
                <div class="contents-info">
                  <ul class="contents-ico-list">
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                  </ul>
                  <div class="contents-name">
                    홍길동
                    <span class="contents-date">2023.01.01</span>
                  </div>
                </div>
                <div class="cardset-tit-group">
                  <h5 class="cardset-tit">
                    만족스러워요.
                  </h5>
                </div>
                <p class="cardset-desc">
                  아무래도 덩치가 커서 혹시나 불편하지 않을까 걱정도 했는데 책상뒤로 쭉밀어 고정시키면 일반 슈퍼싱글이랑 똑같기에 괜한 걱정이었고 공간활용면에서 이 제품만한 것이 없네요.
                </p>
              </div>
            </a>
            <a href="javascript:void(0)" class="cardset cardset-hor">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/api/t-a/56/1708156800/resources/images/img_review_01_3.png" alt="이미지">
              </figure>
              <div class="cardset-body">
                <div class="contents-info">
                  <ul class="contents-ico-list">
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                  </ul>
                  <div class="contents-name">
                    홍길동
                    <span class="contents-date">2023.01.01</span>
                  </div>
                </div>
                <div class="cardset-tit-group">
                  <h5 class="cardset-tit">
                    만족스러워요.
                  </h5>
                </div>
                <p class="cardset-desc">
                  아무래도 덩치가 커서 혹시나 불편하지 않을까 걱정도 했는데 책상뒤로 쭉밀어 고정시키면 일반 슈퍼싱글이랑 똑같기에 괜한 걱정이었고 공간활용면에서 이 제품만한 것이 없네요.
                </p>
              </div>
            </a>
            <a href="javascript:void(0)" class="cardset cardset-hor">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/api/t-a/56/1708156800/resources/images/img_review_01_1.png" alt="pagiset이미지">
              </figure>
              <div class="cardset-body">
                <div class="contents-info">
                  <ul class="contents-ico-list">
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                  </ul>
                  <div class="contents-name">
                    홍길동
                    <span class="contents-date">2023.01.01</span>
                  </div>
                </div>
                <div class="cardset-tit-group">
                  <h5 class="cardset-tit">
                    만족스러워요.
                  </h5>
                </div>
                <p class="cardset-desc">
                  아무래도 덩치가 커서 혹시나 불편하지 않을까 걱정도 했는데 책상뒤로 쭉밀어 고정시키면 일반 슈퍼싱글이랑 똑같기에 괜한 걱정이었고 공간활용면에서 이 제품만한 것이 없네요.
                </p>
              </div>
            </a>
            <a href="javascript:void(0)" class="cardset cardset-hor">
              <figure class="cardset-figure">
                <img class="cardset-img" src="/api/t-a/56/1708156800/resources/images/img_review_01_2.png" alt="이미지">
              </figure>
              <div class="cardset-body">
                <div class="contents-info">
                  <ul class="contents-ico-list">
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                    <li class="contents-ico-item ico-item-active"></li>
                  </ul>
                  <div class="contents-name">
                    홍길동
                    <span class="contents-date">2023.01.01</span>
                  </div>
                </div>
                <div class="cardset-tit-group">
                  <h5 class="cardset-tit">
                    만족스러워요.
                  </h5>
                </div>
                <p class="cardset-desc">
                  아무래도 덩치가 커서 혹시나 불편하지 않을까 걱정도 했는데 책상뒤로 쭉밀어 고정시키면 일반 슈퍼싱글이랑 똑같기에 괜한 걱정이었고 공간활용면에서 이 제품만한 것이 없네요.
                </p>
              </div>
            </a>
          </div>
        </div>
      </div>
      <div class="textset contents-link container-md">
        <a class="textset-link btnset btnset-mono" href="javascript:void(0)">View more</a>
      </div>
    </div>
  </div> -->
  <!-- [E]hooms-N41 -->
  <!-- [S]blank-zmlSptfKvp -->
  <div class="blank-zmlSptfKvp" data-bid="zmlSptfKvp">
    <div class="container"></div>
  </div>
  <script>
	  let currentPage = 1;
	  const itemsPerPage = 4;
	
	  async function getSampu() {
	      let url = 'http://127.0.0.1:5000/sampu';
	      try {
	          let res = await fetch(url);
	          if (!res.ok) {
	              throw new Error(`HTTP error! status: ${res.status}`);
	          }
	          let data = await res.json();
	          return data.value;
	      } catch (error) {
	          console.log(error);
	      }
	  }
	
	  async function renderSampu() {
	      let sampuArr = await getSampu();
	      let html = '';
	      let start = (currentPage - 1) * itemsPerPage;
	      let end = start + itemsPerPage;
	      let paginatedItems = sampuArr.slice(start, end);
	
	      paginatedItems.forEach(sampu => {
	          let htmlSegment = '<div class="cardset">' +
	                              '<figure class="cardset-figure">' +
	                                  '<img class="cardset-img" src="' + sampu.src + '" alt="이미지">' +
	                              '</figure>' +
	                              '<div class="cardset-body">' +
	                                  '<h5 class="cardset-tit">' + sampu.name + '</h5>' +
	                                  '<p class="cardset-desc">' + sampu.desc + '</p>' +
	                              '</div>' +
	                            '</div>';
	          html += htmlSegment;
	      });
	
	      let container = document.querySelector('.contents-cardgroup');
	      container.innerHTML = html;
	  }
	
	  renderSampu();
  </script>
  <!-- [E]blank-zmlSptfKvp -->
  <script src="${cpath}/resources/talmotest/js/setting.js"></script>
  <script src="${cpath}/resources/talmotest/js/plugin.js"></script>
  <script src="${cpath}/resources/talmotest/js/template.js"></script>
  <script src="${cpath}/resources/talmotest/js/common.js"></script>
  <script src="${cpath}/resources/talmotest/js/script.js"></script>
  <%@ include file="Footer.jsp" %>
</body>
</html>