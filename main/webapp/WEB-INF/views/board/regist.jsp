<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Test</title>
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway:400,700">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cookie">
<link rel="stylesheet" href="/resources/fonts/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.9.0/css/lightbox.min.css">
<link rel="stylesheet" href="/resources/css/Pretty-Footer.css">
<link rel="stylesheet" href="/resources/css/styles.css">
</head>
<style type="text/css">
.navbar {
	margin-bottom: 0px;
}
</style>
<body>
	<!-- 상단 메뉴 시작 -->
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand navbar-link" href="/"><img
					src="/resources/img/logo.jpg" id="logo"><strong>FoodShare
						Project</strong></a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<form class="navbar-form navbar-left hidden-sm hidden-md">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="내용을 입력하세요">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">검색</button>
							</span>
						</div>
					</form>
					<li class="active" role="presentation"><a href="/">푸드쉐어</a></li>
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">지역별 검색<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/board/list"> 서울/인천</a></li>
								<li><a href="/board/list"> 경기/강원</a></li>
								<li><a href="/board/list"> 대전/충청</a></li>
								<li><a href="/board/list"> 부산/울산/경남</a></li>
								<li><a href="/board/list"> 대구/경북</a></li>
								<li><a href="/board/list"> 광주/전라</a></li>
								<li><a href="/board/list"> 제주도</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">종류별 검색<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="/board/list"> 육류</a></li>
								<li><a href="/board/list"> 어패류</a></li>
								<li><a href="/board/list"> 채소류</a></li>
								<li><a href="/board/list"> 과일류</a></li>
								<li><a href="/board/list"> 가공식품</a></li>
							</ul></li>
					</ul>
					<li role="presentation"><a href="/user/login">로그인</a></li>
					<li role="presentation"><a href="/user/join">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 검색창(큰화면, 스마트폰화면 미표시) -->
	<div class="container hidden-xs hidden-lg">
		<form class="navbar-form">
			<div class="container input-group">
				<input type="text" class="form-control" placeholder="내용을 입력하세요">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">검색</button>
				</span>
			</div>
		</form>
	</div>
	<!-- 검색창 끝 -->
	<!-- 상단 메뉴 끝 -->
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
	<!-- 시작 -->
	<h1 class="text-center">글 쓰기</h1>
	<div class="container">
		<div class="row">
			<div
				class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
				<div class="well well-sm">
					<form role="form" method="post" action="/board/regist">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="title"> TITLE</label> <input type="text"
										class="form-control" id="id" name="title" placeholder="Title"
										required="required" />
								</div>
								<div class="form-group">
									<label for="writer"> WRITER</label> <input type="text"
										class="form-control" id="writer" name="writer" placeholder="writer"
										required="required" />
								</div>

								<div class="form-group">
									<label for="target"> Target</label> <input type="text"
										class="form-control" id="target" name="target" placeholder="target"
										required="required" />
								</div>

								<div class="form-group">
									<label for="subject"> Place</label> <select id="splace"
										name="splace" class="form-control" required="required">
										<option value="seoul" selected="">서울/인천</option>
										<option value="gyunggi">경기/강원</option>
										<option value="daejeon">대전/충청</option>
										<option value="boosan">부산/울산/경남</option>
										<option value="dagoo">대구/경북</option>
										<option value="gwangjoo">광주/전라</option>
										<option value="jejoo">제주</option>
									</select>
								</div>
								<div class="form-group">
									<label for="subject"> Category</label> <select id="category"
										name="category" class="form-control" required="required">
										<option value="meet" selected="">육류</option>
										<option value="fish">어패류</option>
										<option value="vegetable">채소류</option>
										<option value="apple">과일류</option>
										<option value="can">가공식품</option>
									</select>
								</div>

								<div class="form-group">
									<label for="subject"> Status</label> <select id="status"
										name="status" class="form-control" required="required">
										<option value="top" selected="">상</option>
										<option value="middle">중</option>
										<option value="low">하</option>
									</select>
								</div>

								<div class="form-group">
									<label for="duedate"> Duedate</label> <input type="date"
										class="form-control" name="duedate"/>
								</div>

							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="name"> Content</label>
									<textarea name="content" id="content" class="form-control"
										rows="9" cols="30" required="required" placeholder="Content"></textarea>
								</div>
							</div>
							<div class="col-md-12">
								<button type="submit" class="btn btn-primary pull-right"
									id="btnContactUs">등록</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>






	<footer class="hidden-sm hidden-xs">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6 footer-navigation">
					<h3>
						<a href="#">FoodShare Project</a>
					</h3>
					<p class="links">
						<a href="#">Home</a><strong> · </strong><a href="#">FoodShare
						</a><strong> · </strong><a href="#">MyPage </a><strong> · </strong><a
							href="#">Contact</a>
					</p>
					<p class="company-name">FoodShare Project © 2017</p>
				</div>
				<div class="col-md-4 col-sm-6 footer-contacts">
					<div>
						<span class="fa fa-map-marker footer-contacts-icon"> </span>
						<p>
							<span class="new-line-span">21 Revolution Street</span> Paris,
							France
						</p>
					</div>
					<div>
						<i class="fa fa-phone footer-contacts-icon"></i>
						<p class="footer-center-info email text-left">+1 555 123456</p>
					</div>
					<div>
						<i class="fa fa-envelope footer-contacts-icon"></i>
						<p>
							<a href="#" target="_blank">support@company.com</a>
						</p>
					</div>
				</div>
				<div class="clearfix visible-sm-block"></div>
				<div class="col-md-4 footer-about">
					<h4>About the company</h4>
					<p>Lorem ipsum dolor sit amet, consectateur adispicing elit.
						Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
					</p>
					<div class="social-links social-icons">
						<a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i
							class="fa fa-twitter"></i></a><a href="#"><i
							class="fa fa-linkedin"></i></a><a href="#"><i
							class="fa fa-github"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<script src="/resources/js/jquery.min.js"></script>
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.9.0/js/lightbox-plus-jquery.min.js"></script>

</body>

</html>