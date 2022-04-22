
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
</head>

<body class="page07">
    <div class="jointit w100 tC"><b>회원가입</b></div>

    <div class="pd16">

        <div>
            <h4>이름</h4>
            <input type="text">
        </div>

        <div>
            <h4>학교</h4>
            <input type="text">
        </div>

        <div>
            <h4>학년/반</h4>
            <input type="text">
        </div>

        <div class="pnum">
            <div><h4 class="inline">휴대폰번호</h4> <span>(※휴대폰 번호가 ID로 설정됩니다.)</span></div>
            <input type="text"> - <input type="text"> - <input type="text">
        </div>

        <div>
            <h4 class="inline">비밀번호</h4> <span>(※최대 12자리)</span>
            <input type="password" maxlength='12'>
        </div>

        <div>
            <h4>비밀번호 확인</h4>
            <input type="password" maxlength='12'>
        </div>

        <div>
            <h4>노선</h4>
            <div class="sltbox">
                <select name="">
                    <option value="">A노선</option>
                    <option value="">B노선</option>
                    <option value="">C노선</option>
                </select>
            </div>
        </div>
        
        <div>
            <h4 class="inline">탑승장소</h4> <span>(※노선을 먼저 선택해주세요)</span>
            <div class="sltbox">
                <select name="">
                    <option value="">A장소</option>
                    <option value="">B장소</option>
                    <option value="">C장소</option>
                </select>
            </div>
        </div>
        
        <div class="jw100 tC">
            <button><a href="join03.html">가입하기</a></button>
        </div>
    </div>
</body>
</html>
