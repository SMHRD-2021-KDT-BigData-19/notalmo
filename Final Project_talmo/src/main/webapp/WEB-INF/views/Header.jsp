<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

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
    <title>진단 전 사전 안내</title>
    <link rel="stylesheet" href="${cpath}/resources/css/setting.css">
    <link rel="stylesheet" href="${cpath}/resources/css/plugin.css">
    <link rel="stylesheet" href="${cpath}/resources/css/template.css">
    <link rel="stylesheet" href="${cpath}/resources/css/common.css">
    <link rel="stylesheet" href="${cpath}/resources/css/style.css">
</head>

<body>
    <header class="hooms-N55" data-bid="bFLS88Lpv5" id="">
        <div class="header-container container-lg">
            <div class="header-left">
                <h1 class="header-title">
                    <a class="header-logo" href="${cpath}/MainPage.do" title="hooms"></a>
                </h1>
            </div>
            <div class="header-center">
                <ul class="header-gnblist">
                    <li class="header-gnbitem">
                        <c:choose>
                            <c:when test="${empty loginMember}">
                                <a class="header-gnblink" href="${cpath}/LoginPage.do">
                                    <span>탈모진단</span>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a class="header-gnblink" href="${cpath}/TalmoTestStartPage.do">
                                    <span>탈모진단</span>
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                    <li class="header-gnbitem">
                        <a class="header-gnblink" href="${cpath}/ProductPage.do">
                            <span>제품찾기</span>
                        </a>
                    </li>
                    <li class="header-gnbitem">
                        <a class="header-gnblink" href="${cpath}/HospitalPage.do">
                            <span>병원찾기</span>
                        </a>
                    </li>
                    <li class="header-gnbitem">
                        <a class="header-gnblink" href="${cpath}/CommunityPage.do">
                            <span>커뮤니티</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="header-right">
                <div class="header-utils">
                    <c:choose>
                        <c:when test="${empty loginMember}">
                            <a href="${cpath}/LoginPage.do" class="header-gnblink">로그인</a>
                            <a href="${cpath}/LoginPage.do" class="btn-profile header-utils-btn" title="profile"></a>
                        </c:when>
                        <c:otherwise>
                            <a href="${cpath}/Logout.do" class="header-gnblink">로그아웃</a>
                            <a href="${cpath}/MyPage.do" class="btn-profile header-utils-btn" title="profile"></a>
                        </c:otherwise>
                    </c:choose>
                    <button class="btn-search header-utils-btn" title="search"></button>
                    <button class="btn-menu header-utils-btn" title="menu"></button>
                    <button class="btn-close header-utils-btn" title="close"></button>
                </div>
            </div>
            <div class="header-search-form">
                <div class="inputset inputset-line">
                    <button class="icon-right icon-search btn" type="button" aria-label="아이콘"></button>
                    <input type="text" class="inputset-input form-control" placeholder="검색어를 입력해주세요." aria-label="내용">
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
                    <li class="fullmenu-gnbitem">
                        <c:choose>
                            <c:when test="${empty loginMember}">
                                <a class="fullmenu-gnblink" href="${cpath}/LoginPage.do">
                                    <span>탈모진단</span>
                                </a>
                            </c:when>
                            <c:otherwise>
                                <a class="fullmenu-gnblink" href="${cpath}/TalmoTestPage.do">
                                    <span>탈모진단</span>
                                </a>
                            </c:otherwise>
                        </c:choose>
                    </li>
                    <li class="fullmenu-gnbitem">
                        <a class="fullmenu-gnblink" href="${cpath}/ProductPage.do">
                            <span>제품찾기</span>
                        </a>
                    </li>
                    <li class="fullmenu-gnbitem">
                        <a class="fullmenu-gnblink" href="${cpath}/HospitalPage.do">
                            <span>병원찾기</span>
                        </a>
                    </li>
                    <li class="fullmenu-gnbitem">
                        <a class="fullmenu-gnblink" href="${cpath}/CommunityPage.do">
                            <span>커뮤니티</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="header-dim"></div>
    </header>
