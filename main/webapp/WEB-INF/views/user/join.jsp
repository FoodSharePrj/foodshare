<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta content-type="text/html; charset=utf-8">
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
				<a class="navbar-brand navbar-link" href="/"> <img
					src="/resources/img/logo.jpg" id="logo"> <span
					class="hidden-sm"><strong>FoodShare Project</strong></span>
				</a>
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


	<div class="container">
		<div class="page-header">
			<h1>
				회원가입 <small>basic form</small>
			</h1>
		</div>
		<div class="col-md-6 col-md-offset-3">
			<form role="form" id="joinform" method="post" action="/user/join">
				<div class="form-group ">
					<label for="InputId">ID</label> <input type="text"
						class="form-control" name="uid" placeholder="ID" required>
				</div>
				<div class="form-group ">
					<label for="InputPassword1">비밀번호</label> <input type="password"
						class="form-control" name="upw" id="upw" placeholder="비밀번호"
						required>
				</div>
				<div class="form-group">
					<label for="InputPassword2">비밀번호 확인</label> <input type="password"
						class="form-control" id="upw2" placeholder="비밀번호 확인" required>

				</div>
				<div class="form-group col-sm-12">
					<p id="repw"></p>
				</div>

				<div class="form-group">
					<label for="InputUsername">이름</label> <input type="text"
						class="form-control" name="name" placeholder="이름을 입력해 주세요"
						required>
				</div>

				<div class="form-group">
					<label for="InputBirth">생년월일</label>
				</div>

				<div class="form-group row">
					<div class="col-xs-2">
						<input type="text" class="form-control " id="InputYear"
							placeholder="년" onkeydown="onlyNumber(this)" maxlength="4"
							oninput="maxLengthCheck(this)" required>
					</div>
					<div class="col-xs-1">
						<label>년</label>
					</div>
					<div class="col-xs-2">
						<input type="text" class="form-control " id="InputMonth"
							placeholder="월" onkeydown="onlyNumber(this)"
							oninput="maxLengthCheck(this)" maxlength="2" max="12" required>
					</div>
					<div class="col-xs-1">
						<label>월</label>
					</div>
					<div class="col-xs-2">
						<input type="text" class="form-control" id="InputDay"
							placeholder="일" onkeydown="onlyNumber(this)"
							oninput="maxLengthCheck(this)" maxlength="2" required>
					</div>
					<div class="col-xs-1">
						<label>일</label>
					</div>

				</div>
				<input type="hidden" name="birthdate" id="birthdate">

				<div class="form-group">
					<label for="InputGender">성별</label>
				</div>
				<div class="form-group row">
					<div class="col-xs-1">
						<input type="radio" name="gender" id="InputGender" value="남"
							checked>
					</div>
					<div class="col-xs-1">
						<label>남</label>
					</div>
					<div class="col-xs-1">
						<input type="radio" name="gender" id="InputGender" value="여">
					</div>
					<div class="col-xs-1">
						<label>여</label>
					</div>
				</div>

				<div class="form-group">
					<label for="InputPhoneNumber">휴대폰 번호</label>
				</div>
				<div class="form-group row">
					<div class="col-lg-10">
						<input type="phone" class="form-control onlyNumber" name="phone"
							placeholder="-를 제외하고 숫자만 입력하세요." onkeydown="onlyNumber(this)"
							oninput="maxLengthCheck(this)" maxlength="11" required>
					</div>
				</div>


				<div class="form-group">
					<label for="InputEmail">이메일 주소</label>
				</div>
				<div class="form-group row">
					<div class="col-md-5">
						<input type="email" class="form-control" name="email" required>
					</div>
				</div>

				<div class="form-group">
					<label for="InputAdress">자택 주소</label>
				</div>
				<div class="form-group row">
					<div class="col-lg-10">
						<input type="text" class="form-control" name="addr"
							placeholder="주소를 입력하세요." required>
					</div>
				</div>

				<div class="form-group text-center">
					<button type="submit" id="submitBtn" class="btn btn-info">
						회원가입<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="button" class="btn btn-warning" id="cancleBtn">
						가입취소<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
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
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.9.0/js/lightbox-plus-jquery.min.js"></script>
	<script type="text/javascript">
		var result = '${result}';
		if(result=="fail"){
			alert("회원가입 실패!!");
		}
		var check1 = false;
	
		function onlyNumber(obj) {
			$(obj).keyup(function() {
				$(this).val($(this).val().replace(/[^0-9]/g, ""));
			});
		}
	
		$("#cancleBtn").click(function() {
			location.href = "/";
		});
	
		$("#upw2").blur(function() {
			var a = $("#upw").val();
			var b = $("#upw2").val();
			if (a != b) {
				$("#repw").text("패스워드가 일치하지 않습니다");
				$("#repw").css("color", "red");
			} else {
				$("#repw").text("패스워드가 일치합니다");
				$("#repw").css("color", "green");
				check1 = true;
			}
		});
	
		function maxLengthCheck(object) {
			if (object.value.length > object.maxLength) {
				object.value = object.value.slice(0, object.maxLength);
			}
		}
		
		$("#submitBtn").click(function(){
			if (check1) {
				var birthdate = '';
				birthdate += $("#InputYear").val();
				birthdate += $("#InputMonth").val();
				birthdate += $("#InputDay").val();
				$("#birthdate").val(birthdate);
				
				$("#joinform").submit();
			}
		});
		
	</script>

</body>
</html>