<%@page import="java.sql.*"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
request.setCharacterEncoding("utf-8");


String uid = request.getParameter("uid");
String upw = request.getParameter("upw");

String url = "jdbc:mysql://localhost:3306/garam?characterEncoding=UTF-8&serverTimezone=Asia/Seoul";
String user = "root";
String password = "smart";

StringBuffer sql = new StringBuffer();
sql.append(" SELECT uid, uname   FROM g_member");
sql.append(" where uid = ? AND upw = sha1(?) ");


Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;

boolean loginSuccess = false;

try {
	//드라이버로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	//연결
	conn = DriverManager.getConnection(url, user, password);
	//SQL
	stmt = conn.prepareStatement(sql.toString());
	//값 설정(쿼리 문 '?'에 들어 갈 값)
	stmt.setString(1, uid);
	stmt.setString(2, upw);
	// 출력
	rs = stmt.executeQuery();

	/* 양이 적은 정보가 있으면 세션 만들어주라 - list 메소드 활용*/
	if (rs.next()) {
		session.setAttribute("sessId", rs.getString("uid"));
		session.setAttribute("sessName", rs.getString("uname")); 
		
		
		loginSuccess = true;
	}

} catch (Exception e) {
	e.getLocalizedMessage();

} finally {
	//닫기
	if (rs != null) rs.close();
	if (stmt != null) stmt.close();
	if (conn != null) conn.close();
	
}

// 위 DB 연동을 다 끊어주고, 아래에 따라 페이지 이동 하라
if (loginSuccess) {
	response.sendRedirect("mypage.jsp");
} else {
	response.sendRedirect("login.jsp");
}
%>