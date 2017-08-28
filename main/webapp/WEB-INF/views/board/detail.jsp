<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>

<div id="promo">
	<div class="jumbotron">
		<h1>Start Food Share</h1>
		<p>나눔을 시작해 보세요. 지금 버리려는 것이 누군가에겐 필요합니다!</p>
		<p>
			<a class="btn btn-info btn-lg" role="button" href="/board/list">Let's
				Share</a>
		</p>
	</div>
</div>
<div class="container" id="detail">
	<div class="row">
		<div class="col-md-6 thumbnail">
			<img src="/resources/img/jumbo1.jpg" alt="...">
		</div>
		<div class="col-md-6">
			<table class="table">
				<thead>
					<tr>
						<th>상품명</th>
						<th>상품명글제목</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>작성자</th>
						<th>작성자아이디</th>
					</tr>
					<tr>
						<th>카테고리</th>
						<th>카테고리내용</th>
					</tr>
					<tr>
						<th>지역</th>
						<th>지역명</th>
					</tr>
					<tr>
						<th>기한</th>
						<th>유통기한날짜</th>
					</tr>
				</tbody>
			</table>
			<!-- 데스크톱 화면 전용 버튼 -->
			<button class="btn btn-success btn-lg btn-block hidden-sm hidden-xs"
				type="submit">나눔신청하기</button>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">상세정보 글내용</div>
	</div>
	<div class="row hidden-lg hidden-md" id="btnmobile">
		<!-- 스마트폰 화면 전용 버튼 -->
		<button class="btn btn-success btn-lg btn-block hidden-lg hidden-md"
			type="submit">나눔신청하기</button>
	</div>
</div>
<%@ include file = "../include/footer.jsp" %>