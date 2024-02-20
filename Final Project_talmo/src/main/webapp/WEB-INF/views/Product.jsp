<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product</title>

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<h1>Products</h1>
	<img src="" alt="이미지">
	<a href="${cpath}ex.do">이동</a>
	
	<div class="container"></div>
	
	<script>
	

/* 	  fetch("http://127.0.0.1:5000/sampu")
	    .then((response) => response.json())
	    .then((data) => console.log(data)); */
	  
	    
		/* 서버에서 json형식의 파일 가져와 data에 글자로 바꿔주는 함수 */
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
		/* 스크랩한 정보들 html에 나타내는 함수 */
	    async function renderSampu() {
	        let sampuArr = await getSampu();
	        console.log(sampuArr);
	        let html = '';
	        sampuArr.forEach(sampu => {
	            let htmlSegment = "<div class='sampu'>"+
	                                "<img src='"+sampu.src+"'>"+
	                                "<h2>" + sampu.name + "</h2>"+
	                                "<div class='sale'>가격 : "+sampu.sale+"</div>"+
	                                "<div class='rating'>평점 : "+sampu.rating+"</div>"+
	                                "<div class='total'>댓글 갯수 : "+sampu.total+"</div>"+
	                                "<div class='link'><a href='"+sampu.link+"'>상품 링크</a></div>"+
	                            "</div>";

	            html += htmlSegment;
	            
	        });

	        let container = document.querySelector('.container');
	        container.innerHTML = html;
	    }

	    renderSampu();

	
	
	</script>

</body>
</html>
<%@ include file="Footer.jsp"%>