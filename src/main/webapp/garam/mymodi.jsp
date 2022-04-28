
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 잘못된 경로 출입 방지 / 모든 페이지에 작성되어야한다. -->
<%
if (session.getAttribute("sessId") == null) {
	response.sendRedirect("login.jsp");
}

/* DB연결 */

request.setCharacterEncoding("utf-8");
String uid = request.getParameter("uid");
String upw = request.getParameter("upw");

String url = "jdbc:mysql://localhost:3306/garam?characterEncoding=UTF-8&serverTimezone=Asia/Seoul";
String user = "root";
String password = "smart";


StringBuffer sql = new StringBuffer();
sql.append(" SELECT *  FROM g_member");
sql.append(" where uid = ? ");


Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;


String name =""; 
String schoolName = "";
String phone = "";
String gradeClass = "";
String route = "";
String boardingPlace = "";




try {
	//드라이버로드
	Class.forName("com.mysql.cj.jdbc.Driver");
	//연결
	conn = DriverManager.getConnection(url, user, password);
	//SQL
	stmt = conn.prepareStatement(sql.toString());
	//값 설정(쿼리 문 '?'에 들어 갈 값)
	stmt.setString(1,(String)session.getAttribute("sessId"));
	// 출력
	rs = stmt.executeQuery();

	/* 한건에 해당하는 것만 내용을 가져올 것이기 때문에 if문 사용 while문은 여러건을 가져올때.*/
	if (rs.next()) {
		
		 name = rs.getString("uname");
		schoolName = rs.getString("schoolname");
		phone = rs.getString("uid");
		gradeClass = rs.getString("gradeclass");
		route = rs.getString("route");
		boardingPlace = rs.getString("boardingplace");
	}
} catch (Exception e) {
	e.getLocalizedMessage();

} finally {
	//닫기
	if (rs != null) rs.close();
	if (stmt != null) stmt.close();
	if (conn != null) conn.close();

}


%>





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내정보수정</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body class="page07">
	<div class="jointit w100 tC">
		<b>내정보수정</b>
	</div>

	<div class="pd16">
		<form method="post" action="mymodiAct.jsp">
			<input type="hidden" name="uid" id="uid" value="<%= session.getAttribute("sessId") %>"> <br> <br>
			<div>
				<h4>이름</h4>
				<input type="text" name="uname" id="uname" value="<%=name%>">
			</div>
			<br>
			<div>
				<h4>학교</h4>
				<input type="text" name="schoolname" id="uschool"value="<%=schoolName%>">
			</div>
			<br>
			<div>
				<h4>학년/반</h4>
				<input type="text" name="gradeclass" id="ugrade"value="<%=gradeClass%>">
			</div>


			<br>
			<div>
				<h4>노선</h4>
				<div class="sltbox">
					<select name="route" id="busroot">
						<option value="A노선" <%="A노선".equals(route)? "selected A": "none" %>>A노선</option>
						<option value="B노선" <%="B노선".equals(route)? "selected B": "none" %>>B노선</option>
						<option value="C노선" <%="C노선".equals(route)? "selected C": "none" %>>C노선</option>
					</select>
				</div>
			</div>
			<br>
			<div>
				<h4 class="inline">탑승장소</h4>
				<span>(※노선을 먼저 선택해주세요)</span>
				<div class="sltbox">
					<select name="boardingplace" id="place">
						<option value="A장소">A장소</option>
						<option value="B장소">B장소</option>
						<option value="C장소">C장소</option>
					</select>
				</div>
			</div>

			<div class="jw100 tC">
				<button type="submit">수정하기</button>
			</div>
		</form>
	</div>
	<script>
		function chkName(t) {
			var nameCheck = /^[가-힣]{2,6}$/;
			if (!nameCheck.test(t)) {
				return false;
			}
			return true;
		}

		$(document).ready(function() {
			$("button[type=submit]").on("click", function() {

				return true;
			});

			$("button").click(function() {

				/* 이름 */
				if ($("#uname").val() == '') {
					alert("이름을 입력해주세요.");
					$('#uname').focus();
					return false;
				}
				if (!chkName($('#uname').val())) {
					console.log("잘못됨" + $('#uname').val());
					alert("올바른 형식의 이름을 입력하세요");
					$('#uname').val('');
					$('#uname').focus();
					return false;
				}

				/* 학교 */
				if ($("#uschool").val() == '') {
					alert("학교를 입력해주세요.");
					$("#uschool").focus();
					return false;
				}

				/* 학년/반 */
				if ($("#ugrade").val() == '') {
					alert("학년 / 반을 확인해주세요.");
					return false;
				}

				/* 노선 */
				if ($("#busroot").val() == '노선') {
					alert("노선을 확인해주세요.");
					return false
				}
				if ($("#place").val() == '탑승장소') {
					alert("탑승장소를 확인해주세요.");
					return false
				}

			})

		});
	</script>
</body>
</html>






