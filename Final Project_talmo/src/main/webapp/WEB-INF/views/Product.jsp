<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Recommended product</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/product/css/vendor.css">
    <link rel="stylesheet" type="text/css" href="${cpath}/resources/product/style.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;700&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
	
	<style>
	.pagination-group ul {
	    display: flex;
	    flex-direction: row;
	    list-style-type: none;
	    justify-content: center; /* 페이지네이션을 가운데에 배치 */
	}

	.pagination-group ul li {
	    margin: 0 28px; /* 숫자들의 간격을 넓힘 */
	}
	
	.product-item {
	    margin: 0;
	    font-family: var(--ff);
	    font-weight: 400;
	    font-size: var(--fs-p1);
	    line-height: var(--lh-p1);
	    letter-spacing: var(--letter-spacing);
	    color: var(--body-color);
	    background-color: var(--body-bg);
	    -webkit-text-size-adjust: 100%;
	    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
	}
		
	</style>
  </head>
<body>
    <section class="py-5">
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-md-12">

            <div class="bootstrap-tabs product-tabs">
              <div class="tabs-header d-flex justify-content-between border-bottom my-5">
                <h3>제품 추천 페이지입니다.</h3>
                <br><br>
                <h5>제품을 누르면 제품의 웹 페이지로 이동합니다.</h5>
              </div>
              <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-all" role="tabpanel" aria-labelledby="nav-all-tab">

                  <div class="product-grid row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5">
                  

                  </div>
                </div>
                
              </div>
            </div>

          </div>
        </div>
      </div>
    </section>

    <script>
        let currentPage = 1;
        const itemsPerPage = 10;

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
                let htmlSegment = '<div class="col">' +
                                    '<div class="product-item">' +
                                        '<figure>' +
                                            '<a href="' + sampu.link + '" title="' + sampu.name + '">' +
                                                '<img src="' + sampu.src + '" class="tab-image">' +
                                            '</a>' +
                                        '</figure>' +
                                        '<h3>' + sampu.name + '</h3>' +
                                        '<span class="qty">1 Unit</span>' +
                                        '<span class="rating"><svg width="24" height="24" class="text-primary"><use xlink:href="#star-solid"></use></svg> ' + sampu.rating + '</span>' +
                                        '<span class="price">' + sampu.sale + '</span>' +
                                    '</div>' +
                                '</div>';
                html += htmlSegment;
            });

            let container = document.querySelector('.product-grid');
            container.innerHTML = html;

            // 페이지네이션 업데이트
            let paginationList = document.querySelector('.pagiset-list');
            let totalPages = Math.ceil(sampuArr.length / itemsPerPage);
            let paginationHtml = '';
            for (let i = 1; i <= totalPages; i++) {
                paginationHtml += '<a class="pagiset-link' + (i === currentPage ? ' active-fill' : '') + '" href="javascript:void(0)" onclick="goToPage(' + i + ')">' + i + '</a>';
            }
            paginationList.innerHTML = paginationHtml;
        }

        function goToPage(page) {
            currentPage = page;
            renderSampu();
        }

        renderSampu();
    </script>
	<br><br>
    <nav class="pagiset pagiset-line">
        <div class="pagiset-ctrl">
          <a class="pagiset-link pagiset-first" href="javascript:void(0)" onclick="goToPage(1)">
            <span class="visually-hidden">처음</span>
          </a>
        </div>
        <div class="pagiset-ctrl">
          <a class="pagiset-link pagiset-prev" href="javascript:void(0)" onclick="goToPage(currentPage > 1 ? currentPage - 1 : 1)">
            <span class="visually-hidden">이전</span>
          </a>
        </div>
        <div class="pagiset-list">
          <!-- 페이지 번호가 여기에 동적으로 생성됩니다 -->
        </div>
        <div class="pagiset-ctrl">
          <a class="pagiset-link pagiset-next" href="javascript:void(0)" onclick="goToPage(currentPage < Math.ceil(sampuArr.length / itemsPerPage) ? currentPage + 1 : currentPage)">
            <span class="visually-hidden">다음</span>
          </a>
        </div>
        <div class="pagiset-ctrl">
          <a class="pagiset-link pagiset-last" href="javascript:void(0)" onclick="goToPage(Math.ceil(sampuArr.length / itemsPerPage))">
            <span class="visually-hidden">마지막</span>
          </a>
        </div>
    </nav>
  	<br><br>
    <script src="${cpath}/resources/product/js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="${cpath}/resources/product/js/plugins.js"></script>
    <script src="${cpath}/resources/product/js/script.js"></script>
  </body>
</html>
<%@ include file="Footer.jsp"%>