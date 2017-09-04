<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<meta content-type="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
body {
	padding-top: 70px;
}
</style>
<body>
	<!-- 상단 메뉴 시작 -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand navbar-link" href="/"><img
					src="/resources/img/sharing.png" id="logo"><strong>FoodShare
						Project</strong></a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right loginchange">
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
					<c:if test="${empty login}">
						<li role="presentation"><a href="/user/login">로그인</a></li>
						<li role="presentation"><a href="/user/join">회원가입</a></li>
					</c:if>
					<c:if test="${not empty login}">
						<li role="presentation"><a href="/user/mypage">MyPage</a></li>
						<li role="presentation"><a href="/user/logout">Logout</a></li>
					</c:if>
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