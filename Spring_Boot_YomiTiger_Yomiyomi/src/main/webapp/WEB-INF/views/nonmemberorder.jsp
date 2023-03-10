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
<script type="text/javascript" src="/js/nonmemberorder.js"></script>

<meta charset="UTF-8">
<title>비회원 주문조회</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/nonmemberorder.css">
</head>
<body>
	<br><br>
	<main class="container">
		<form:form id="nonMemberOrderForm">
			<div class="d-flex justify-content-center">
				<div class="row">
					<div class="col">
						<img alt="logo" src="logo/logo.png">
					</div>
				</div>
			</div><br>
			<div class="row">
				<div class="d-flex justify-content-center">
					<div class="col-4" id="blank">&nbsp;</div>
					<div class="col-4">
						<span>주문자명</span>
					</div>
					<div class="col-4" id="blank">&nbsp;</div>
				</div>
			</div>
			<div class="d-flex justify-content-center">
				<div class="col-4">
					<div class="row">
						<input type="text" class="nonMemberName" placeholder="주문자명을 입력해 주세요." maxlength="50">
					</div>
				</div>
			</div><br>
			<div class="row">
				<div class="d-flex justify-content-center">
					<div class="col-4" id="blank">&nbsp;</div>
					<div class="col-4">
						<span>휴대폰번호</span>
					</div>
					<div class="col-4" id="blank">&nbsp;</div>
				</div>
			</div>
			<div class="d-flex justify-content-center">
				<div class="col-4">
					<div class="row">
						<input type="text" class="nonMemberPhone" placeholder="휴대폰번호를 입력해 주세요." 
							   onkeyup="inputPhoneNumber(this);">
					</div>
				</div>
			</div><br>
			<div class="row">
				<div class="d-flex justify-content-center">
					<div class="col-4" id="blank">&nbsp;</div>
					<div class="col-4">
						<span>비밀번호</span>
					</div>
					<div class="col-4" id="blank">&nbsp;</div>
				</div>
			</div>
			<div class="d-flex justify-content-center">
				<div class="col-4">
					<div class="row">
						<input type="password" class="nonMemberPassword" placeholder="비밀번호를 입력해 주세요." maxlength="50">
					</div>
				</div>
			</div><br>
			<div class="d-flex justify-content-center">
				<div class="col-4">
					<div class="row">
						<input type="submit" value="주문조회" class="nonMemberOrderCheck" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
					</div>
				</div>
			</div><br>
		</form:form>
		<!-- Modal -->
		<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
			data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-header">
						<h1 class="modal-title fs-5" id="staticBackdropLabel">조회 결과</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body text-center">
						<table class="table table-hover text-center table-bordered">
							<thead>
								<tr>
									<th>주문번호</th>
									<th>주문금액</th>
									<th>상품정보</th>
									<th>수량</th>
									<th>주문상태</th>
								</tr>
							</thead>
							
							<tbody class="tbody">
								

							</tbody>
						</table>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</main>
	<br><br>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>