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
<meta charset="UTF-8">
<title>YOMIYOMI-주문배송목록</title>
<script type="text/javascript" src="/js/mypage.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
</head>
<body>

	
	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/">Home</a></li>
					<li class="breadcrumb-item"><a href="/mypage/main">마이페이지</a></li>
					<li class="breadcrumb-item"><a href="/mypage/orderdeliverylist">주문배송목록</a></li>
					<li class="breadcrumb-item active" aria-current="page">주문배송상세</li>
				</ol>
			</nav>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				<div class="row">
					<div class="text-center profileContainer">
						<div>
							<img src="/icon/user.png" class="rounded-circle" width="100px" height="100px">
						</div>
						<div class="name">
							'${ member.name }'님
						</div>
						<div class="row d-flex justify-content-center">
							<div class="card profile p-3">
								<div class="row">
									<div class="col">
										찜<br> 0
									</div>
									<div class="col">
										리스트<br> 0
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="menuText">
						<a href="/mypage/main" class="menuTitle">마이페이지</a><br>
						<a href="/mypage/orderdeliverylist">주문 배송 목록</a><br>
						<a href="/mypage/point">포인트</a><br>
						<a href="/mypage/activitylist">활동내역</a><br>
						<a href="/mypage/inquirylist">문의내역</a><br>
						<a href="/mypage/userupdate">회원정보</a><br>
						<br>
						<a href="/mypage/library" class="menuTitle">서재</a>
					</div>
				</div>
				
				<!-- 오프캔버스 메뉴 -->
				<div class="d-flex justify-content-center">
					<nav class="navbar menuBtn">
						<div class="container-fluid">
							<button class="navbar-toggler" type="button"
								data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
								aria-controls="offcanvasNavbar">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="offcanvas offcanvas-start" tabindex="-1"
								id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
								<div class="offcanvas-header">
									<button type="button" class="btn-close"
										data-bs-dismiss="offcanvas" aria-label="Close"></button>
								</div>
								<div class="offcanvas-body">
									<div class="p-4">
										<div class="menuText2">
											<a href="/mypage/main" class="menuTitle">마이페이지</a><br>
											<a href="/mypage/orderdeliverylist">주문 배송 목록</a><br>
											<a href="/mypage/point">포인트</a><br>
											<a href="/mypage/activitylist">활동내역</a><br>
											<a href="/mypage/inquirylist">문의내역</a><br>
											<a href="/mypage/userupdate">회원정보</a><br>
											<br>
											<a href="/mypage/library" class="menuTitle">서재</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</nav>
				</div>
				
			</div>
			
			<div class="col-md-9">
				
				<div class="fs-1 fw-bolder col">
						주문/배송  상세
				</div>
				<br>
				<div>
					주문번호: ${ orderID }
				</div>
				<br>
				<div class="fs-3 fw-bolder col">
						상품정보
				</div>
				<div class="card" style="width: 100%">
					<ul class="list-group list-group-flush">
						<c:forEach var="orderDetailList" items="${ orderDetail }">
							<li class="list-group-item">
								<div class="row">
									<div class="col"><img alt="" src="${ orderDetailList.thumbnail }" style="width: 140px; height: 190px;"></div>
									<div class="col d-flex align-items-center justify-content-center" style="min-width: 88px;">${ orderDetailList.title }</div>
									<div class="col d-flex align-items-center justify-content-center" style="min-width: 88px;">${ orderDetailList.authors }</div>
									<div class="col d-flex align-items-center justify-content-center" style="min-width: 88px;">${ orderDetailList.publisher }</div>
									<div class="col d-flex align-items-center justify-content-center" style="min-width: 88px;">${ orderDetailList.price }원</div>
									<div class="col d-flex align-items-center justify-content-center writeReviewBtn">
										<a href="/mypage/writereview?id=${ orderDetailList.id }&order_id=${ orderID }&username=${ member.username }">
											<button class="btn btn-primary" style="
											--bs-btn-font-size: 0.9rem;
										    --bs-btn-color: #424874;
										    --bs-btn-bg: white;
										    --bs-btn-border-color: #424874;
										    --bs-btn-hover-color: white;
										    --bs-btn-hover-bg: #424874;
										    --bs-btn-hover-border-color: #0a58ca;
										    --bs-btn-focus-shadow-rgb: 49,132,253;
										    --bs-btn-active-color: #fff;
										    --bs-btn-active-bg: #0a58ca;
										    --bs-btn-active-border-color: #0a53be;
										    --bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
										    --bs-btn-disabled-color: #fff;
										    --bs-btn-disabled-bg: #0d6efd;
										    --bs-btn-disabled-border-color: #0d6efd;
										    min-width: 89px;
											">리뷰 작성</button>
										</a>
									</div>
								</div>	
							</li>
						</c:forEach>
							
					</ul>
				</div>
				<br>
				<div class="fs-3 fw-bolder col">
						배송정보
				</div>
				<div class="card" style="width: 100%">
					<div class="card-body">
						<table class="table text-center table-striped">
							<tr>
								<th class="fw-bolder">이름</th>
								<th class="fw-bolder">우편번호</th>
								<th class="fw-bolder">주소</th>
			
							</tr>
							<tr>
								<td>${ orderDetail[0].recipient_name }</td>
								<td>${ orderDetail[0].recipient_postnumber }</td>
								<td>${ orderDetail[0].recipient_city }${ orderDetail[0].recipient_street }${ orderDetail[0].recipient_location }</td>
								
							</tr>
						</table>
						
						<table class="table text-center table-striped">
							<tr>
								<th class="fw-bolder">배송회사</th>
								<th class="fw-bolder">배송시작날짜</th>
								<th class="fw-bolder">운송장번호</th>
								<th class="fw-bolder">배송상태</th>
							</tr>
							<tr>
								<td>${ orderDetail[0].delivery_name }</td>
								<td>${ orderDetail[0].delivery_date }</td>
								<td>${ orderDetail[0].delivery_number }</td>
								<td>${ orderDetail[0].delivery_state }</td>
							</tr>
						</table>
					</div>
				</div>
				<br>
				<div class="d-flex justify-content-center align-items-center">
   					<button type="button" class="btn btn-outline-primary btn-lg" id="listBtn" onclick="location='/mypage/orderdeliverylist'" style="width: 200px; 
						border: 1px solid #424874;
						
						--bs-btn-hover-bg: #424874;
						--bs-btn-hover-border-color: #424874;
						--bs-btn-color: #424874;
						--bs-btn-active-bg: #A6B1E1;
					    --bs-btn-active-border-color: #A6B1E1;">주문 배송 목록</button>
   				</div>
				
			</div>
		</div>
		
	</main>
	
	<div style="height: 150px"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>