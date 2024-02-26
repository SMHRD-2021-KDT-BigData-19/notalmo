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
	    const itemsPerPage = 20;
	
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
	    }
	
	    renderSampu();
    </script>

  
    <script src="${cpath}/resources/product/js/jquery-1.11.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="${cpath}/resources/product/js/plugins.js"></script>
    <script src="${cpath}/resources/product/js/script.js"></script>
  </body>
</html>
<%@ include file="Footer.jsp"%>