<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<title>글보기</title>
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/setting.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/template.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/common.css">
<link rel="stylesheet" href="${cpath}/resources/communityViewResources/css/style.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</head>

<style>
	.comment {
		padding-top: 5rem;
	}
	
	.comment-content {
		padding: 1rem 0;
	}
	
	.comment-actions {
		text-align: right;
	}
	
	.comment-actions a {
		font-weight: bold;
		font-size: 1.2rem;
	}
	
	.comment-user, .comment-date, .comment-actions {
		display: inline-block;
		margin-right: 10px;
	}
	
	.comment-section {
		background-color: #f0f0f0;
		padding: 10px;
		border-radius: 5px;
		margin: 0px 0 20px 0;
	}
</style>

<body>

	<%@ include file="Header.jsp" %>

	
	<main class="th-layout-main">
    <div class="hooms-N32" data-bid="kylsTY0GhF" id="">
        <div class="contents-inner">
            <div class="contents-container container-md">
                <h3 class="h8" style="text-align:center; font-size: 34px;">${vo.title}</h3>
                <br>
                <br>
                <p style="display: flex; align-items: center; justify-content: space-between;">
                    <span style="font-weight: bold; font-size: 20px;">${vo.category}</span>
                	
                    <span style="text-align: right;">
                        <script>
                            var createDate = new Date('${vo.create_date}');
                            var formattedDate = createDate.toLocaleString('ko-KR', {
                                year: 'numeric',
                                month: 'numeric',
                                day: 'numeric',
                                hour: 'numeric',
                                minute: 'numeric'
                            });
                            document.write(formattedDate);
                        </script>
                    </span>
                </p>
                
                
	              
	                <div>
	                <span style="text-align: left;">닉네임: ${vo.nick}</span>
	                <div style="display: inline-block; float: right;">
	                    <c:choose>
	                        <c:when test="${empty loginMember}">
	                        </c:when>
	                        <c:otherwise>
	                            <c:if test="${loginMember.user_id eq vo.user_id}">
	                                <a href="javascript:void(0)"><strong>수정 /</strong></a>
                					<a href="javascript:void(0)" onclick="PostDelete('${cpath}/PostDelete.do/${vo.post_id}')"><strong>삭제 /</strong></a>
            					</c:if>
	                            <a href="javascript:void(0)" onclick="PostReport('${vo.post_id}')"><strong>신고</strong></a>
	                        </c:otherwise>
	                    </c:choose>
	                    </div>
	                </div>
					
					
					<div class="contents-cardlist contents-cardlist-active">
						<a href="javascript:void(0)" class="cardset">
							<div class="cardset-body">
								<p class="cardset-descView">${vo.content}</p>
							</div>
							<figure>
								<c:forEach items="${Ivo}" var="ivo">
									<c:if test="${not empty ivo.file_name}">
	                                	<img class="cardset-imgT" src="http://172.30.1.15:8080/imgT/post/${vo.post_id}/${ivo.file_name}" alt="이미지">
            						</c:if>
									
								</c:forEach>
							</figure>
						</a>
					</div>



					<div class="comment" id="comments-container">
						<h2 class="h2">댓글 창</h2>
						<c:forEach items="${Cvo}" var="Cvo">
							<div class="comment-section">
								<div class="comment-display">
									<div class="comment-user">
										<strong>${Cvo.nick}</strong>
									</div>
									<div class="comment-date">${Cvo.create_date}</div>
									
									<div class="comment-actions">
										<c:if test="${loginMember.user_id eq Cvo.user_id}">
					            			<a href="javascript:void(0)" onclick="CommentDelete('${cpath}/CommentDelete.do/${Cvo.comment_id}/${vo.post_id}')"><strong>삭제 /</strong></a>
					        			</c:if>
										<a href="javascript:void(0)" onclick="CommentReport('${Cvo.comment_id}')"> 신고</a>
									</div>
									<div class="comment-content">${Cvo.content}</div>
								</div>
							</div>
						</c:forEach>
					</div>



					<c:choose>
						<c:when test="${empty loginMember}">
							
						</c:when>
						<c:otherwise>
							<form id="frm">
							<div><div class="inputset inputset-lg inputset-label">
								<input type="hidden" name="user_id" value="${loginMember.user_id}">
								<input type="hidden" name="post_id" value="${vo.post_id}">
								<label>
								<textarea class="inputset-textarea" name="content" id="comment-input" placeholder="댓글을 입력해 주세요." required=""></textarea>
								<div class="inputset-langth">
									<span class="inputset-count">0</span>
									<span class="inputset-total">/4000</span>
								</div>
								</label>
							</div>
							<div class="contents-btn">
								<a class="btnset" onclick="addComment('${loginMember.nick}')">등록</a>
							</div></div>
							</form>
						</c:otherwise>
					</c:choose>				
						
				</div>
			</div>
		</div>
		<script>
		function CommentDelete(url){
			if (confirm("댓글을 삭제하시겠습니까?")) {
				window.location.href = url;
	        }
		}
		function CommentReport(comment_id){
			if (confirm("이 댓글을 신고하시겠습니까?")) {
				$.ajax({
	  				url: "${cpath}/CommentReport.do",
	  				type: "post",
	  				data: {
	  					comment_id: comment_id
	  			    },
	  				success: function(){
	  					alert("감사합니다. 신고가 접수되었습니다.");
	  				},
	  				error: function(){
	  					alert("신고 실패하였습니다.");
	  				}
	  			}) // END ajax
	        }
		}

	    function PostDelete(url) {
	        if (confirm("이 게시글을 삭제하시겠습니까?")) {
	            window.location.href = url;
	        }
	    }

	    function PostReport(post_id) {
	        if (confirm("이 게시물을 신고하시겠습니까?")) {
	        	
	        	$.ajax({
	  				url: "${cpath}/PostReport.do",
	  				type: "post",
	  				data: {
	  			        post_id: post_id
	  			    },
	  				success: function(){
	  					alert("감사합니다. 신고가 접수되었습니다.");
	  				},
	  				error: function(){
	  					alert("신고 실패하였습니다.");
	  				}
	  			}) // END ajax
	        }
	    }
		function addComment(nick) {
		    var commentInput = document.getElementById('comment-input');
		    var commentText = commentInput.value;
		    var fData = $("#frm").serialize();
		    console.log(fData);
		    
		    if (commentText.trim() !== '') {
		    	// To DB
		    	$.ajax({
	  				url: "${cpath}/Comment.do",
	  				type: "post",
	  				data: fData,
  				});
  			
		        var newCommentSection = document.createElement('div');
		        newCommentSection.className = 'comment-section';
		        var newCommentDisplay = document.createElement('div');
		        newCommentDisplay.className = 'comment-display';
				
		        var currentTime = new Date();
		        var formattedTime = currentTime.toISOString().slice(0, 19).replace('T', ' ');

		        newCommentDisplay.innerHTML =
		            '<div class="comment-user"><strong>' + nick + '</strong></div>' +
		            '<div class="comment-date">' + formattedTime + '</div>&nbsp&nbsp&nbsp&nbsp' +
		            '<div class="comment-actions">' +
						'<a href="javascript:void(0)">삭제 /</a>'+
    					'<a href="javascript:void(0)">  신고</a></div>'+
		            '<div class="comment-content">' + commentText + '</div>';
		            
		        var commentsContainer = document.getElementById('comments-container');
		        commentsContainer.appendChild(newCommentSection);
		        newCommentSection.appendChild(newCommentDisplay);

		        commentInput.value = '';
		    }
		}
		
	</script>

	</main>

<%@ include file="Footer.jsp"%>

	<script src="${cpath}/resources/communityViewResources/js/setting.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/plugin.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/template.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/common.js"></script>
	<script src="${cpath}/resources/communityViewResources/js/script.js"></script>
</body>
</html>
