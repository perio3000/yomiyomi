<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
<jsp:include page="header.jsp"></jsp:include>

<meta charset="UTF-8">
<title>공지사항</title>

<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/announcement.css">
</head>
<body>
   <main class="container">
   	<br>
   	
   		<div class="row">
   			<div class="col-md-3">
	   			<div class="row title">
		   			&nbsp;고객센터
		   		</div>
		   		<br>
		   		<div class="notice">메인</div>
		   		<!-- 파일 만들고 하이퍼링크 다시 걸어주기;v; 
		   			 이거 틀 몇페이지에는 이용할거니까 잘 냅두기-->
		   		<div>
					<a href="FAQ" class="qnaMenu">자주 묻는 질문</a><br>
					<a href="#" class="qnaMenu">회원</a><br>
					<a href="#" class="qnaMenu">도서/상품정보</a><br>
					<a href="#" class="qnaMenu">주문/결제</a><br>
					<a href="#" class="qnaMenu">배송</a><br>
					<a href="#" class="qnaMenu">반품/교환/환불</a><br>
					<a href="#" class="qnaMenu">세금계산서/증빙</a><br>
					<a href="#" class="qnaMenu">기타</a><br>
					<a href="#" class="qnaMenu">eBook</a><br>
					<br>
					<a href="#" class="notice">1:1문의</a><br>
					<a href="1by1qna" class="qnaMenu">1:1문의 접수</a><br>
					<a href="#" class="qnaMenu">1:1문의 내역</a><br>
					<br>
					<a href="#" class="notice">공지사항</a><br>
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
   				<div class="col-md-3 notice">공지사항</div>
				
				<div class="d-flex justify-content-center align-items-center" style="height: 150px; background-color: #F4EEFF;">
					<div class="">
						<input class="form-control" type="text" placeholder="공지사항을 검색해보세요." aria-label="default input example">
					</div>
					<div class="">
					  	<button type="button" class="btn">검색</button>
					</div>
				</div>
				<br>
				
   			  	<br>

				<div>



					<table>
						<tr>
							<td> 번호 </td>
							<td> ${notice_view.user_id} </td>
						</tr>

						<tr>
							<td> 제목 </td>
							<td> ${notice_view.title} </td>
						</tr>
						<tr>
							<td> 작성자 </td>
							<td> ${notice_view.user_id} </td>
						</tr>
						<tr>
							<td> 작성일 </td>
							<td> ${notice_view.written_date}</td>
						</tr>
						<tr>
							<td> 내용 </td>
							<td> ${notice_view.content}</td>
						</tr>


					</table>





				</div>

				<br>
				<br>
   				
   			  	<br>
   			  	<div class="row">
				<a class="col count">100건</a>
				</div>
				<div class="row">
					<div class="col-md-12">
						<table class="table announcement" style="text-align: center; border: 1px solid #F4EEFF ">
							<thead>
								<tr>
									<th style="background-color: #F4EEFF; text-align: center;">번호</th>
									<th style="background-color: #F4EEFF; text-align: center; width:300px;">제목</th>
									<th style="background-color: #F4EEFF; text-align: center;">작성자</th>
									<th style="background-color: #F4EEFF; text-align: center;">작성일</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="notice" items="${notice_john}">
								<tr>
									<td>${notice.id}</td>
									<td>
									<a href="content_view?id=${notice.id}">${notice.title}</a>
									</td>
											<%--
									<td>
										<c:forEach begin="1" end="${notice.bindent}">[Re]</c:forEach>
										<a href="content_view?id=${notice.id}">${notice.title}</a>
										<!--bindent : 가로 (댓글이 보이는 순서 때문에 들어간 것)-->
									</td>
									--%>
									<td>${notice.user_id}</td>
									<td>${notice.written_date}</td>
								</tr>
							</c:forEach>



							</tbody>
						</table>



						<c:if test="${pageMaker.prev}">
							<a href="list2${pageMaker.makeQuery(pageMaker.startPage - 1) }">«</a>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
							<%-- <c:out value="${pageMaker.cri.pageNum == idx?'':''}" /> --%>
							<a href="list2${pageMaker.makeQuery(idx)}">${idx}</a>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<a href="list2${pageMaker.makeQuery(pageMaker.endPage +1) }"> » </a>
						</c:if> <br>



					</div>
				</div>
			</div>				
		</div>	
		<br><br>	
	</main>
</body>
</html>