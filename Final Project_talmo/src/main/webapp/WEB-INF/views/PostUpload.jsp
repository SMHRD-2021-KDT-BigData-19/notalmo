<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>

<title>게시글 등록 | post</title>

<link rel="stylesheet" href="${cpath}/resources/postupload/css/style.css">
<link rel="stylesheet" href="${cpath}/resources/postupload/css/plugin.css">
<link rel="stylesheet" href="${cpath}/resources/postupload/css/template.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>



<style>
        .post_img_li { list-style: none; }

        .post_img_img { width: 200px; height: 200px; }

        .real-upload { display: none; }

        .upload { width: 200px; height: 200px; background-color: antiquewhite; }

        .image-preview {
        	max-height: 300px;
        	max-width: 950px;
    		height: auto;
    		display: flex;
    		gap: 10px;
    		overflow-x: auto;
		}
		
    /* 취소 버튼 스타일 */
    a.btn.btn-secondary.btn-lg {
        display: inline-block;
        width: 80px;
        padding: 10px 20px;
        font-size: 16px;
        text-align: center;
        text-decoration: none;
        border: 2px solid #000;
        color: #000;
        border-radius: 5px;
    }

    button.btn.btn-primary.btn-lg {
        display: inline-block;
        width: 80px;
        padding: 10px 20px;
        font-size: 16px;
        text-align: center;
        text-decoration: none;
        border: 2px solid #000;
        color: #000;
        border-radius: 5px;
    }

    .btn-container {
        margin-top: 20px;
    }
    
    a.btn.btn-secondary.btn-lg {
        margin-right: 10px;
    }
</style>

</head>

<body>
	
	<main class="th-layout-main ">

		<div class="opilsol-N34" data-bid="ZflSLHIxiE" id="">
			<div class="content-container container-md">
				<div class="textset content-tit">
					<p class="textset-eu">post</p>
					<h2 class="textset-tit">게시글 등록</h2>
				</div>
			</div>
		</div>
		<!-- [E]opilsol-N34 -->

		<!-- [S]opilsol-N27 -->
		<div class="opilsol-N27" data-bid="DOlslHiXq3" id="">
			<div class="content-container">
				<div class="contents-form container-md">
					<div class="contents-form-top d-flex justify-content-between">
						<span>작성자: ${loginMember.nick}</span>
					</div>
					<div class="contents-form tableset">
						<!-- 게시물 등록 -->
						<form id="frm" action="${cpath}/PostUpload.do" method="post" enctype="multipart/form-data">
							<input type="hidden" name="user_id" value="${loginMember.user_id}">
							<input type="hidden" name="category" id="category" value="자유게시판">
							<div class="tableset-inner">
								<table class="tableset-table table">
									<colgroup>
										<col>
										<col>
										<col>
										<col>
									</colgroup>
									<tbody>
										<tr>
											<th><span class="label">카테고리 선택</span></th>
											<td colspan="3">
												<div class="selectset">
													<button class="selectset-toggle btn" type="button">
														<span>자유게시판</span>
													</button>
													<ul class="selectset-list">
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>자유게시판</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>고민 상담</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>탈모 진단</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>모발 이식</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>두피 문신</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>병원</span>
															</button>
														</li>
														<li class="selectset-item">
															<button class="selectset-link btn" type="button">
																<span>제품</span>
															</button>
														</li>
													</ul>
												</div>
											</td>
										</tr>
										<tr>
											<th><label class="req label" for="Title">제목</label></th>
											<td colspan="3">
												<div class="inputset">
													<input type="text" class="inputset-input form-control"
														id="Title" aria-label="제목" name="title">
												</div>
											</td>
										</tr>
										<tr>
											<th><label class="req label" for="Inquiry">게시글</label></th>
											<td colspan="3">
												<div class="inputset">
													<textarea class="inputset-input form-control textarea"
														id="Inquiry" aria-label="게시글" name="content"></textarea>
												</div>
											</td>
										</tr>
										<tr>
											<th><span class="label">파일첨부</span></th>
											<td>
												<div class="fileset fileset-lg fileset-label">
													<label>
														<div class="fileset-body">
															<div class="fileset-group">
																<input type="file" class="real-upload" accept="image/*" id="postImg" name="postImg" multiple>
																<div class="upload"></div>
															</div>
															<span class="btnset btnset-line btnset-mono btnset-lg btnset-rect fileset-upload">파일첨부</span>
														</div>
													</label>
												</div>
											</td>
											<td>
												<p class="p1 co-text3">이미지 형식의 jpg(jpeg), png만 첨부 가능합니다.</p>
												<p class="p1 co-text3">첨부파일은 20MB를 초과할 수 없습니다.</p>
											</td>
										</tr>
										<tr>
											<th><span class="label">이미지 미리 보기</span></th>
											<td colspan="3">
												<button type="button" class="btn btn-secondary btn-lg" onclick="resetImages()">이미지 삭제</button>
												<ul class="image-preview"></ul>
											</td>
										</tr>

										<script>
										// 이미지 리셋 함수
										function resetImages() {
										    const imagePreview = document.querySelector('.image-preview');

										    // 이미지 미리보기 영역 초기화
										    imagePreview.innerHTML = "";
										}
										// 이미지 선택 후 미리보기 함수
										function getImageFiles(e) {
								            const uploadFiles = [];
								            const files = e.currentTarget.files;
								            const imagePreview = document.querySelector('.image-preview');
								            const docFrag = new DocumentFragment();

								            // 파일 타입 검사
								            [...files].forEach(file => {
								                if (!file.type.match("image/.*")) {
								                    alert('이미지 파일만 업로드가 가능합니다.');
								                    return;
								                }

								                uploadFiles.push(file);
								                const reader = new FileReader();
								                reader.onload = (e) => {
								                    const preview = createElement(e, file);
								                    imagePreview.appendChild(preview);
								                };
								                reader.readAsDataURL(file);
								            });
								        }
										// 이미지 선택 후 li 태그 추가 함수
										function createElement(e, file) {
								            const li = document.createElement('li');
								            const img = document.createElement('img');
								            
								        	 // 클래스 추가
								            li.classList.add('post_img_li');
								            img.classList.add('post_img_img');
								            
								            img.setAttribute('src', e.target.result);
								            img.setAttribute('data-file', file.name);
								            li.appendChild(img);

								            return li;
								        }
										
											const realUpload = document.querySelector('.real-upload');
								        	const upload = document.querySelector('.upload');

								        	upload.addEventListener('click', () => realUpload.click());

								        	realUpload.addEventListener('change', getImageFiles);
										</script>
									</tbody>
								</table>
								<br>
									<div class="btn-container" style="text-align: center">
								    <button type="submit" class="btnset">등록</button>
								    <a class="btnset" href="${cpath}/CommunityPage.do" class="btn btn-secondary btn-lg">취소</a>
									</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>

	</main>

</body>
</html>
<%@ include file="Footer.jsp" %>