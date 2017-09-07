<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="./include/header.jsp"%>

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
<div class="dark-section">
	<div class="container site-section" id="why">
		<h1>WHAT WE DO</h1>
		<div class="row">
			<div class="col-md-4 item">
				<i class="fa fa-tree"></i>
				<h2>음식물 쓰레기 감소</h2>
				<p>저희는 버려지는 음식들이 그것을 필요로 하는 사람들에게 공유되도록 기여하고 있습니다.</p>
			</div>
			<div class="col-md-4 item">
				<i class="fa fa-heart"></i>
				<h2>공유문화 확산</h2>
				<p>버려야 하는 사람과 필요로 하는 사람들을 쉽게 연결해 줍니다.</p>
			</div>
			<div class="col-md-4 item">
				<i class="fa fa-calculator"></i>
				<h2>자원의 효율적 사용</h2>
				<p>1인 가구 시대, 버려지는 것들에 대한 해결책이 될 수 있습니다.</p>
			</div>
		</div>
	</div>
</div>
<div class="container site-section" id="welcome">
	<h1>Recent Shared Food</h1>
	<div class="row">
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="/resources/img/dessert01.jpg" target="_blank"
					data-lightbox="foods"><img class="img-responsive"
					src="/resources/img/dessert01.jpg"></a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="/resources/img/dessert02.jpg" target="_blank"
					data-lightbox="foods"><img class="img-responsive"
					src="/resources/img/dessert02.jpg"></a>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<a href="/resources/img/dessert03.jpg" target="_blank"
					data-lightbox="foods"><img class="img-responsive"
					src="/resources/img/dessert03.jpg"></a>
			</div>
		</div>
	</div>
</div>
<%@include file="./include/footer.jsp"%>
<script>
	var result = '${msg}';
	if (result == 'success') {
		alert("처리가 완료 되었습니다.");
	}
</script>