<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 세션 생성 </title>
</head>
<body>
<!-- DB 비연동 -->
Home > 세션 생성하기 <hr>
<%
String u_id = request.getParameter("id");
String u_pw = request.getParameter("passwd");

if(u_id.equals("space") && u_pw.equals("passwd")){
	session.setAttribute("memberId", u_id);
	session.setAttribute("memberPw", u_pw);
	
	out.print("새로운 세션 생성 성공! <br>");
	out.print("["+u_id+"]님이 입장하셨습니다.");
}
else{
	out.print("새로운 세션 실패! <br>");
	out.print("다시 로그인해 주시기 바랍니다.");
	
}


%>
</body>
</html>