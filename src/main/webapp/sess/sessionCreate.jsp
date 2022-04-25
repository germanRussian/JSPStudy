<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼 생성</title>
</head>
<body>
Home > 로그인 폼 화면
<hr> 
<form action="sessionCreate_success.jsp" method="post" name="loginform">
아이디 : <input type="text" name="id" value="space"><br><br>
비밀번호 : <input type="password" name="passwd" value="passwd"><br><br>
<button> 로그인하기</button>



</form>

</body>
</html>