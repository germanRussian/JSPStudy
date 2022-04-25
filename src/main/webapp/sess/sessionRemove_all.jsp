<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 세션 정보 제거</title>
</head>
<body>
home > 모든 세션 정보 제거하기
<hr>
<%
/* 로그아웃할대 사용한다. */
session.invalidate();
%>
</body>
</html>