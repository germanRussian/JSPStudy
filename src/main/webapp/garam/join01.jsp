
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관</title>
<link rel="stylesheet" type="text/css" href="style.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body class="page07">
	<div class="jointit w100 tC">
		<b>약관동의 
	</div>

	<div class="pd16">
		<form method="post" action="join02.jsp" >
			<!-- onsubmit="return frmchk();" -->
			<input type="hidden" name="agree" id="agree" value="">
			<div class="joinbox">
				<label for="agree1">서비스 이용약관 동의</label> <input type='checkbox'
					id="agree1" name='' value='Y' />
				<div class="terms">
					<b>대한민국 애국가</b> <br> <br>

					<p>1. 동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세 무궁화 삼천리 화려 강산 대한 사람
						대한으로 길이 보전하세</p>
					<p>2. 남산 위에 저 소나무 철갑을 두른 듯 바람 서리 불변함은 우리 기상일세 무궁화 삼천리 화려 강산 대한
						사람 대한으로 길이 보전하세</p>
					<p>3. 가을 하늘 공활한데 높고 구름 없이 밝은 달은 우리 가슴 일편단심일세 무궁화 삼천리 화려 강산 대한
						사람 대한으로 길이 보전하세</p>
					<p>4. 이 기상과 이 맘으로 충성을 다하여 괴로우나 즐거우나 나라 사랑하세 무궁화 삼천리 화려 강산 대한 사람
						대한으로 길이 보전하세</p>
				</div>
			</div>

			<div class="joinbox">
				<label for="agree2">개인정보 수집 및 이용 동의</label> <input type='checkbox'
					id="agree2" name='' value='Y' />
				<div class="terms">
					<b>대한민국 헌법 전문</b> <br> <br>
					<p>悠久한 歷史와 傳統에 빛나는 우리 大韓國民[6]은 3·1運動으로 建立된 大韓民國臨時政府의 法統과 不義에
						抗拒한 4·19民主理念을 繼承하고, 祖國의 民主改革과 平和的 統一의 使命에 立脚하여 正義·人道와 同胞愛로써 民族의
						團結을 鞏固히 하고, 모든 社會的 弊習과 不義를 打破하며, 自律과 調和를 바탕으로 自由民主的 基本秩序를 더욱 確固히
						하여 政治·經濟·社會·文化의 모든 領域에 있어서 各人의 機會를 均等히 하고, 能力을 最高度로 發揮하게 하며, 自由와
						權利에 따르는 責任과 義務를 完遂하게 하여, 안으로는 國民生活의 均等한 向上을 期하고 밖으로는 恒久的인 世界平和와
						人類共榮에 이바지함으로써 우리들과 우리들의 子孫의 安全과 自由와 幸福을 永遠히 確保할 것을 다짐하면서 1948年 7月
						12日에 制定되고 8次에 걸쳐 改正된 憲法을 이제 國會의 議決을 거쳐 國民投票에 依하여 改正한다.</p>
				</div>
			</div>

			<div class="joinbox">
				<label for="agree3">개인정보 3차 제공 동의</label> <input type='checkbox'
					id="agree3" name='' value='Y' />
				<div class="terms">
					<b>The Korean Government’s Basic Position on Dokdo</b> <br> <br>
					<p>Dokdo is an integral part of Korean territory, historically,
						geographically and under international law. No territorial dispute
						exists regarding Dokdo, and therefore Dokdo is not a matter to be
						dealt with through diplomatic negotiations or judicial settlement.
						The government of the Republic of Korea exercises Korea’s
						irrefutable territorial sovereignty over Dokdo. The government
						will deal firmly and resolutely with any provocation and will
						continue to defend Korea’s territorial integrity over Dokdo.</p>
				</div>
			</div>

			<div class="joinbtn w100 tC">
				<div>
					<label for="allselect"> <input id="allselect"
						type="checkbox" onclick="chkAuto(this);"> <span>전체
							동의</span>
					</label>
				</div>
				<div class="joinbtn w100 tC">
					<button type="button" onabort="history.go(-1)">취소</button>
					<button type="submit">확인</button>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript">
	
				
	/* 확인 버튼 클릭시 미동의된 항목 알림 */
		 $(document).ready(function() {
			 
			/* 항목이 다 체크되었을대, 전체 동의 클릭. */ 
			 var a1 = 0;
				
				$("#agree1").on("click", function(){
					
					if($("#agree1").prop("checked")){
						a1 += 1;
					} else {
						a1 -= 1;
					}
					allchk();
				});


				$("#agree2").on("click", function(){
					
					if($("#agree2").prop("checked")){
						a1 += 1;
					} else {
						a1 -= 1;
					}
					allchk();
				});

				$("#agree3").on("click", function(){
					
					if($("#agree3").prop("checked")){
						a1 += 1;
					} else {
						a1 -= 1;
					}
					allchk();
				});
				
				
				function allchk() {
					if(a1 == 3){
						$("#allselect").prop("checked", true);					
					}else{
						$("#allselect").prop("checked", false);
					}
					
				}
			 
			$("button[type=submit]").on("click", function() {
				var agree1 = $("#agree1").prop("checked");
				var agree2 = $("#agree2").prop("checked");
				var agree3 = $("#agree3").prop("checked");
				if (!agree1 || !agree2 || !agree3) {
					alert(" 약관을 확인해주세요. 미 동의된 약관이 존재합니다. ");
					return false;
				} else {
					$("#agree").val("Y");
					
					return true;
				}
				console.log("jquery");
				return false;
			});
			
			
		});
		
	
	
		
		/* 동의 체크 확인 - 사용시 폼태그에 <!-- onsubmit="return frmchk();" --> 입력 해야함*/
		 function frmchk() {
			/* 체크 확인 prop */
			var agree1 = $("#agree1").prop("checked");
			var agree2 = $("#agree2").prop("checked");
			var agree3 = $("#agree3").prop("checked");
			if (!agree1) {
				alert("서비스 이용약관 동의에 체크하셔야 합니다.");
				return false;
			}
			if (!agree2) {
				alert("개인정보 수집 및 이용 동의에 체크하셔야 합니다.");
				return false;
			}
			if (!agree3) {
				alert("개인정보 3차 제공 동의에 체크하셔야 합니다.");
				return false;
			}
			

		}
		
		
		/* 자동 체크 */
		function chkAuto(t) {

			if (t.checked) {
				
				agree1.checked = true;
				agree2.checked = true;
				agree3.checked = true;
				console.log("약관이 모두 동의 되었습니다." + t.checked);
			} else {
				agree1.checked = false;
				agree2.checked = false;
				agree3.checked = false;
				console.log("약관이 모두 해제 되었습니다." + t.checked);
			}
			

		}
	</script>
</body>
</html>
