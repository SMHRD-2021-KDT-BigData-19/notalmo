<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TalmoTest</title>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
</head>
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
  <title>Test</title>
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/setting.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/plugin.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/template.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/common.css">
  <link rel="stylesheet" href="${cpath}/resources/talmotest/css/style.css">
</head>

<body>

<c:if test="${empty sessionScope['loginMember']}">
    <!-- 로그인이 되어 있지 않은 경우 로그인 페이지로 이동 -->
    <script>
        window.location.href = "${cpath}/LoginPage.do";
    </script>
</c:if>
  <div class="hooms-N25" data-bid="kqlSPsJe0f" id="">
    <div class="contents-container">
      <img class="contents-backimg" src="${cpath}/resources/talmotest/images/testBanner.jpg" alt="배너 이미지">
      <div class="contents-body container-md">
        <h2 class="contents-title">AI 탈모 진단</h2>
      </div>
    </div>
  </div>
  <!-- [E]hooms-N25 -->
  <!-- [S]hooms-N17 -->
  <div class="hooms-N17" data-bid="mNlsPskigN" id="">
    <div class="contents-inner">
      <div class="contents-container container-md">
        <div class="textset textset-h2">
          <h2 class="textset-tit">Self Test "${loginMember.nick}"</h2>
        </div>
        <div class="textset">
          <p class="textset-desc"><span style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;">탈모는 조기 진단과 조기 치료가 치료 효과가 높고 치료비도 절감할 수 있습니다. ​</span><br style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;">​진단과 치료가 늦어질수록 치료 효과도 감소하고 치료비용도 증가하기 때문에 자가 진단법으로 모발 상태를 꼼꼼히 확인해보세요. ​</span><br style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;">​</span><br style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;">이 중 5개 이상이 해당되면 탈모를 의심해볼 수 있으니 병원을 찾아 정확한 진단을 받아보는 것이 좋습니다.</span></p>
        </div>
        <ul class="contents-textlist">
          <li class="contents-textitem subtitle">
            <strong></strong>
          </li>
          <li class="contents-textitem"> </li>
        </ul>
      </div>
    </div>
  </div>
  <!-- [E]hooms-N17 -->
  <!-- [S]hooms-N45 -->
 <form id="uploadForm" action="${cpath}/TalmoTestResultPage.do" method="post" enctype="multipart/form-data">
 <input type="hidden" name="selfcheck" v-model="selfcheck">
 <input type="hidden" name="user_id" value="${loginMember.user_id}">
  <div class="hooms-N45" data-bid="erLSpsQm8g" id="">
    <div class="contents-inner">
      <div class="contents-container container-md">
        <div class="textset">
          <h2 class="textset-tit">다음 중, 해당 사항에 체크하세요.</h2>
        </div>
		<div id="app">
		    <div class="contents-price">
		        <table>
		            <tr v-for="(item, index) in checkpoint" :key="index">
		                <td>
		                    <div class="checkset">
		                    
		                        <input :id="'checkset-a-1-' + (index + 1)" class="checkset-input input-fill" 
		                        type="checkbox" v-model="checks[index]" :disabled="!isEditable">
		                        <label class="checkset-label" :for="'checkset-a-1-' + (index + 1)"></label>
		                        <span class="checkset-text" id="talmocheck">{{ item }}</span>
		                    </div>
		                </td>
		            </tr>
		        </table>
		    </div>
		</div>
      </div>
    </div>
  </div>
  <!-- [E]hooms-N45 -->
  <!-- [S]hooms-N8 -->
	<div class="hooms-N8" data-bid="BqLSPSVqk7" id="">
		<div class="contents-inner">
			<div class="contents-container container-md">
				<div class="textset textset-h2">
					<h2 class="textset-tit">사진 업로드 시 주의</h2>
				</div>
				<div class="contents-cardgroup">
					<div class="cardset">
						<figure class="cardset-figure">
							<img class="cardset-img"
								src="${cpath}/resources/talmotest/images/testBanner.jpg"
								alt="이미지">
						</figure>
						<div class="cardset-body">
							<h5 class="cardset-tit">사진을 레이어에 맞춰주세요.</h5>
							<p class="cardset-desc">정수리가 카메라 정면에 보이게 위치하도록 찍어주세요.</p>
						</div>
					</div>
					<div class="cardset">
						<figure class="cardset-figure">
							<img class="cardset-img"
								src="${cpath}/resources/talmotest/images/testBanner.jpg"
								alt="이미지">
						</figure>
						<div class="cardset-body">
							<h5 class="cardset-tit">머리에 손, 사물 등은 올리지 마세요.</h5>
							<p class="cardset-desc">머리가 아닌 다른 부분은 AI가 인식을 못 할 수도 있습니다.</p>
						</div>
					</div>
					<div class="cardset">
						<figure class="cardset-figure">
							<img class="cardset-img"
								src="${cpath}/resources/talmotest/images/testBanner.jpg"
								alt="이미지">
						</figure>
						<div class="cardset-body">
							<h5 class="cardset-tit">주의점</h5>
							<p class="cardset-desc">주의점주의점입니다. 주의점주의점입니다. 주의점주의점입니다.
								주의점주의점입니다.&nbsp;</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [E]hooms-N8 -->
	<!-- [S]hooms-N15 -->
	<div class="hooms-N15" data-bid="HQLSPSyJyF" id="">
		<div class="contents-inner">
			<div class="contents-container container-md">
				<div class="textset textset-h2">
					<h2 class="textset-tit textset-h2">올바른 사진</h2>
				</div>
				<div class="contents-group">
					<div class="cardset">
						<div class="cardset-body">
							<p class="cardset-desc">HOOMS 매장을 방문하셔서 재료를 시험해보세요. 당신은 친절한
								오프라인 직원에게 맞는 가구를 찾을 수 있도록 상담받을 수 있습니다.</p>
						</div>
						<figure class="cardset-figure">
							<img class="cardset-img"
								src="${cpath}/resources/talmotest/images/testBanner.jpg"
								alt="이미지">
						</figure>
					</div>
					<div class="cardset">
						<div class="cardset-body">
							<p class="cardset-desc">HOOMS 매장을 방문하셔서 재료를 시험해보세요. 당신은 친절한
								오프라인 직원에게 맞는 가구를 찾을 수 있도록 상담받을 수 있습니다.</p>
						</div>
						<figure class="cardset-figure">
							<img class="cardset-img"
								src="${cpath}/resources/talmotest/images/testBanner.jpg"
								alt="이미지">
						</figure>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- [E]hooms-N15 -->
	<!-- [S]hooms-N39 -->
	<div class="hooms-N39" data-bid="hkLSPT0B60" id="">
		<div class="contents-inner">
			<div class="contents-container container-md">
				<div class="textset textset-h2"></div>
				<div class="tabset tabset-brick"></div>
				
					<div class="contents-form">
						<div class="contents-form-middle">
							<div class="fileset fileset-lg fileset-label">
								<label>
									<h6 class="fileset-tit">정수리 사진을 올려주세요.</h6>
									<div class="fileset-body">
										<div class="fileset-group">
											<input type="file" class="fileset-input" name="frontpath">
											<button class="fileset-cancel"></button>
										</div>
										<span class="btnset btnset-line btnset-lg fileset-upload">파일
											첨부하기</span>
											<br>
											<ul class="image-preview2"></ul>
									</div>
								</label>
							</div>
							<br><br>
							<div class="fileset fileset-lg fileset-label">
								<label>
									<h6 class="fileset-tit">정면 사진을 올려주세요.</h6>
									<div class="fileset-body">
										<div class="fileset-group">
											<input type="file" class="fileset-input" name="toppath">
											<button class="fileset-cancel"></button>
										</div>
										<span class="btnset btnset-line btnset-lg fileset-upload">파일
											첨부하기</span>
											<br>
											<ul class="image-preview2"></ul>
									</div>
								</label>
							</div>
						</div>
					</div>
					
				<div class="contents-form-bottom">
					<div class="inputset inputset-lg inputset-label">
						<label>
							<h6 class="inputset-tit">개인정보수집 및 이용동의</h6>
							<div class="inputset-board">
								- 수집하는 개인정보 항목 : 등록된 사진, 성별 <br> <br> 작성해주시는 개인 정보는 문의
								접수 및 고객 불만 해결을 위해 5년간 보관됩니다. 이용자는 본 동의를 거부할 수 있으나, 미동의시 문의 접수가
								불가능합니다.
							</div>
						</label>
					</div>
					<div class="checkset">
						<input id="checkset-q-1-1" class="checkset-input input-fill"
							type="checkbox" value=""> <label class="checkset-label"
							for="checkset-q-1-1"></label> <span class="checkset-text">위
							내용을 읽었으며, 내용에 동의합니다. (필수)</span>
					</div>
				</div>
				<div class="contents-sign">
					<button type="button" class="btnset modalset-btn">등록하기</button>
				</div>
			</form>
				<div id="modalSet1" class="modalset">
					<div class="modal-header">
						<h6 class="modal-title">진단 시작 안내</h6>
					</div>
					<div class="modal-body">
						<p>
							입력하신 내용으로 진단을 시작합니다.<br>계속 진행하시겠습니까?
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btnset btnset-ghost modal-close">취소</button>
						<button type="button" class="btnset btnset-confirm">확인</button>
					</div>
				</div>
				<div id="modalSet2" class="modalset modalset2">
					<div class="modal-header">
						<h6 class="modal-title">진단 시작</h6>
					</div>
					<div class="modal-body">
						<p>
							성공적으로 내역을 등록했습니다.<br>조금만 기다려주세요.
						</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btnset btnset-confirm"
							onclick="location.href='xxxx.do'">확인</button>
					</div>
				</div>
				<div class="modalset-dim"></div>
			</div>
		</div>
	</div>


	<script>
  
	const filesetElements = document.querySelectorAll(".fileset");
	filesetElements.forEach((filesetElement) => {
	  const filesetInputs = filesetElement.querySelectorAll(".fileset-input");
	  const filesetCancels = filesetElement.querySelectorAll(".fileset-cancel");
	  filesetInputs.forEach((filesetInput, index) => {
	    const filesetCancel = filesetCancels[index];
	    filesetInput.addEventListener("change", () => {
	      filesetInput.classList.add("active");
	      filesetCancel.style.display = "block";
	    });
	    filesetCancel.addEventListener("click", () => {
	      filesetInput.value = "";
	      filesetInput.classList.remove("active");
	      filesetCancel.style.display = "none";
	    });
	  });
	});
	
	
  // 자가진단 항목의 체크된갯수 세기
	window.app = new Vue({
	    el: '#app',
	    data: function() {
	        return {
	            checkpoint: [
	                '1. 이마가 점점 넓어지는 느낌이 든다.',
	                '2. 가늘고 힘없는 머리가 많이 빠진다.',
	                '3. 머리카락이 하루에 100개 이상 빠진다.',
	                '4. 비듬이 많아지거나 두피가 가렵다.',
	                '5. 모발이 가늘고 부드러워졌다.',
	                '6. 두피를 눌러보면 가벼운 통증이 느껴진다.',
	                '7. 앞쪽과 뒤쪽 머리카락의 굵기 차이가 크다.',
	                '8. 몸의 털이 갑자기 굵어졌다.',
	                '9. 이마와 정수리 부분이 유난히 번들거린다.',
	                '10. 두피에 피지량이 갑자기 늘어난 것 같다.'
	            ],
	        	checks: Array(10).fill(false), // 체크박스 상태를 추적하는 배열
	        	isEditable: true // 체크박스의 수정 가능 여부를 나타내는 속성
	        }
	    },
	    computed: {
	        selfcheck: function() {
	            return this.checks.filter(Boolean).length; // 체크된 항목의 개수를 계산
	        }
	    },
	    methods: {
	        toggleEdit: function() {
	          this.isEditable = !this.isEditable; // 수정 가능 여부를 토글
	        }
	    }
	});
  
  
  
  
  
	function getImageFiles(e) {
        const uploadFiles = [];
        const files = e.currentTarget.files;
        const imagePreview = document.querySelector('.image-preview2'); // image-preview2 클래스를 사용하도록 변경
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

    const realUpload = document.querySelector('.fileset-input'); // .real-upload를 사용하지 않고 .fileset-input를 사용하도록 변경
    const upload = document.querySelector('.fileset-upload'); // .upload를 사용하지 않고 .fileset-upload를 사용하도록 변경

    upload.addEventListener('click', () => realUpload.click());

    realUpload.addEventListener('change', getImageFiles);
    	
    	
    	
    	
    	
    	
    	
	function validateForm() {
	    // 개인정보 수집 및 이용 동의 체크박스의 상태 확인
	    var isAgreed = document.querySelector('.contents-form-bottom .checkset-input').checked;

	    // 두 개의 파일 입력 필드 확인
	    var frontpath = document.querySelector('input[name="frontpath"]').value;
	    var toppath = document.querySelector('input[name="toppath"]').value;

	    // 체크된 항목의 개수를 계산
	    var selfcheck = document.querySelectorAll('.contents-price .checkset-input:checked').length;

	    if (!isAgreed || !frontpath || !toppath || selfcheck === 0) {
	        // 개인정보 수집 및 이용 동의 체크박스가 체크되지 않았거나,
	        // 두 개의 파일 입력 필드 중 하나라도 비어있는 경우,
	        // 또는 체크된 항목이 없는 경우
	        alert('모든 필드를 채우고 개인정보 수집 및 이용에 동의해주세요.');  // 사용자에게 메시지 표시
	        return false;  // 폼 제출을 취소
	    }

	    // 모든 조건이 충족된 경우에만 폼 제출을 계속
	    return true;
	}

	document.querySelector('.modalset2 .btnset-confirm').addEventListener('click', function() {
	    if (validateForm()) {
	        document.getElementById('uploadForm').submit();
	    }
	});
	</script>
  
  </script>
  <!-- [E]hooms-N39 -->
  <script src="${cpath}/resources/talmotest/js/setting.js"></script>
  <script src="${cpath}/resources/talmotest/js/plugin.js"></script>
  <script src="${cpath}/resources/talmotest/js/template.js"></script>
  <script src="${cpath}/resources/talmotest/js/common.js"></script>
  <script src="${cpath}/resources/talmotest/js/script.js"></script>
</body>
</html>
<%@ include file="Footer.jsp" %>