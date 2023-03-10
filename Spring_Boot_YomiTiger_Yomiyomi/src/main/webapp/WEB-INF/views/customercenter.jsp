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
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script> -->
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">

<meta charset="UTF-8">
<title>고객센터</title>
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/customercenter.css">
</head>
<body>
   <main class="container">
   	<br>
   	
   		<div class="row">
   			<div class="col-md-3">
	   			<a href="/notice/customercenter" class="title">
		   			고객센터
		   		</a>
		   		<br>
		   		<br>
		   		<div class="notice">메인</div>
		   		<!-- 파일 만들고 하이퍼링크 다시 걸어주기;v; 
		   			 이거 틀 몇페이지에는 이용할거니까 잘 냅두기-->
		   		<div>

<%--
					<a href="FAQ" class="qnaMenu">자주 묻는 질문</a><br>
					<a href="#" class="qnaMenu">회원</a><br>
					<a href="#" class="qnaMenu">도서/상품정보</a><br>
					<a href="#" class="qnaMenu">주문/결제</a><br>
					<a href="#" class="qnaMenu">배송</a><br>
					<a href="#" class="qnaMenu">반품/교환/환불</a><br>
					<a href="#" class="qnaMenu">세금계산서/증빙</a><br>
					<a href="#" class="qnaMenu">기타</a><br>
					<a href="#" class="qnaMenu">eBook</a><br>
--%>

                <a href="/notice/FAQ" class="qnaMenu">자주 묻는 질문</a><br>
                <a href="/notice/FAQ?category=22" class="qnaMenu">회원</a><br>
                <a href="/notice/FAQ?category=23" class="qnaMenu">도서/상품정보</a><br>
                <a href="/notice/FAQ?category=24" class="qnaMenu">주문/결제</a><br>
                <a href="/notice/FAQ?category=25" class="qnaMenu">배송</a><br>
                <a href="/notice/FAQ?category=26" class="qnaMenu">반품/교환/환불</a><br>
                <a href="/notice/FAQ?category=27" class="qnaMenu">세금계산서/증빙</a><br>
                <a href="/notice/FAQ?category=28" class="qnaMenu">기타</a><br>
                <a href="/notice/FAQ?category=29" class="qnaMenu">eBook</a><br>

					<br>
					<span class="notice">1:1문의</span><br>
					<a href="/notice/qna" class="qnaMenu">1:1문의 접수</a><br>
					<a href="/mypage/inquirylist" class="qnaMenu">1:1문의 내역</a><br>
					<br>
					<a href="/notice/events" class="notice">이벤트</a><br>
					<br>
					<a href="/notice/location" class="notice">오프라인 매장</a><br>
					<br>
					<a href="/notice/announcement" class="notice">공지사항</a><br>
					<br>
					<p class="customerInfo">고객센터 이용안내
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-headset" viewBox="0 0 16 16">
  							<path d="M8 1a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a6 6 0 1 1 12 0v6a2.5 2.5 0 0 1-2.5 2.5H9.366a1 1 0 0 1-.866.5h-1a1 1 0 1 1 0-2h1a1 1 0 0 1 .866.5H11.5A1.5 1.5 0 0 0 13 12h-1a1 1 0 0 1-1-1V8a1 1 0 0 1 1-1h1V6a5 5 0 0 0-5-5z"/>
						</svg></p>
						<a class="custmomerNum">0000-0000</a><a>(유료)</a>
						<p class="customerInfo2">평일 09:00 ~ 18:00</p>
						<p class="customerInfo2">(주말 및 공휴일 휴무)</p>
				</div>
   			</div>
   			
   			<div class="col-md-9">
   			<br><br><br>
   				<div class="col-md-3 notice">자주 묻는 질문</div>
				
				<div class="d-flex justify-content-center align-items-center" style="height: 150px; background-color: #F4EEFF; border-radius: 15px">
					<form action="/notice/searchFAQ" method="get" class="d-flex">
	                <div class="">
	                    <input class="form-control" type="text" name="keyword" placeholder="질문을 검색해보세요."
	                           aria-label="default input example">
	                </div>
	                &nbsp;&nbsp;&nbsp;&nbsp;
	                <div class="">
	                    <button type="submit" class="btn" id="btnSearch">검색</button>
	                </div>
                </form>
				</div>
				<br>
				<div class="d-flex justify-content-center align-items-center" style="height: 150px; border: 1px solid #F4EEFF; border-radius: 15px">
					<table class="table menu">
					  <tbody>
					    <tr>
                        <td><a href="/notice/FAQ?category=22" class="qnaMenu">회원</a></td>
                        <td><a href="/notice/FAQ?category=23" class="qnaMenu">도서/상품정보</a></td>
                        <td><a href="/notice/FAQ?category=24" class="qnaMenu">주문/결제</a></td>
                    </tr>
                    <tr>
                   
                        <td><a href="/notice/FAQ?category=25" class="qnaMenu">배송</a></td>
                        <td><a href="/notice/FAQ?category=26" class="qnaMenu">반품/교환/환불</a></td>
                        <td><a href="/notice/FAQ?category=27" class="qnaMenu">세금계산서/증빙</a></td>
                    </tr>
                    <tr>
                        
                        <td><a href="/notice/FAQ?category=28" class="qnaMenu">기타</a></td>
                        <td><a href="/notice/FAQ?category=29" class="qnaMenu">eBook</a></td>
                    </tr>
					  </tbody>
					</table>
   			  	</div>
   			  	<br>
   				<div class="row notice-area">
   				
	   				<h2 class="notice">1:1 문의</h2>
	   				<div class="row" style="margin: auto;">
						<div class="col-3" style="padding: 0; ">
							<div class="d-flex justify-content-center align-items-center flex-column" style="height: 150px; background-color: #F4EEFF; border-bottom-left-radius: 15px; border-top-left-radius: 15px">
								<div>
									<i class="ri-question-answer-line ri-3x"></i>
								</div>
								<div>
									<a href="qna" class="qnaMenu">1:1문의 접수</a>
								</div>
							</div>
						</div>
						<div class="col-3" id="qnaList">
							<div class="d-flex justify-content-center align-items-center flex-column" style="height: 150px;background-color: #F4EEFF;">
								<div>
									<i class="ri-file-list-3-line ri-3x"></i>
								</div>
								<div>
										<a href="/mypage/inquirylist" class="qnaMenu">1:1문의 내역</a>
								</div>
							</div>
						</div>
						
						<div class="col-6 d-flex justify-content-center flex-column" style="height: 150px; border: 1px solid #F4EEFF; border-bottom-right-radius: 15px; border-top-right-radius: 15px">
							<div class="telConsult">
								전화 상담
							</div>
							<div class="telNumber">
								0000-0000
							</div>
							<div class="qnaMenu">
								평일 09:00 ~ 18:00 (주말 및 공휴일 휴무)
							</div>
						</div>
					</div>
   			  	</div>
   			  	<br>
   			  	<div class="row">
				<div class="col notice">공지사항</div>
				<div class="col d-flex justify-content-end align-items-right"><a href="/notice/announcement">더보기 ></a></div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<table class="table announcement table-hover" style="text-align: center; border: 1px solid #F4EEFF; border-collapse: separate; border-radius: 15px">
							<thead>
								<tr>
									<th style="background-color: #F4EEFF; text-align: center; border-top-left-radius: 15px;">번호</th>
									<th style="background-color: #F4EEFF; text-align: center; width:300px;">제목</th>
									<th style="background-color: #F4EEFF; text-align: center;">작성자</th>
									<th style="background-color: #F4EEFF; text-align: center; border-top-right-radius: 15px;">작성일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="noticeList" items="${ notice }">
									<tr>
										<td>${ noticeList.id }</td>
										<td><a href="/notice/announceread?id=${ noticeList.id }">${ noticeList.title }</a></td>
										<td>${ noticeList.name }</td>
										<td>${ noticeList.written_date }</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>				
		</div>	
		<br><br>	
	</main>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>