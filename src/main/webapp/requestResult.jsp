<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestResult</title>
</head>
<body>
 와우<br>
<% 

out.print(request.getContextPath()+"<br>"); 
out.print(request.getMethod()+"<br>");
out.print(request.getQueryString()+"<br>");
out.print(request.getParameter("name")+"<br>");
out.print(request.getRemoteAddr()+"<br>");



out.print(request.getLocalName()+"<br>");
out.print(request.getLocalAddr()+"<br>"); 
out.print(request.getLocalPort()+"<br>"); 
out.print(request.getLocale()+"<br>");
out.print(request.getRequestURI()+"<br>");
out.print(request.getRequestURL()+"<br>");
out.print(request.getHeader("referer")+"<br>");

out.print("<span style='color:red'>"+request.getHeader("referer")+"</span><br>");
String referer = request.getHeader("referer");
%>
<span style='color:red'><%=referer %></span><br>

<% 
for(int i = 0; i < 10; i++){
	out.print(i+"<br>");
}
%>

<% 
for(int i = 0; i < 10; i++){
%>
<%=i %><br>
<%	
}
%>

</body>
</html>