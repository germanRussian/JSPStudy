<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단일 세션 정보</title>
</head>
<body>
<!-- 세션 정보 확인하기 -->
<%
String u_id = (String)session.getAttribute("memberId");
String u_pw = (String)session.getAttribute("memberPw");

out.print("아이디 : "+u_id+ ",");
out.print("비번 : "+u_pw+ ",");
%>
</body>
</html>