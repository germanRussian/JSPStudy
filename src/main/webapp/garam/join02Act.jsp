<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/* 
uid: 01048587633
uname: 이종혁
schoolname: 경북직업전문학교
gradeclass: 403호
upw: 123
route: B노선
boardingplace: B장소

request는 한페이지 밖에 못 던진다.
*/

request.setCharacterEncoding("UTF-8");//데이터 한글 깨짐 방지

String uid = request.getParameter("uid");
String uname = request.getParameter("uname");
String schoolname = request.getParameter("schoolname");
String gradeclass = request.getParameter("gradeclass");
String upw = request.getParameter("upw");
String route = request.getParameter("route");
String boardingplace = request.getParameter("boardingplace");

/* 빈값일때 데이터로 넘어가는 걸 막는다. */
/* if(uid == null || "".equals(uid)){
	response.sendRedirect("join02.jsp");
} */



//JDBC 프로그래밍
String url = "jdbc:mysql://localhost:3306/garam?characterEncoding=UTF-8&serverTimezone=Asia/Seoul";
String user = "root";
String password = "smart";
StringBuffer sql = new StringBuffer();
sql.append(" INSERT INTO g_member (uname, schoolname, gradeclass, uid, upw, route, boardingplace, joindate)");
sql.append(" VALUES (?, ?, ?, ?, ?, ?, ?, now()) ");




Connection conn = null;
PreparedStatement stmt = null;
int res = 0;
try {
	//드라이버로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	//연결
	conn = DriverManager.getConnection(url, user, password);
	//SQL
	stmt = conn.prepareStatement(sql.toString());
	//값 설정(쿼리 문 '?'에 들어 갈 값)
	stmt.setString(1, uname);
	stmt.setString(2, schoolname);
	stmt.setString(3, gradeclass);
	stmt.setString(4, uid);
	stmt.setString(5, upw);
	stmt.setString(6, route);
	stmt.setString(7, boardingplace);

	// 출력
	res = stmt.executeUpdate();

} catch (Exception e) {
e.getLocalizedMessage();
} finally {
	//닫기
	if (stmt != null)
		stmt.close();
	if (conn != null)
		conn.close();
}
%>



<script>
<%
if(res <= 0){
%>
	alert("회원가입에 실패했습니다.");
	history.go(-1);
<%
} else {
%>
	location.href="join03.jsp";
<%	
}
%>
</script>

