<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="/resources/css/Login-Center.css">
<style type="text/css">
.row-login {
	margin-bottom: 40px;
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
	<div class="row row-login">
		<div
			class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
			<h1 class="text-center">FoodShare</h1>
			<div class="well well-lg">
				<h3 class="text-danger">Login</h3>
				<form action='loginPost' method="post" accept-charset="UTF-8">
					<div class="input-group">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-user"></span>
						</span> <input class="form-control" id='uid' name='uid' type="text"
							maxlength="15" placeholder="ID" autofocus="autofocus">
					</div>
					<div class="input-group">
						<span class="input-group-addon"> <span
							class="glyphicon glyphicon-lock"></span>
						</span> <input class="form-control" type="password" id='upw' name='upw'
							maxlength='15' placeholder="PASSWORD">
					</div>
					<div class="form-group">
						<div class="checkbox">
							<label class="control-label"> <input type="checkbox"
								id='useCookie' name='useCookie'><strong>로그인 상태
									유지</strong>
							</label>
						</div>
					</div>
					<button class="btn btn-success btn-block" type="submit">
						<strong>LOGIN</strong>
					</button>
					<a class="btn btn-link center-block" role="button"
						href="/user/join"><strong>회원가입</strong></a>
				</form>
			</div>
		</div>
	</div>
</div>
<%@include file="../include/footer.jsp"%>
<script type="text/javascript">
	var result = '${result}';
	if (result == "success") {
		alert("회원가입 성공!!");
	}
</script>