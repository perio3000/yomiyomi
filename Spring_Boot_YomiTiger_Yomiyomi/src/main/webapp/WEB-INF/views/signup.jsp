<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<link rel="icon" href="/logo/logo.png" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<script type="text/javascript" src="/js/signup.js"></script>


<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/signup.css">
</head>
<body>
	<main class="container">
	<br>
		<div class="d-flex justify-content-center align-items-center">
			<div class="row nameTitle">요미요미</div>
		</div>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<div class="row">
			<div class="col-md-2">&nbsp;</div>
			<div class="col-md-8">
				<div class="row signupTitle">회원가입</div>
				<hr>
				<div class="row userInfo">
					<div class="col">
						회원정보 입력
					</div>
					<div class="col">
						<div class="d-flex justify-content-end">
							<span style="color:#424874">*</span>&nbsp;필수 입력
						</div>
					</div>
				</div>
				<br>
				<form:form id="signupForm">
				<input type="hidden" id="idCheck" value="">
				
				<!-- 아이디, 중복확인 -->
				<div class="row">
					<div class="col signupContents">
						아이디(이메일)&nbsp;<span style="color:#424874">*</span>
					</div>
				</div>
				<div class="row">
					<div class="col-9">
						<input type="text" class="form-control" placeholder="이메일을 입력해 주세요." id="email" style="height: 40px;">
  						<label for="email"></label>
					</div>
					<div class="col-3">
						<div id="checkBtn" class="text-center" onclick="usernameCheck()">중복확인</div>
					</div>
				</div>
				
				<!-- 비밀번호 -->
				<div class="row">
					<div class="col signupContents">
						비밀번호&nbsp;<span style="color:#424874">*</span>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="password" class="form-control" placeholder="비밀번호를 입력해 주세요." id="password" style="height: 40px;">
  						<label for="password"></label>
  						<span class="signupNotice">* 영어 대문자/소문자/특수문자 중 2가지 이상 이용. 최소 8글자 이상.</span>
					</div>
				</div>
				<div class="row">
					<div class="col">
						
					</div>
				</div><br>
				
				<!-- 비밀번호 확인 -->
				<div class="row">
					<div class="col signupContents">
						비밀번호 확인&nbsp;<span style="color:#424874">*</span>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="password" class="form-control" placeholder="비밀번호를 한번 더 입력해 주세요." id="password2" style="height: 40px;">
  						<label for="password2"></label>
					</div>
				</div>
				<!-- 이름 -->
				<div class="row">
					<div class="col signupContents">
						이름&nbsp;<span style="color:#424874">*</span>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="text" class="form-control" placeholder="이름을 입력해 주세요." id="name" style="height: 40px;">
  						<label for="name"></label>
					</div>
				</div>
				<!-- 휴대폰 번호 -->
				<div class="row">
					<div class="col signupContents">
						휴대폰 번호&nbsp;<span style="color:#424874">*</span>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="text" class="form-control" placeholder="휴대폰 번호를 입력해 주세요." id="tel" style="height: 40px;" onkeyup="inputPhoneNumber(this);">
  						<label for="tel"></label>
					</div>
				</div>
				<!-- 이메일 -->
				<!-- <div class="row">
					<div class="col signupContents">
						이메일&nbsp;<span style="color:#424874">*</span>
					</div>
				</div>
				<div class="row">
					<div class="col-9">
						<textarea class="form-control" placeholder="이메일을 입력해 주세요." id="floatingTextarea2" style="height: 40px;"></textarea>
  						<label for="floatingTextarea2"></label>
					</div>
					<div class="col-3">
						<button type="button" class="btn btn-primary" id="checkBtn">중복확인</button>
					</div>
				</div> -->
				<!-- 생년월일 -->
				<!-- <div class="row">
					<div class="col signupContents">
						생년월일&nbsp;<span style="color:#424874">*</span>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<textarea class="form-control" placeholder="생년월일을 입력해 주세요." id="floatingTextarea2" style="height: 40px;"></textarea>
  						<label for="floatingTextarea2"></label>
					</div>
				</div>
				<br> -->
				
				<!-- 전체선택, 전체해제 -->
				<div class="row termsOfUseTitle">서비스 이용약관 동의</div>
				<br>
				<div class="col termsOfUse">
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" name="chkAll" id="defaultCheck1" onclick='selectAll(this)'>
					  <label class="form-check-label" for="defaultCheck1">
					   	 약관 전체 동의
					  </label>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-md-10 termsOfUse">
					  <input class="form-check-input" type="checkbox" name="chk" id="check1">
					  <label class="form-check-label" for="check1">
					   	 요미타이거 이용약관&nbsp;<span style="color:#424874">(필수)</span>
					  </label>
					</div>
					<div class="col">
						<div class="d-flex justify-content-end"><a href="#">내용 보기 ></a></div>
					</div>
				</div>
				<div class="row">
					<div class="col termsOfUse">
						<div>
						  <input class="form-check-input" type="checkbox" name="chk" id="check2">
					  	  <label class="form-check-label" for="check2">
						  	개인정보 수집 및 이용 동의&nbsp;<span style="color:#424874">(필수)</span>
						  </label>
						</div>
					</div>
					<div class="col">
						<div class="d-flex justify-content-end"><a href="#">내용 보기 ></a></div>
					</div>
				</div>
				<div class="row">
					<div class="col termsOfUse">
						<div>
						  <input class="form-check-input" type="checkbox" name="chk" id="check3">
					 	  <label class="form-check-label" for="check3">
					 	  	개인정보 처리 위탁 동의&nbsp;<span style="color:#424874">(필수)</span>
					 	  </label>
						</div>
					</div>
					<div class="col">
						<div class="d-flex justify-content-end"><a href="#">내용 보기 ></a></div>
					</div>
				</div>
				<hr>
				<!-- 이용약관(선택) -->
				<div class="row">
					<div class="col termsOfUse">
						<div>
						  <input class="form-check-input" type="checkbox" name="chk" id="check4">
					 	  <label class="form-check-label" for="check4">
					 	  	개인정보 수집 및 이용 동의&nbsp;<span>(선택)</span>
					 	  </label>
						</div>
					</div>
					<div class="col">
						<div class="d-flex justify-content-end"><a href="#">내용 보기 ></a></div>
					</div>
				</div>
				<div class="row">
					<div class="col termsOfUse">
						<div>
						  <input class="form-check-input" type="checkbox" name="chk" id="check5">
					 	  <label class="form-check-label" for="check5">
					 	  	마케팅 수신 동의&nbsp;<span>(선택)</span>
					 	  </label>
						</div>
					</div>
				</div>
				<div class="row">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<div class="col advertisement">
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="chk" value="option1">
						  <label class="form-check-label" for="inlineCheckbox1">SMS</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" id="inlineCheckbox2" name="chk" value="option2">
						  <label class="form-check-label" for="inlineCheckbox2">이메일</label>
						</div>
						<div class="form-check form-check-inline">
						  <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="chk" value="option3">
						  <label class="form-check-label" for="inlineCheckbox3">카카오톡</label>
						</div>
					</div>
				</div>
				<div class="row">
					<span class="advertisementNotice">마케팅 수신 동의 시 다양한 혜택을 받아볼 수 있습니다.</span>
				</div>
				<br>
				<div class="row">
					<div class="d-grid gap-2">
					  <button class="btn btn-primary" type="submit" id="signupBtn">회원가입</button>
					</div>
				</div>
				</form:form>
				<div class="col-md-2">&nbsp;</div>
			</div>
		</div>
	</main>
	<br><br>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>