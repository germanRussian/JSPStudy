<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//스크립트릿
//자바코드
//post한글깨짐 방지
request.setCharacterEncoding("utf-8");
String p_id = request.getParameter("p_id");
String p_pw = request.getParameter("p_pw");
String p_name = request.getParameter("p_name");
String choice = request.getParameter("choice");
String ph1 = request.getParameter("ph1");
String ph2 = request.getParameter("ph2");
String ph3 = request.getParameter("ph3");
String gender = request.getParameter("gender");
String [] hobbys = request.getParameterValues("hobby");
String Introduction = request.getParameter("Introduction");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 화면</title>
</head>
<body>
	Home > Person Information
	<hr>
	<form action="form_membership02.jsp" method="get">
		<fieldset style="width: 400px">
			<legend>개인정보 작성</legend>
			아이디 :
			<%=p_id%><br> 
			
			패스워드 :
			<%=p_pw%><br> 
			
			이름 :
			<%=p_name%><br /> 
			
			연락처 :
			<%=choice%>
			:
			<%=ph1%>-<%=ph2%>-<%=ph3%><br /> 
			
			성별 :
			<%=gender%><br /> 
			
			취미 :<%

			try{
				for(int i = 0; i < hobbys.length; i++){
					out.print(hobbys[i]);
				}
			} catch(Exception e){}

			%><br/>
			
			
			
			
			본인소개 :<br>
			<%=Introduction%>
			<hr>
		</fieldset>
		<hr>
		<button type="submit">Login</button>
		<button type="reset">Cancel</button>

	</form>
</body>
</html>