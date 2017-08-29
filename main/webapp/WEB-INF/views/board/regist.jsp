<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<style>
.fileDrop {
	width: 80%;
	height: 100px;
	border: 1px dotted gray;
	background-color: lightslategrey;
	margin: auto;
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
<!-- 시작 -->
<h1 class="text-center">FoodShare!</h1>
<div class="container">
	<div class="row">
		<div
			class="col-lg-10 col-lg-offset-1 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
			<div class="well well-lg">
				<form role="form" method="post" action="/board/regist"
					enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="title"> 제목</label> <input type="text"
									class="form-control" id="id" name="title" placeholder="제목"
									required="required" />
							</div>
							<div class="form-group">
								<label for="writer"> 공유자</label> <input type="text"
									class="form-control" id="writer" name="writer"
									value="${login.uid}" readonly />
							</div>
							<div class="form-group">
								<label for="category"> 식자재 범주</label> <select id="category"
									name="category" class="form-control" required="required">
									<option value="meet" selected="">육류</option>
									<option value="fish">어패류</option>
									<option value="vegetable">채소류</option>
									<option value="apple">과일류</option>
									<option value="can">가공식품</option>
								</select>
							</div>
							<div class="form-group">
								<label for="target"> 공유식자재</label> <input type="text"
									class="form-control" id="target" name="target"
									placeholder="공유할 식자재" required="required" />
							</div>
							<div class="form-group">
								<label for="status"> 식자재 상태</label> <select id="status"
									name="status" class="form-control" required="required">
									<option value="top" selected>상</option>
									<option value="middle">중</option>
									<option value="low">하</option>
								</select>
							</div>
							<div class="form-group">
								<label for="splace"> 공유장소</label> <select id="splace"
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
								<label for="duedate"> 공유기한</label> <input type="date"
									class="form-control" name="duedate" />
							</div>

						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="content"> 내 용</label>
								<textarea name="content" id="content" class="form-control"
									rows="10" cols="30" required="required" placeholder="내용을 입력하세요."></textarea>
							</div>
							<div class="form-group uploadform">
								<label for="file"> 사진첨부</label>
								<input type="file" id='file' name="file" class="form-control" onChange="uploadform(this)" accept="image/*">
							</div>
							<div class="form-group">
								<select class="form-control" id="filesList" size='4'>
								</select>
							</div>
							<button type="button" id="btn_removeFile" class="btn btn-danger btn-xs pull-right">삭제</button>
						</div>

					</div>
					<div class="row">
						<div
							class="col-md-4 col-md-offset-8 col-sm-5 col-sm-offset-7 col-xs-7 col-xs-offset-3">
							<button type="submit" class="btn btn-primary" id="btnContactUs">등록</button>
							<button type="button" class="btn btn-warning" id="btn_cancel">취소</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>
<script>
	$("#btn_cancel").click(function() {
		location.href = "/board/list";
	});
	
	function uploadform(obj){
		var filePath = obj.value;
		var fileName = filePath.substr(filePath.lastIndexOf('\\')+1);
		
		$(obj).addClass(fileName);
		obj.style.display='none';
		
		var str = "<input type='file' id='file' name='file' class='form-control' onChange='uploadform(this)' accept='image/*' >";
		$(".uploadform").append(str);
		
		var str2 = "<option class='"+fileName+"' value='"+fileName+"'>"+fileName+"</option>";
		$("#filesList").append(str2);		
	}
	
	$("#btn_removeFile").click(function(){
		
	});
</script>