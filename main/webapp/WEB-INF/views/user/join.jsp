<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
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
					class="form-control" id="uid" name="uid" placeholder="ID" required>
			</div>
			<div class="form-group row">
				<div class="col-xs-2">
					<button type="button" class="btn btn-success btn-sm" id="checkId">
						중복확인</button>
				</div>
				<div class="col-xs-6">
					<p class='form-control-static' id="checkIdTag"></p>
				</div>
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
					class="form-control" name="name" placeholder="이름을 입력해 주세요" required>
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
<%@include file="../include/footer.jsp"%>
<script type="text/javascript">
	var result = '${result}';
	if (result == "fail") {
		alert("회원가입 실패!!");
	}
	var check1 = false;
	var check2 = false;

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

	$("#submitBtn").click(function() {
		if (check1 && check2) {
			var birthdate = '';
			birthdate += $("#InputYear").val();
			birthdate += $("#InputMonth").val();
			birthdate += $("#InputDay").val();
			$("#birthdate").val(birthdate);

			$("#joinform").submit();
		}
	});

	$("#checkId").click(function() {
		var uid = $('#uid').val();
		$.ajax({
			type : 'get',
			url : '/user/checkId/' + uid,
			dataType : 'text',
			success : function(data) {
				if (data == 'success') {
					check2 = true;
					$("#checkIdTag").text("사용 가능한 아이디입니다.");
					$("#checkIdTag").css("color", "green");
				} else {
					check2 = false;
					$("#checkIdTag").text("이미 사용중인 아이디입니다.");
					$("#checkIdTag").css("color", "red");
				}
			}
		});

	});
</script>
