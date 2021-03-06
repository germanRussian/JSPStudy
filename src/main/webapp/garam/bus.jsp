
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
sql.append(" SELECT *  FROM g_member");
sql.append(" where uid = ? ");


Connection conn = null;
PreparedStatement stmt = null;
ResultSet rs = null;



String schoolName = "";






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
		 
		schoolName = rs.getString("schoolname");
		
		
	
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
<title>버스탑승</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<body class="page03">
	<div class="c01 pd16">
		<div class="tC title">
			<h2>버스탑승</h2>
		</div>
		<ul class="ulFl school">
			<li class="on" id="schoolin">등교</li>
			<li id="schoolout">하교</li>
		</ul>
	</div>

	<div class="pd16 pdb">
		<div id="goSchool">
			<div class="mb16 select">
				<img src="./img/img04.png">출발지
				<div class="fR">
					<select name="start">
						<option value="">우방비치타운</option>
						<option value="">포항동부초등학교</option>
						<option value="">노인복지회관</option>
					</select> <img src="./img/ico05.png">
				</div>
			</div>

			<div class=" select">
				<img src="./img/img04.png">도착지 <span class="fR"><%= schoolName%></span>
				<!--등교 도착지는 학교로 고정-->
			</div>


		</div>


		<div id="goHome">
			<div class="mb16 select">
				<img src="./img/img04.png">출발지 <span class="fR"><%= schoolName%></span>
			</div>

			<div class=" select">
				<img src="./img/img04.png">도착지
				<div class="fR">
					<select name="start">
						<option value="">우방비치타운</option>
						<option value="">포항동부초등학교</option>
						<option value="">노인복지회관</option>
					</select> <img src="./img/ico05.png">
				</div>

				<!--등교 도착지는 학교로 고정-->
			</div>


		</div>
	</div>
	<button class="mX mt40" onclick="location.href='qrcode.jsp'">QR
		Code 실행</button>
		


	<div class="FAB">
		<ul class="ulFl">
			<li><a href="mypage.jsp"><img src="./img/ico01.png">
					<p>내정보</p></a></li>
			<li class="on"><a href="bus.jsp"><img
					src="./img/ico02_on.png">
					<p>버스탑승</p></a></li>
			<li><a href="list.jsp"><img src="./img/ico03.png">
					<p>이용내역</p></a></li>
		</ul>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {

			$("#goHome").hide();
			$("#schoolin").click(function() {
				$("#schoolin").addClass("on");
				$("#schoolout").removeClass("on");

				$("#goSchool").show();
				$("#goHome").hide();
				console.log("등교합니다.");
			});

			$("#schoolout").click(function() {
				$("#schoolout").addClass("on");
				$("#schoolin").removeClass("on");

				$("#goSchool").hide();
				$("#goHome").show();
				console.log("하교합니다.");
			});

		});
	</script>
</body>
</html>
