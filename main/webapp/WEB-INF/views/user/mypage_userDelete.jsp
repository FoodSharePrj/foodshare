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
	<div class="hidden-xs col-sm-3">
        <div class="fading-side-menu" data-spy="affix" data-offset-top="350" id="li">
            <h2>My Page</h2><hr class="no-margin">
            <ul class="list-unstyled">
                <li><a href="/user/mypage_shareState"> <span
						class="fa fa-angle-double-right text-primary"></span>공유현황
				</a></li>
				<li><a href="/user/mypage_applyState"> <span
						class="fa fa-angle-double-right text-primary"></span>신청현황
				</a></li>
				<li><a href="/user/mypage_userModify"> <span
						class="fa fa-angle-double-right text-primary"></span>회원정보 수정
				</a></li>
				<li><a href="/user/mypage_userDelete"> <span
						class="fa fa-angle-double-right text-primary"></span>회원탈퇴
				</a></li>
            </ul>
        </div>
    </div>
	<div class="col-md-6 col-md-6"><br><br><br>
		<form id="deleteForm" role="form" method="post" action="/user/userdelete">
			<div class="container">
				<label for="InputPassword1">비밀번호</label><br>
				<input type="password" name="upw" id="upw" placeholder="비밀번호">
				<input type="hidden" name="uid" id="uid" value="${login.uid}">
				<button type="submit" id="submitBtn" class="btn btn-info">회원탈퇴<i class="fa fa-check spaceLeft"></i>	</button>
				<button type="button" id="cancelBtn" class="btn btn-warning">취소<i class="fa fa-check spaceLeft"></i>	</button>
			</div>
		</form>
	</div>
</div>
<%@include file="../include/footer.jsp"%>

<script>
$(function(){
	$("#submitBtn").click(function(e){
		e.preventDefault();
		var session_upw = "${login.upw}";
		var upw = $('#upw').val();
		
		if(session_upw==upw){
			
			if(confirm("[탈퇴]를 진행하시겠습니까?")==true){
					$("#deleteForm").submit();
			}
		}else{
			alert("비밀번호가 일치하지 않습니다.");
		}		
	});
	
	$("#cancelBtn").click(function(){
		location.href="/user/mypage";
	});
});

</script>
