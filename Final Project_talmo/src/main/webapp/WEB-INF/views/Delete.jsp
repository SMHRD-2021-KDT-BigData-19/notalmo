<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<%@ include file="Header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>회원 탈퇴</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 8px;
        }

        input {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            width: 100%;
        }

        button {
            background-color: #000; /* 버튼 배경색을 검정(#000)으로 변경 */
            color: #fff; /* 버튼 글씨색을 하얀색(#fff)으로 변경 */
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: inline-block;
            width: 50%;
        }

        button:hover {
            background-color: #333; /* 버튼에 호버 시 배경색을 조금 더 어둡게 변경 */
        }
    </style>
</head>

<body>
	<br><br><br><br>
    <div class="container">
        <h2>회원 탈퇴</h2>
        <form id="withdrawForm" onsubmit="return confirmWithdraw()" action="${cpath}/Delete.do" method="post">
        	<input type="hidden" name="user_id" value="${loginMember.user_id}">	
            <label for="password">비밀번호:</label>
            <input type="password" id="password" required>
            <div id="passwordError" class="error-message"></div>
            <br>
            <button type="submit">탈퇴하기</button>
        </form>
    </div>
    <br><br><br><br>

    <script>
    function confirmWithdraw() {
        const enteredPassword = document.getElementById('password').value;
        const passwordError = document.getElementById('passwordError');
        const actualPassword = '${loginMember.pw}'; // loginMember.pw를 서버에서 가져와서 적절히 대체해야 합니다.

        if (enteredPassword !== actualPassword) {
            passwordError.textContent = '비밀번호가 일치하지 않습니다.';
            return false;
        } else {
            return confirm('정말로 회원 탈퇴하시겠습니까?');
        }
    }
    </script>
</body>

</html>
<%@ include file="Footer.jsp"%>