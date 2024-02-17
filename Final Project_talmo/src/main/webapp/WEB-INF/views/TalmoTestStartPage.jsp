<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
    탈모 진단 전 사진 안내 페이지
    <br>
    <%-- 탈모진단 결과페이지 링크 나중에 지우기 --%>
    <button onclick="location.href='${cpath}/TalmoTestResultPage.do'">탈모 진단 결과 페이지 </button>>
    
    <br>
    
    <div class="image-container">
        <img src="${cpath}/resources/images/talmoSelfTest.png" alt="탈모 셀프 진단서"
        width="40%">
    </div>
    
    <br>
    

    <div id="checkbox-container"></div>
    
    <button onclick="location.href='${cpath}/TalmoTest.jsp'">다음</button>
    




    <script>
        // 체크박스 생성 함수
        function createCheckbox(id, label) {
            var container = document.getElementById('checkbox-container');
            var div = document.createElement('div');
            div.classList.add('form-check');

            var input = document.createElement('input');
            input.classList.add('form-check-input');
            input.setAttribute('type', 'checkbox');
            input.setAttribute('value', '');
            input.setAttribute('id', id);
            input.checked = false;

            var labelElement = document.createElement('label');
            labelElement.classList.add('form-check-label');
            labelElement.setAttribute('for', id);
            labelElement.innerText = label;

            div.appendChild(input);
            div.appendChild(labelElement);
            container.appendChild(div);
        }

        createCheckbox('flexCheckDefault1', '1. 이마가 점점 넓어지는 느낌이 든다.');
        createCheckbox('flexCheckDefault2', '2. 가늘고 힘없는 머리가 많이 빠진다.');
        createCheckbox('flexCheckDefault3', '3. 머리카락이 하루에 100개 이상 빠진다.');
        createCheckbox('flexCheckDefault4', '4. 비듬이 많아지거나 두피가 가렵다.');
        createCheckbox('flexCheckDefault5', '5. 모발이 가늘고 부드러워졌다.');
        createCheckbox('flexCheckDefault6', '6. 두피를 눌러보면 가벼운 통증이 느껴진다.');
        createCheckbox('flexCheckDefault7', '7. 앞쪽과 뒤쪽 머리카락의 굵기 차이가 크다.');
        createCheckbox('flexCheckDefault8', '8. 몸의 털이 갑자기 굵어졌다.');
        createCheckbox('flexCheckDefault9', '9. 이마와 정수리 부분이 유난히 번들거린다.');
        createCheckbox('flexCheckDefault10', '10. 두피에 피지량이 갑자기 늘어난 것 같다.');
        
        
    </script>
    
    
</body>
</html>
<%@ include file="Footer.jsp" %>