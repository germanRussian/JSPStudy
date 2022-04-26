<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String agree = request.getParameter("agree");
String method = request.getMethod();//GET , POST

if ((agree == null || !agree.equals("Y")) || method.equals("GET")) {
	//if((!"Y".equals(agree)) || method.equals("GET")){
%>
<script>
	history.go(-1);
</script>
<%
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입<%=method%></title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body class="page07">
	<div class="jointit w100 tC">
		<b>회원가입</b>
	</div>

	<div class="pd16">
		<form method="post" action="join02Act.jsp">
			<input type="hidden" name="uid" id="uid">
			<div>
				<h4>이름</h4>
				<input type="text" name="uname" id="uname">
			</div>

			<div>
				<h4>학교</h4>
				<!-- <input type="text" name="schoolname" id="uschool"> -->
				<div class="sltbox">
					<select name="route" id="uschool">
						<option value="">고등학교</option>
						<option value="A노선">포항 고등학교</option>
						<option value="B노선">포항 장성 고등학교</option>
						<option value="C노선">포항 두고 고등학교</option>
					</select>
				</div>
			</div>

			<!-- <div>
				<h4>학년/반</h4>
				<input type="text" name="gradeclass" id="ugrade">
			</div>
 -->

			<h4>학년/반</h4>
			<div class="sltbox1">
				<select name="" id="">
					<option value="">학년</option>
					<option value="1학년">1학년</option>
					<option value="2학년">2학년</option>
					<option value="3학년">3학년</option>
				</select> 
				
			
				
			</div>
			<div class="sltbox1">
				
				<select name="" id="">
					<option value="">반</option>
					<option value="1반">1반</option>
					<option value="2반">2반</option>
					<option value="3반">3반</option>
				</select>
			
				//유효성 검사 필요
			</div>
			
			<br>
			




			<!-- <div class="pnum"> -->
			<div>
				<h4 class="inline">휴대폰번호</h4>
				<span>(※휴대폰 번호가 ID로 설정됩니다.)</span>
			</div>

			<input type="text" id="phone1">
			<!-- <div class="pnum" id="telnum">
					<input type="text" id="phone1"> - <input type="text"
						id="phone2"> - <input type="text" id="phone3"
						maxlength="4">
				</div> -->
			<!-- </div> -->


			<div>
				<h4 class="inline">비밀번호</h4>
				<span>(※영문(대소문자), 숫자, 특수 문자,공백 X, 비밀번호 자리 최대 12자리)</span> <input
					type="password" name="upw" maxlength='12' id="upw">
			</div>

			<div>
				<h4>비밀번호 확인</h4>
				<input type="password" maxlength='12' id="upw2">
			</div>

			<div>
				<h4>노선</h4>
				<div class="sltbox">
					<select name="route" id="busroot">
						<option value="">코스</option>
						<option value="A노선">A노선</option>
						<option value="B노선">B노선</option>
						<option value="C노선">C노선</option>
					</select>
				</div>
			</div>

			<div>
				<h4 class="inline">탑승장소</h4>
				<span>(※노선을 먼저 선택해주세요)</span>
				<div class="sltbox">
					<select name="boardingplace" id="place">
						<option value="">장소</option>
						<option value="A장소">A장소</option>
						<option value="B장소">B장소</option>
						<option value="C장소">C장소</option>
					</select>
				</div>
			</div>

			<div class="jw100 tC">
				<button type="submit">가입하기</button>
			</div>
		</form>
	</div>
	<script>
		/* 이름 체크 함수  */
		function chkname(n) {
			var nameCheck = /^[가-힣]{2,6}$/;

			if (!nameCheck.test(n)) {
				return false
			} else {
				console.log("이름 체크 통과");
				return true;
			}
		}
		/* 휴대폰 번호 체크 함수 */
		function chk_phone(p) {

			var regPhone = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
			if (!regPhone.test(p)) {
				return false;
			} else {
				console.log("휴대폰 번호 체크 통과");
				return true;
			}

		}

		/* 비밀번호 체크 함수  : 영문(대소문자), 숫자, 특수 문자,공백 X, 비밀번호 자리 8~20자*/
		function chkPW() {

			var pw = $("#upw").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

			/* if(pw.length < 8 || pw.length > 20) */
			if (pw.length > 12) {

				alert("12자리 이내로 입력해주세요.");
				return false;
			} else if (pw.search(/\s/) != -1) {
				alert("비밀번호는 공백 없이 입력해주세요.");
				return false;
			} else if (num < 0 || eng < 0 || spe < 0) {
				alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
				return false;
			} else {
				console.log("비밀 번호 체크 통과");
				return true;
			}

		}

		$(document).ready(function() {

			$("button").click(function() {

				/* 이름 */
				if ($("#uname").val() == '') {
					alert("이름을 입력해주세요.");
					$('#uname').focus();
					return false;
				}

				/* 이름 정규식 확인 */
				if (!chkname($('#uname').val())) {
					console.log("잘못됨 : " + $('#uname').val());
					alert("올바른 형식의 이름을 입력하세요");
					$('#uname').val('');
					$('#uname').focus();
					return false;
				}

				/* 학교 */
				if ($("#uschool").val() == '') {
					alert("학교를 선택해주세요.");
					$("#uschool").focus();
					return false;
				}

				/* 학년/반 */
				if ($("#ugrade").val() == '') {
					alert("학년 / 반을 확인해주세요.");
					return false;
				}

				/* 휴대폰 번호 작성 */
				if ($("#phone1").val() == '') {
					alert("휴대폰 번호를 작성해 주세요")

					return false;
				} else {
					console.log("비밀번호 비교 확인 통과");

				}

				/* 휴대폰 번혼 정규식 확인 */
				if (!chk_phone($("#phone1").val())) {
					console.log("잘못됨 : " + $('#phone1').val());
					alert("올바른 형식의 휴대폰 번호를 입력하세요");
					$('#phone1').val('');
					$('#phone1').focus();
					return false;
				}

				/* 비밀번호 */
				if ($("#upw").val() == '' || $("#upw2").val() == '') {
					alert("비밀번호를 입력해주세요.");
					return false;

				}

				if ($("#upw").val() != $("#upw2").val()) {
					alert("비밀번호가 다릅니다.");
					$("#upw").val('');
					$("#upw2").val('');
					return false;
				}
				if (!chkPW($('#upw').val())) {
					console.log("잘못됨 : " + $('#upw').val());
					/* alert("올바른 형식의 비밀번호를 입력하세요"); */
					$('#upw').val('');
					$('#upw2').val('');
					$('#upw').focus();
					return false;
				}

				/* 노선 */
				if ($("#busroot").val() == '') {
					alert("노선을 확인해주세요.");
					$('#busroot').focus();
					return false
				}
				if ($("#place").val() == '') {
					alert("탑승장소를 확인해주세요.");
					$('#place').focus();
					return false
				}

				/* if ($("#busroot").val() == '' || $("#place").val() == '') {
				alert("노선과 코스를 확인해주세요.");
				return false
				} */
			});

			/* 휴대폰번호 커서 이동 */
			/* $("#telnum").keydown(function() {
				if ($("#phone1").val().length == '3') {
					$("#phone2").focus();

				}
				if ($("#phone2").val().length == '4') {
					$("#phone3").focus();
				}
			});
			 */
			/* 휴대폰 번호 작성됨 알림 */
			$("button[type=submit]").on("click", function() {
				/* var p1 = $("#phone1").val();
				var p2 = $("#phone2").val();
				var p3 = $("#phone3").val();

				$("#uid").val(p1 + p2 + p3) */

				$("#uid").val($("#phone1").val());
				console.log("휴대폰 번호가 작성되었습니다.");
				return true;

			});

		});
	</script>
</body>
</html>






