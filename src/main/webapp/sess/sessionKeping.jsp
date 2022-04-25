<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 로그인 접속 후 세션 유지 시간</title>
</head>
<body>
home > 로그인 접속 후 세션 유지 시간 출력하기
<hr>
<%
String s_id = session.getId();
long lastTime = session.getLastAccessedTime();
long creatTime = session.getCreationTime();
long kepingTime = (lastTime - creatTime)/1000;

out.print("세션아이디 :" +s_id);
out.print("<br>");
out.print("마지막 접속 시간 :" + lastTime/1000);
out.print("<br>");
out.print("세션 생성된 시간 :" + creatTime/1000);
out.print("<br>");
out.print("세션 유지된 시간 :" + kepingTime/1000);

%>
</body>
</html>