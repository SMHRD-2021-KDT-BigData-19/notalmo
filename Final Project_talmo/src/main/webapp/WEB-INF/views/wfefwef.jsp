<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dsds</title>

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

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<h1>dfsf</h1>
    <div class="contents-container">
        <div class="contents-bottom container-md">
            <div class="contents-cardgroup">
                <div class="cardset">
                    <figure class="cardset-figure">
                        <img class="cardset-img" src="" alt="이미지">
                    </figure>
                    <div class="cardset-body">
                        <h5 class="cardset-tit">제목</h5>
                        <p class="sale">가격</p>
                        <p class="rating">평점</p>
                        <p class="total">댓글 갯수</p>
                        <div class="link"><a href="#">상품 링크</a></div>
                    </div>
                </div>
                <!-- 나머지 요소들도 동일한 구조로 추가 -->
            </div>
        </div>
    </div>

<script>

	async function getSampu() {
	    let url = 'http://127.0.0.1:5000/sampu';
	    try {
	        let res = await fetch(url);
	        if (!res.ok) {
	            throw new Error(`HTTP error! status: ${res.status}`);
	        }
	        let data = await res.json();
	        console.log(data.value);
	        return data.value;
	    } catch (error) {
	        console.log(error);
	    }
	}


	async function renderSampu() {
	    let sampuArr = await getSampu();
	    console.log(sampuArr);
	
	    // 배열에서 첫 번째부터 네 번째까지의 정보만 사용
	    for (let i = 0; i < 4; i++) {
	        let sampu = sampuArr[i];
	
	        // 이미지 요소 선택
	        let imgElement = document.querySelector(`.cardset-img:nth-child(${i + 1})`);
	        imgElement.src = sampu.src;
	
	        // 제목 요소 선택
	        let titleElement = document.querySelector(`.cardset-tit:nth-child(${i + 1})`);
	        titleElement.textContent = sampu.name;
	
	        // 가격 요소 선택
	        let saleElement = document.querySelector(`.sale:nth-child(${i + 1})`);
	        saleElement.textContent = `가격 : ${sampu.sale}`;
	
	        // 평점 요소 선택
	        let ratingElement = document.querySelector(`.rating:nth-child(${i + 1})`);
	        ratingElement.textContent = `평점 : ${sampu.rating}`;
	
	        // 댓글 갯수 요소 선택
	        let totalElement = document.querySelector(`.total:nth-child(${i + 1})`);
	        totalElement.textContent = `댓글 갯수 : ${sampu.total}`;
	
	        // 상품 링크 요소 선택
	        let linkElement = document.querySelector(`.link:nth-child(${i + 1}) a`);
	        linkElement.href = sampu.link;
	        linkElement.textContent = "상품 링크";
	    }
	}
</script>
  <script src="${cpath}/resources/talmotest/js/setting.js"></script>
  <script src="${cpath}/resources/talmotest/js/plugin.js"></script>
  <script src="${cpath}/resources/talmotest/js/template.js"></script>
  <script src="${cpath}/resources/talmotest/js/common.js"></script>
  <script src="${cpath}/resources/talmotest/js/script.js"></script>
</body>
</html>
<%@ include file="Footer.jsp"%>