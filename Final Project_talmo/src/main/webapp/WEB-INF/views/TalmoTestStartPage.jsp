<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp"%>

<!DOCTYPE html>
<html lang="en">
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
  <title>TestInterface</title>
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/setting.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/plugin.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/template.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/style.css">
</head>

<body>
  <div class="hooms-N5" data-bid="mVlSpSfSNJ">
    <div class="contents-container container-md">
      <div class="contents-left">
        <img src="${cpath}/resources/talmotest/images/IntroAI.png" alt="메인이미지">
      </div>
      <div class="contents-right">
        <div class="textset textset-h2">
          <span class="textset-name">Product</span>
          <h2 class="textset-tit">AI 탈모 진단​<br>​서비스<br></h2>
        </div>
        <div class="textset">
          <p class="textset-desc">탈모 진단 서비스 주의 사항<br>학습된 AI가 진단하오니 안내사항을 잘 지켜주세요.<br>자세한 결과는 병원에서 진단해주세요.&nbsp;</p>
          <a class="textset-link aboutus-imgitem btnset btnset-mono" href="${cpath}/TalmoTest.do">검사하기</a>
        </div>
      </div>
    </div>
  </div>
  
  	<%@ include file="Footer.jsp" %>

</body>
</html>