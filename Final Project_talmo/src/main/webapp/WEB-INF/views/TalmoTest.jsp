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
<style>
  .checkset-label {
	    border: 2px solid black;
	  }
	  
  .contents-price {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
  }

  .checkset {
    display: flex;
    align-items: center;
  }
</style>


<body>

<c:if test="${empty sessionScope['loginMember']}">

    <script>
        window.location.href = "${cpath}/LoginPage.do";
    </script>
</c:if>
  <div class="hooms-N25" data-bid="kqlSPsJe0f" id="">
    <div class="contents-container">
      <img class="contents-backimg" src="${cpath}/resources/talmotest/images/testBanner.png" alt="배너 이미지">
      <div class="contents-body container-md">
        <h2 class="contents-title" style="color: white;" ><strong>AI 탈모 진단</strong></h2>
      </div>
    </div>
  </div>

  <div class="hooms-N17" data-bid="mNlsPskigN" id="">
    <div class="contents-inner">
      <div class="contents-container container-md">
        <div class="textset textset-h2">
          <h2 class="textset-tit">Self Test</h2>
        </div>
        <div class="textset">
          <p class="textset-desc"><span style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;">탈모는 조기 진단과 조기 치료가 치료 효과가 높고 치료비도 절감할 수 있습니다. ​</span><br style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;">​진단과 치료가 늦어질수록 치료 효과도 감소하고 치료비용도 증가하기 때문에 자가 진단법으로 모발 상태를 꼼꼼히 확인해보세요. ​</span><br style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;">​</span><br style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;"><span style="color: rgb(0, 0, 0); font-family: &quot;Noto Sans KR&quot;, sans-serif; font-size: 18px; letter-spacing: -0.75px; text-align: justify;">다음 중 5개 이상이 해당되면 탈모를 의심해볼 수 있으니 병원을 찾아 정확한 진단을 받아보는 것이 좋습니다.</span></p>
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
                                 <label class="checkset-label" style="border: 2px solid black;" :for="'checkset-a-1-' + (index + 1)"></label>
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
                        src="${cpath}/resources/talmotest/images/warning1.png"
                        alt="이미지">
                  </figure>
                  <div class="cardset-body">
                     <h5 class="cardset-tit">사진을 레이어에 맞춰주세요.</h5>
                     <p class="cardset-desc">너무 가까이서 촬영하거나 대각선 구도에서 촬영한 사진은 AI의 인식이 어렵습니다.</p>
                  </div>
               </div>
               <div class="cardset">
                  <figure class="cardset-figure">
                     <img class="cardset-img"
                        src="${cpath}/resources/talmotest/images/warning2.png"
                        alt="이미지">
                  </figure>
                  <div class="cardset-body">
                     <h5 class="cardset-tit">머리에 손, 사물 등은 올리지 마세요.</h5>
                     <p class="cardset-desc">머리에 손이나 밝은 핀, 집게 등은 AI의 인식이 어렵습니다.</p>
                  </div>
               </div>
               <div class="cardset">
                  <figure class="cardset-figure">
                     <img class="cardset-img"
                        src="${cpath}/resources/talmotest/images/warning3.png"
                        alt="이미지">
                  </figure>
                  <div class="cardset-body">
                     <h5 class="cardset-tit">너무 밝거나 어두운 사진은 피해주세요.</h5>
                     <p class="cardset-desc">머리카락이 빛에 반사되어 너무 밝거나, 젖은머리, 어두운 환경에서 찍어 너무 어두운 사진은 AI의 인식이 어렵습니다.
                        &nbsp;</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="hooms-N15" data-bid="HQLSPSyJyF" id="">
      <div class="contents-inner">
         <div class="contents-container container-md">
            <div class="textset textset-h2">
               <h2 class="textset-tit textset-h2">올바른 사진</h2>
            </div>
            <div class="contents-group">
               <div class="cardset">
                  
                  <figure class="cardset-figure">
                     <img class="cardset-img"
                        src="${cpath}/resources/talmotest/images/proper_img.png"
                        alt="이미지">
                  </figure>
                  <div class="cardset-body">
                     <p class="cardset-desc">정수리가 카메라 정면에 보이게 위치하도록 바로 위에서 찍어주세요.</p>
                  </div>
               </div>
               <div class="cardset">
                  
                  <figure class="cardset-figure">
                     <img class="cardset-img"
                        src="${cpath}/resources/talmotest/images/proper_img2.png"
                        alt="이미지">
                  </figure>
                  <div class="cardset-body">
                     <p class="cardset-desc">머리가 긴 경우 묶지 말고 푼 상태로 정수리를 카메라 정면에 보이게 위치하도록 바로 위에서 찍어주세요.</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

   <div class="hooms-N39" data-bid="hkLSPT0B60" id="">
      <div class="contents-inner">
         <div class="contents-container container-md">
            
            <div class="contents-form">
               <div class="contents-form-middle">
                  <div class="fileset fileset-lg fileset-label">
                     <label>
                        <h6 class="fileset-tit">정수리 사진을 올려주세요.</h6>
                        <div class="fileset-body">
                           <div class="fileset-group">
                              <input type="file" class="fileset-input" id="toppath" name="toppath">
                              <button class="fileset-cancel"></button>
                           </div>
                           <span class="btnset btnset-line btnset-lg fileset-upload">파일 첨부하기</span>
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
               <button type="button" class="btnset modalset-btn">진단하기</button>
            </div>
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
                  <button type="button" class="btnset btnset-confirm">확인</button>
                  <button type="button" class="btnset btnset-ghost modal-close">취소</button>
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
                  <button type="submit" class="btnset btnset-confirm" >확인</button>
               </div>
            </div>
            <div class="modalset-dim"></div>
         </div>
      </div>
   </div>
</form>


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
              checks: Array(10).fill(false),
              isEditable: true
           }
       },
       computed: {
           selfcheck: function() {
               return this.checks.filter(Boolean).length;
           }
       },
       methods: {
           toggleEdit: function() {
             this.isEditable = !this.isEditable;
           }
       }
   });
       
       
   function validateForm() {
       var isAgreed = document.querySelector('.contents-form-bottom .checkset-input').checked;

       var frontpath = document.querySelector('input[name="frontpath"]').value;
       var toppath = document.querySelector('input[name="toppath"]').value;

       var selfcheck = document.querySelectorAll('.contents-price .checkset-input:checked').length;

       if (!isAgreed || !frontpath || !toppath || selfcheck === 0) {
           alert('모든 필드를 채우고 개인정보 수집 및 이용에 동의해주세요.');
           return false;
       }

       return true;
   }

   document.querySelector('.modalset2 .btnset-confirm').addEventListener('click', function() {
       if (validateForm()) {
           document.getElementById('uploadForm').submit();
       }
   });
   </script>

  <script src="${cpath}/resources/talmotest/js/setting.js"></script>
  <script src="${cpath}/resources/talmotest/js/plugin.js"></script>
  <script src="${cpath}/resources/talmotest/js/template.js"></script>
  <script src="${cpath}/resources/talmotest/js/common.js"></script>
  <script src="${cpath}/resources/talmotest/js/script.js"></script>
  
  <%@ include file="Footer.jsp" %>
  
</body>
</html>