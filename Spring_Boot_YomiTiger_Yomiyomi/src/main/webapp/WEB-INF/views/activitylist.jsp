<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="header.jsp"></jsp:include>
<link rel="icon" href="/logo/logo.png" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>YOMIYOMI-활동내역</title>
<script type="text/javascript" src="/js/mypage.js"></script>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/mypage.css">
</head>
<body>


	<main class="container">
		<div class="row" id="breadcrumb">
			<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/">Home</a></li>
					<li class="breadcrumb-item"><a href="/mypage/main">마이페이지</a></li>
					<li class="breadcrumb-item active" aria-current="page">활동내역</li>
				</ol>
			</nav>
		</div>

		<div class="row">
			<div class="col-md-3">
				<div class="row">
					<div class="text-center profileContainer">
						<div>
							<img src="/icon/user.png" class="rounded-circle" width="100px"
								height="100px">
						</div>
						<div class="name">'${ member.name }'님</div>
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
						<a href="/mypage/main" class="menuTitle">마이페이지</a><br> <a
							href="/mypage/orderdeliverylist">주문 배송 목록</a><br> <a
							href="/mypage/point">포인트</a><br> <a
							href="/mypage/activitylist">활동내역</a><br> <a
							href="/mypage/inquirylist">문의내역</a><br> <a
							href="/mypage/userupdate">회원정보</a><br> <br> <a
							href="/mypage/library" class="menuTitle">서재</a>
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
											<a href="/mypage/main" class="menuTitle">마이페이지</a><br> <a
												href="/mypage/orderdeliverylist">주문 배송 목록</a><br> <a
												href="/mypage/point">포인트</a><br> <a
												href="/mypage/activitylist">활동내역</a><br> <a
												href="/mypage/inquirylist">문의내역</a><br> <a
												href="/mypage/userupdate">회원정보</a><br> <br> <a
												href="/mypage/library" class="menuTitle">서재</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</nav>
				</div>

			</div>

			<div class="col-md-9">
				<div class="row">
					<div class="fs-1 fw-bolder">활동내역</div>
				</div>

				<!-- 탭 메뉴 -->
				<ul class="nav nav-tabs d-flex mt-3" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" id="first-tab"
							data-bs-toggle="tab" data-bs-target="#first" type="button"
							role="tab" aria-controls="first" aria-selected="true"
							style="color: #325341; font-weight: bolder;">전체</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="third-tab" data-bs-toggle="tab"
							data-bs-target="#third" type="button" role="tab"
							aria-controls="third" aria-selected="false"
							style="color: #325341; font-weight: bolder;">댓글</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="fourth-tab" data-bs-toggle="tab"
							data-bs-target="#fourth" type="button" role="tab"
							aria-controls="fourth" aria-selected="false"
							style="color: #325341; font-weight: bolder;">리뷰</button>
					</li>
				</ul>

				<!-- 내용 -->
				<div class="tab-content d-flex justify-content-center row"
					id="myTabContent">

					<!-- 1번 탭 -->
					<div class="tab-pane fade show active col" id="first"
						role="tabpanel" aria-labelledby="first-tab">

						<div class="fs-5" style="margin-top: 20px; display: flex; align-items: center;">
							<img alt="" src="/icon/bubbles.png" width="25px" height="25px">댓글
						</div>
						<div class="card">
							<div class="p-3">

								<c:forEach var="replyyList" items="${ reply }">
									<div>
										<input type="hidden" name="preList"> <a href="#"
											onclick="thirdTab()">${ replyyList.title } 
											(작성일 : ${ replyyList.written_date })</a>
									</div>
								</c:forEach>

								<div class="nonPreList" style="display: none;">
									<div class="d-flex justify-content-center"
										style="display: flex; align-items: center;">
										<img alt="" src="/icon/warning.png" width="40px" height="40px">
										해당하는 내용이 없습니다.
									</div>
								</div>

							</div>


						</div>

						<div class="fs-5" style="margin-top: 20px; display: flex; align-items: center;">
							<img alt="" src="/icon/text_bubble.png" width="25px" height="25px">리뷰</div>
						<div class="card">

							<div class="p-3">

								<c:forEach var="reviewList" items="${ review }">
									<div>
										<input type="hidden" name="ingList"> <a href="#"
											onclick="fourthTab()">${ reviewList.title } 
											(작성일 : ${ reviewList.written_date })</a>
									</div>
								</c:forEach>

								<div class="nonIngList" style="display: none;">
									<div class="d-flex justify-content-center"
										style="display: flex; align-items: center;">
										<img alt="" src="/icon/warning.png" width="40px" height="40px">
										해당하는 내용이 없습니다.
									</div>
								</div>

							</div>

						</div>


					</div>


					<!-- 3번 탭 -->
					<div class="tab-pane fade col" id="third" role="tabpanel"
						aria-labelledby="third-tab">

						<c:forEach var="replyList" items="${ reply }">
							<div class="fs-5" style="margin-top: 20px;">${ replyList.written_date }</div>
								<div class="card">
									<div class="container px-4">
										<div class="row gx-4">
											<input type="hidden" name="preList">
											<div class="col">
												<div class="p-2">
													<div style="display: flex; align-items: center;">
														<img alt="" src="/icon/bubbles.png" width="20px"
															height="20px"> <a href="#" onclick="replyTab()"><span
															style="line-height: 20px">댓글</span></a>
													</div>
													<div class="row card p-3" style="padding: 10px 0 10px 0">
														<div class="fs-5 fw-bolder ">${ replyList.title }</div>
														<div>${ replyList.content }</div>
													</div>
												</div>
											</div>
		
										</div>
									</div>
								</div>
						</c:forEach>
						

						<div class="nonPreList" style="display: none;">
							<div class="d-flex justify-content-center"
								style="display: flex; align-items: center;">
								<img alt="" src="/icon/warning.png" width="40px" height="40px">
								해당하는 내용이 없습니다.
							</div>
						</div>

						<div class="row">

							<div style="margin-top: 20px;">

								<div class="d-flex justify-content-center">
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"> <span aria-hidden="true"
													class="pageText">&laquo;</span>
											</a></li>

											<li class="page-item"><a class="page-link" href="#">
													<span class="pageText">1</span>
											</a></li>

											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true"
													class="pageText">&raquo;</span>
											</a></li>
										</ul>
									</nav>
								</div>

							</div>

						</div>

					</div>

					<!-- 4번 탭 -->
					<div class="tab-pane fade col" id="fourth" role="tabpanel"
						aria-labelledby="fourth-tab">

						<c:forEach var="reviewList" items="${ review }">
							<div class="fs-5" style="margin-top: 20px;">${ reviewList.written_date }</div>
							<div class="card">
								<div class="container px-4">
									<div class="row gx-4">
										<input type="hidden" name="ingList">
										<div class="col">
											<div class="p-2">
												<div style="display: flex; align-items: center;">
													<img alt="" src="/icon/text_bubble.png" width="20px"
														height="20px"> <a href="/store/detail?id=${ reviewList.item_id }" onclick="reviewTab()"><span
														style="line-height: 20px">리뷰</span></a>
												</div>
												<div class="row" style="padding: 10px 0 10px 0">
													<div class="col-3 mb-3">
														<a href="/store/detail?id=${ reviewList.item_id }"><img alt=""
															src="${ reviewList.thumbnail }"
															width="100%" height="100%"></a>
													</div>
													<div class="col mb-3">
														<div class="fs-5 fw-bolder ">${ reviewList.title }</div>
														<div>${ reviewList.content }</div>
													</div>
												</div>
											</div>
										</div>
	
									</div>
								</div>
							</div>
						</c:forEach>
						

						<div class="nonIngList" style="display: none;">
							<div class="d-flex justify-content-center"
								style="display: flex; align-items: center;">
								<img alt="" src="/icon/warning.png" width="40px" height="40px">
								해당하는 내용이 없습니다.
							</div>
						</div>

						<div class="row">

							<div style="margin-top: 20px;">

								<div class="d-flex justify-content-center">
									<nav aria-label="Page navigation example">
										<ul class="pagination">
											<li class="page-item"><a class="page-link" href="#"
												aria-label="Previous"> <span aria-hidden="true"
													class="pageText">&laquo;</span>
											</a></li>

											<li class="page-item"><a class="page-link" href="#">
													<span class="pageText">1</span>
											</a></li>

											<li class="page-item"><a class="page-link" href="#"
												aria-label="Next"> <span aria-hidden="true"
													class="pageText">&raquo;</span>
											</a></li>
										</ul>
									</nav>
								</div>

							</div>

						</div>

					</div>
				</div>




			</div>
		</div>

	</main>

	<div style="height: 150px"></div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>