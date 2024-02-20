<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>마이페이지 - 회원정보 수정</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
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

        .error-message {
            color: red;
            margin-top: -10px; /* Adjust spacing */
            margin-bottom: 10px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            display: inline-block;
            width: 30%;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>

	<body>
	    <div class="container">
	        <h2>비밀번호 수정</h2>
	        <form id="updateForm" onsubmit="return validateForm()" action="${cpath}/PwUpdate.do" method="post">
	        	<input type="hidden" name="user_id" value="${loginMember.user_id}">	
	            <label for="password">새 비밀번호:</label>
	            <input type="password" id="password">
	
	            <label for="confirmPassword">새 비밀번호 확인:</label>
	            <input type="password" id="confirmPassword" name="pw">
	            <div id="passwordError" class="error-message"></div>
	            <br>
	            <button type="submit">수정하기</button>
	        </form>
	    </div>
	
	    <script>
	        function validateForm(event) {
	            const password = document.getElementById('password').value;
	            const confirmPassword = document.getElementById('confirmPassword').value;
	            const passwordError = document.getElementById('passwordError');
	
	            if (password !== confirmPassword) {
	                passwordError.textContent = '비밀번호가 일치하지 않습니다.';
	                return false;
	            } else {
	                passwordError.textContent = ''; // Clear error message
	                return true;
	            }
	        }
	    </script>
	</body>

</html>