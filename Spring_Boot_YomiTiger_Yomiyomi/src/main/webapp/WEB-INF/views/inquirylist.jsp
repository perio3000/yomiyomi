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
<title>YOMIYOMI-문의내역</title>
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
					<li class="breadcrumb-item active" aria-current="page">문의내역</li>
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
					<div class="fs-1 fw-bolder">문의내역</div>
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
						<button class="nav-link" id="second-tab" data-bs-toggle="tab"
							data-bs-target="#second" type="button" role="tab"
							aria-controls="second" aria-selected="false"
							style="color: #325341; font-weight: bolder;">준비중</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="third-tab" data-bs-toggle="tab"
							data-bs-target="#third" type="button" role="tab"
							aria-controls="third" aria-selected="false"
							style="color: #325341; font-weight: bolder;">처리중</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" id="fourth-tab" data-bs-toggle="tab"
							data-bs-target="#fourth" type="button" role="tab"
							aria-controls="fourth" aria-selected="false"
							style="color: #325341; font-weight: bolder;">답변완료</button>
					</li>
				</ul>

				<!-- 내용 -->
				<div class="tab-content d-flex justify-content-center row"
					id="myTabContent">

					<!-- 1번 탭 -->
					<div class="tab-pane fade show active col" id="first"
						role="tabpanel" aria-labelledby="first-tab">

						<div class="fs-5" style="margin-top: 20px;">준비중</div>
						<div class="card">
							<div class="p-3">

								<c:forEach var="inquiryList" items="${ inquiry }">
									<c:choose>
										<c:when test="${ inquiryList.board_name == '준비중' }">
											<div>
												<input type="hidden" name="preList"> <a href="#"
													onclick="secondTab()">${ inquiryList.title } (${ inquiryList.board_name })
													문의 일자 : ${ inquiryList.written_date }</a>
											</div>
										</c:when>
									</c:choose>
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

						<div class="fs-5" style="margin-top: 20px;">처리중</div>
						<div class="card">

							<div class="p-3">

								<c:forEach var="inquiryList" items="${ inquiry }">
									<c:choose>
										<c:when test="${ inquiryList.board_name == '처리중' }">
											<div>
												<input type="hidden" name="ingList"> <a href="#"
													onclick="thirdTab()">${ inquiryList.title } (${ inquiryList.board_name })
													문의 일자 : ${ inquiryList.written_date }</a>
											</div>
										</c:when>
									</c:choose>
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

						<div class="fs-5" style="margin-top: 20px;">답변완료</div>
						<div class="card">

							<div class="p-3">

								<c:forEach var="inquiryList" items="${ inquiry }">
									<c:choose>
										<c:when test="${ inquiryList.board_name == '답변완료' }">
											<div>
												<input type="hidden" name="comList"> <a href="#"
													onclick="fourthTab()">${ inquiryList.title } (${ inquiryList.board_name })
													문의 일자 : ${ inquiryList.written_date }</a>
											</div>
										</c:when>
									</c:choose>
								</c:forEach>

								<div class="nonComList" style="display: none;">
									<div class="d-flex justify-content-center"
										style="display: flex; align-items: center;">
										<img alt="" src="/icon/warning.png" width="40px" height="40px">
										해당하는 내용이 없습니다.
									</div>
								</div>

							</div>

						</div>

					</div>

					<!-- 2번 탭 -->
					<div class="tab-pane fade col" id="second" role="tabpanel"
						aria-labelledby="second-tab">

						<div class="accordion accordion-flush"
							id="accordionFlushExample_1">
							<c:forEach var="inquiryList" items="${ inquiry }">
								<c:choose>
									<c:when test="${ inquiryList.board_name == '준비중' }">
										<div class="accordion-item">
											<h2 class="accordion-header"
												id="flush-heading${ inquiryList.id }">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse"
													data-bs-target="#flush-collapse${ inquiryList.id }"
													aria-expanded="false"
													aria-controls="flush-collapse${ inquiryList.id }">
													${ inquiryList.title } (${ inquiryList.board_name }) 문의 일자
													: ${ inquiryList.written_date }</button>
											</h2>
											<div id="flush-collapse${ inquiryList.id }"
												class="accordion-collapse collapse"
												aria-labelledby="flush-heading${ inquiryList.id }"
												data-bs-parent="#accordionFlushExample_1">
												<div class="accordion-body">
													${ inquiryList.content }
													<br><br>
													<img alt="" src="${ inquiryList.file_path }" width="100%">
												</div>
											</div>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>

							<div class="nonPreList" style="display: none;">
								<div class="d-flex justify-content-center mt-3"
									style="display: flex; align-items: center;">
									<img alt="" src="/icon/warning.png" width="40px" height="40px">
									해당하는 내용이 없습니다.
								</div>
							</div>
						</div>
					</div>

					<!-- 3번 탭 -->
					<div class="tab-pane fade col" id="third" role="tabpanel"
						aria-labelledby="third-tab">

						<div class="accordion accordion-flush"
							id="accordionFlushExample_2">
							<c:forEach var="inquiryList" items="${ inquiry }">
								<c:choose>
									<c:when test="${ inquiryList.board_name == '처리중' }">
										<div class="accordion-item">
											<h2 class="accordion-header"
												id="flush-heading${ inquiryList.id }">
												<button class="accordion-button collapsed" type="button"
													data-bs-toggle="collapse"
													data-bs-target="#flush-collapse${ inquiryList.id }"
													aria-expanded="false"
													aria-controls="flush-collapse${ inquiryList.id }">
													${ inquiryList.title } (${ inquiryList.board_name }) 문의 일자
													: ${ inquiryList.written_date }</button>
											</h2>
											<div id="flush-collapse${ inquiryList.id }"
												class="accordion-collapse collapse"
												aria-labelledby="flush-heading${ inquiryList.id }"
												data-bs-parent="#accordionFlushExample_2">
												<div class="accordion-body">${ inquiryList.content }</div>
											</div>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>

							<div class="nonIngList" style="display: none;">
								<div class="d-flex justify-content-center mt-3"
									style="display: flex; align-items: center;">
									<img alt="" src="/icon/warning.png" width="40px" height="40px">
									해당하는 내용이 없습니다.
								</div>
							</div>
						</div>
					</div>

					<!-- 4번 탭 -->
					<div class="tab-pane fade col" id="fourth" role="tabpanel"
						aria-labelledby="fourth-tab">

						<div class="accordion accordion-flush"
							id="accordionFlushExample_3">

							<c:forEach var="inquiryList" items="${ inquiry }">
								<c:choose>
									<c:when test="${ inquiryList.board_name == '답변완료' }">
										<div class="accordion-item">
											<h2 class="accordion-header"
												id="flush-heading${ inquiryList.id }">
												<form:form id="inquiryForm" action="inquiry" method="get">
													<input type="hidden" id="reply_group" value="${ inquiryList.id }">
													<button class="accordion-button collapsed" type="submit"
														data-bs-toggle="collapse"
														data-bs-target="#flush-collapse${ inquiryList.id }"
														aria-expanded="false"
														aria-controls="flush-collapse${ inquiryList.id }">
														${ inquiryList.title } (${ inquiryList.board_name }) 문의 일자
														: ${ inquiryList.written_date }</button>
												</form:form>
											</h2>
											<div id="flush-collapse${ inquiryList.id }"
												class="accordion-collapse collapse"
												aria-labelledby="flush-heading${ inquiryList.id }"
												data-bs-parent="#accordionFlushExample_3">
												<div class="accordion-body">
													<div class="replyTitle${ inquiryList.id }"></div>
													<div class="card p-3 mt-3 replyBody${ inquiryList.id }"></div>
												</div>
											</div>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>

							<div class="nonComList" style="display: none;">
								<div class="d-flex justify-content-center mt-3"
									style="display: flex; align-items: center;">
									<img alt="" src="/icon/warning.png" width="40px" height="40px">
									해당하는 내용이 없습니다.
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