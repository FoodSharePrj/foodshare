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
<title>FoodShare</title>
<link rel="icon" type="image/x-icon" href="/resources/img/favicon.ico">
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
::-webkit-scrollbar {
    width: 12px;
}
 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
    border-radius: 10px;
}
 
::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
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
					src="/resources/img/groceries.png" id="logo"><strong>FoodShare
						Project</strong></a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right loginchange">
					
					<li class="active" role="presentation"><a href="/">홈</a></li>
					<li role="presentation"><a href="/board/list">푸드쉐어</a></li>
					<c:if test="${empty login}">
					<li role="presentation"><a href="/user/login">로그인</a></li>
					<li role="presentation"><a href="/user/join">회원가입</a></li>
					</c:if>
					<c:if test="${not empty login}">
					<li role="presentation">
						<a href="/user/mypage">MyPage
						<span class="label label-danger" id="isread"></span></a>
					</li>
					<li role="presentation"><a href="/user/logout">Logout</a></li>
					</c:if>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="iframe-section hide">
		
	</div>
	<!-- 검색창 끝 -->
	<!-- 상단 메뉴 끝 -->