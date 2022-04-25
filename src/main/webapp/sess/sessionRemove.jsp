<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>단일 세션 제거</title>
</head>
<body>
home > 단일 세션 제거하기
<hr>
<%
session.removeAttribute("memberId");
%>
</body>
</html>