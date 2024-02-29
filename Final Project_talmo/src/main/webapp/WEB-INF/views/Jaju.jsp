<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
  <title>자주 묻는 질문</title>

<link rel="stylesheet" href="${cpath}/resources/postupload/css/style.css">
<link rel="stylesheet" href="${cpath}/resources/postupload/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/postupload/css/template.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<body>

<%@ include file="Header.jsp" %>

  <main class="th-layout-main ">
    <div class="hooms-N38" data-bid="RXLs891U6s" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset textset-h2">
            <h2 class="textset-tit">자주 묻는 질문</h2>
          </div>
          
          <div class="accordset accordset-arrow accent-body">
            <div class="accordset-item active">
              <div class="accordset-header">
                <button class="accordset-button btn" type="button">
                  <span class="accordset-q">Q</span> 로그인이 안돼요. </button>
              </div>
              <div class="accordset-body">
                <div class="accordset-content">
                  <span class="accordset-a">A</span> 아이디와 비밀번호가 정확하게 일치하는지 확인해보세요.
                </div>
              </div>
            </div>
            <div class="accordset-item">
              <div class="accordset-header">
                <button class="accordset-button btn" type="button">
                  <span class="accordset-q">Q</span> 회원가입은 어떻게 하나요? </button>
              </div>
              <div class="accordset-body">
                <div class="accordset-content">
                  <span class="accordset-a">A</span> 중복되지 않게 중복확인을 하시고 절차에 알맞게 진행해야합니다.
                </div>
              </div>
            </div>
            <div class="accordset-item">
              <div class="accordset-header">
                <button class="accordset-button btn" type="button">
                  <span class="accordset-q">Q</span> 진단 결과가 유출될 가능성은 없나요? </button>
              </div>
              <div class="accordset-body">
                <div class="accordset-content">
                  <span class="accordset-a">A</span> 저희 서비스는 함부로 유출을 금하고 있습니다.
                </div>
              </div>
            </div>
            <div class="accordset-item">
              <div class="accordset-header">
                <button class="accordset-button btn" type="button">
                  <span class="accordset-q">Q</span> 커뮤니티 글 삭제는 어떻게 하나요? </button>
              </div>
              <div class="accordset-body">
                <div class="accordset-content">
                  <span class="accordset-a">A</span> 로그인 후 본인이 쓴 글만 삭제 가능합니다.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
 <%@ include file="Footer.jsp" %>

</body>
</html>