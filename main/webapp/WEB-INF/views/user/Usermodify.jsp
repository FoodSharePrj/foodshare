<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="/resources/css/Login-Center.css">
<style>
.fading-side-menu.affix-top {
    opacity: 1;
    transition: opacity 1s
}
.fading-side-menu.affix {
    top: 11.5px;
}
.fading-side-menu.affix {
    opacity: 0.2;
    transition: opacity 5s
}
.fading-side-menu.affix:hover {
    opacity: 1;
    transition: opacity 0.3s
}
.fading-side-menu a {
    color: rgb(102, 102, 102);
    font-size:20px;
}
.fading-side-menu a .fa {
    padding-right:15px;
}
.title {
    font-weight: 700;
    margin-top: 0px;
}

p.small.text-muted {
    margin-bottom: 0px;
}

.lead {
    font-style: italic;
}

.no-margin {
    margin: 20px !important;
}

.vertical-center {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
}
</style>
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
	<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
	<div class="hidden-xs col-sm-3">
        <div class="fading-side-menu" data-spy="affix" data-offset-top="350" id="li">
            <h2>My Page</h2><hr class="no-margin">
            <ul class="list-unstyled">
                <li>
                    <a href="#intro">
                        <span class="fa fa-angle-double-right text-primary"></span>공유현황
                    </a>
                </li><br>
                <li>
                    <a href="#getting-started">
                        <span class="fa fa-angle-double-right text-primary"></span>신청현황
                    </a>
                </li><br>
                <li>
                    <a href="/user/Usermodify">
                        <span class="fa fa-angle-double-right text-primary"></span>회원정보 수정
                    </a>
                </li><br>
                <li>
                    <a href="/user/Userdelete">
                        <span class="fa fa-angle-double-right text-primary"></span>회원탈퇴
                    </a>
                </li>
            </ul>
        </div>
    </div>
	<div class="col-md-6 col-md-6" id="joinform1">
		<form role="form" id="joinform" method="post" action="/user/Usermodify">
			<div class="form-group ">
				<label for="InputId">ID</label>
				<input type="text" class="form-control" id="uid" name="uid" value="${login.uid}" readonly>
			</div>
			
			<div class="form-group">
				<label for="InputPassword1">비밀번호</label>
				<input type="password" class="form-control" name="upw" id="upw" value="${login.upw}" required>
			</div>
			
			<div class="form-group">
				<label for="InputPassword2">비밀번호 확인</label>
				<input type="password" class="form-control" id="upw2" placeholder="비밀번호 확인" required>
			</div>
			<div class="form-group col-sm-12">
				<p id="repw"></p>
			</div>
			<div class="form-group">
				<label for="InputUsername">이름</label>
				<input type="text" class="form-control" name="name" value="${login.name}" readonly>
			</div>

			<div class="form-group">
				<label for="InputPhoneNumber">휴대폰 번호</label>
			</div>
			<div class="form-group row">
				<div class="col-lg-10">
					<input type="phone" class="form-control onlyNumber" name="phone"
						value="${login.phone}" onkeydown="onlyNumber(this)"
						oninput="maxLengthCheck(this)" maxlength="11" required>
				</div>
			</div>


			<div class="form-group">
				<label for="InputEmail">이메일 주소</label>
			</div>
			<div class="form-group row">
				<div class="col-md-5">
					<input type="email" class="form-control" name="email" value="${login.email}" required>
				</div>
			</div>

			<div class="form-group">
				<label for="InputAdress">자택 주소</label>
			</div>
			<div class="form-group row">
				<div class="col-lg-10">
					<input type="text" class="form-control" name="addr"
						value="${login.addr}" required>
				</div>
			</div>

			<div class="form-group text-center">
				<button type="submit" id="submitBtn" class="btn btn-info">
					저장<i class="fa fa-check spaceLeft"></i>
				</button>
				<button type="button" class="btn btn-warning" id="cancleBtn">
					취소<i class="fa fa-times spaceLeft"></i>
				</button>
			</div>
		</form>
	</div>
</div>
<%@include file="../include/footer.jsp"%>

<script>
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
</script>
