<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="ko">

<head>
  <title>MyPage</title>

	<link rel="stylesheet" href="${cpath}/resources/postupload/css/style.css">
	<link rel="stylesheet" href="${cpath}/resources/postupload/css/plugin.css">
	<link rel="stylesheet" href="${cpath}/resources/postupload/css/template.css">
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<style>

  .cardset {
    display: flex;
    justify-content: space-between;
    
  }

  .card {
    width: 30%;
    height: 0;
    padding-bottom: 30%;
    background-color: #eee;
    margin-bottom: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
  }

  .card p {
    text-align: center;
    font-size: 20px;
    margin-top: 60px;
  }

  .step-indicator {
    text-align: center;
    margin-top: 10px;
  }
	
  .step-text {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
    font-weight: bold;
  }
  
  .step-text span {
    width: 30%;
    text-align: center;
    font-size: 18px;
  }
</style>

<body>
	
	<%@ include file="Header.jsp" %>

	<main class="th-layout-main ">

		<div class="hooms-N46" data-bid="RRlSS6RTd9" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset textset-h2">
						<h2 class="textset-tit" style="font-size:56px;">My Page</h2>
					</div>
					<div class="contents-top">
						<div class="contents-tit">
							<h3>
								<strong>${loginMember.nick}</strong>님 안녕하세요!
							</h3>
						</div>
					</div>
					<div class="contents-bottom">
						<ul class="contents-list">
							<li class="contents-item"><strong>아이디</strong> <span>${loginMember.id}</span>
							</li>
							<li class="contents-item"><strong>생년월일</strong> <span>${loginMember.birthday}</span>
							</li>
							<li class="contents-item"><strong>휴대폰 번호</strong> <span>${loginMember.phone}</span>
							</li>
							<li class="contents-item"><strong>이메일</strong> <span>${loginMember.email}</span>
							</li>
							<li class="contents-item"><strong>닉네임</strong> <span>${loginMember.nick}</span>
							</li>
						</ul>
						<div class="contents-btn">
							<a class="btnset btnset-ghost" href="${cpath}/UpdatePage.do">회원 정보 수정</a>
							<a class="btnset btnset-ghost" href="${cpath}/PwUpdatePage.do">비밀번호 수정</a>
							<a class="btnset" href="${cpath}/DeletePage.do">회원탈퇴</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
	<div class="hooms-N48" data-bid="DrLsS6RTPl" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <p class="textset-tit">진단 결과 사진</p>
          </div>
          <div class="cardset">
		    <div class="card">
		        <p><%= new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()) %></p>
		    </div>
		    <div class="card">
		        <p><%= new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()) %></p>
		    </div>
		    <div class="card">
		        <p><%= new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date()) %></p>
		    </div>
		</div>

          <div class="step-text">
            <span>1단계</span>
            <span>2단계</span>
            <span>3단계</span>
          </div>
        </div>
      </div>
    </div>
		
		
		<div class="hooms-N48" data-bid="DrLsS6RTPl" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset">
						<p class="textset-tit">내 게시글</p>
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
								<!-- <tr>
									<td class="tableset-mobile">자유게시판</td>
									<td class="tableset-tit tableset-order02"><a
										href="javascript:void(0)"> <span>안녕하세요. 문의드립니다.</span>
									</a></td>
									<td class="tableset-order05">2023.01.01</td>
									<td class="tableset-order04">홍**</td>
									<td class="tableset-mobile">166</td>
								</tr> -->
								
								<c:forEach items="${myPostList}" var="mb">
									<tr>
										<td class="tableset-mobile">${mb.category}</td>
										<c:url var="contectLink" value="CommunityView.do/${mb.post_id}" />
										<td class="tableset-tit tableset-order02">
											<a class="tableset-ico" href="${contectLink}">
				                      			<span>${mb.title}</span>
				                   			</a>
				                 		<td class="tableset-order05">
										    <script>
										        var createDate = new Date('${mb.create_date}');
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
										<td class="tableset-order04">${mb.nick}</td>
										<td class="tableset-mobile">${mb.view_cnt}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

		</main>
		
	<%@ include file="Footer.jsp" %>
	
	
	<script src="${cpath}/resources/js/setting.js"></script>
	<script src="${cpath}/resources/js/plugin.js"></script>
	<script src="${cpath}/resources/js/template.js"></script>
	<script src="${cpath}/resources/js/common.js"></script>
	<script src="${cpath}/resources/js/script.js"></script>
	
	<script src="${cpath}/resources/mypageResources/js/setting.js"></script>
	<script src="${cpath}/resources/mypageResources/js/template.js"></script>
	<script src="${cpath}/resources/mypageResources/js/script.js"></script>
	


</body>

</html>