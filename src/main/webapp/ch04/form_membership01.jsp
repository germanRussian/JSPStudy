<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
</head>
<body>
	Home > Person Information
	<hr>
	<form action="form_membership02.jsp" method="post">
		<fieldset style="width: 400px">
			<legend>개인정보 작성</legend>
			아이디 : <input name="p_id"><br> 패스워드 : <input name="p_pw"><br>
			이름 : <input name="p_name"><br /> 
			연락처 : <select name="choice">
				<option value="choice">선택</option>
				<option value="kt">KT</option>
				<option value="skt">SKT</option>
				<option value="lgu">LGU+</option>

			</select> <input size="3" maxlength="3" name="ph1"> -
			<input size="3" maxlength="4" name="ph2"> -
			<input size="3" maxlength="4" name="ph3"> <br /> 
			
			성별 : <input type="radio" name="gender" value="남성">남성
			<input type="radio"
				name="gender" value="여성">여성<br /> 
			
			취미 : <input type="checkbox"  name="hobby" value="운동">운동 
				<input type="checkbox"  name="hobby" value="독서">독서 
				<input type="checkbox"  name="hobby" value="음악감상">음악감상 
				<input type="checkbox" name="hobby" value="여행">여행<br />

			본인소개 :<br>
			<textarea name="Introduction"></textarea>
			<hr>
		</fieldset>
		<hr>
		<button type="submit">Login</button>
		<button type="reset">Cancel</button>

	</form>
</body>
</html>