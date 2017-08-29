<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>

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
								<label for="splace1"> 공유 장소 입력</label>
								<input type="button" class="btn btn-sm btn-info pull-right" onclick="addr()" value="위치 선택">							
								<input type="text" id="splace1" name="splace1" class="form-control" placeholder="시ㆍ도">								
								<input	type="text" id="splace2" name="splace2" class="form-control" placeholder="구ㆍ군">
								<input type="text" id="splace3" name="splace3" class="form-control" placeholder="동ㆍ면">
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
								<label for="file"> 사진첨부</label> <input type="file" name="file"
									class="form-control" onChange="uploadform(this)"
									accept="image/*">
							</div>
							<div class="form-group">
								<select class="form-control" id="filesList" size='4'>
								</select>
							</div>
							<button type="button" id="btn_removeFile"
								class="btn btn-danger btn-xs pull-right">삭제</button>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	
	function uploadform(obj) {
		var filePath = obj.value;
		var fileNameWithFormat = filePath.substr(filePath.lastIndexOf('\\') + 1);
		var fileName = fileNameWithFormat.slice(0, fileNameWithFormat.lastIndexOf('.'));
		var formatName = fileNameWithFormat.substr(fileNameWithFormat.lastIndexOf('.') + 1);
		var pattern = /jpg|gif|png|jpeg/i;
		
		$(obj).attr("id", fileName + "_" + formatName);
		obj.style.display = 'none';

		var str = "<input type='file' name='file' class='form-control' onChange='uploadform(this)' accept='image/*' >";
		$(".uploadform").append(str);

		if (pattern.test(formatName)) {
			var str2 = "<option value='" + fileNameWithFormat + "'>" + fileNameWithFormat + "</option>";
			$("#filesList").append(str2);
		} else {
			$(obj).remove();
		}
	}

	$("#btn_removeFile").click(function() {
		var fileNameWithFormat = $("#filesList option:selected").text();
		var fileName = fileNameWithFormat.slice(0, fileNameWithFormat.lastIndexOf('.'));
		var formatName = fileNameWithFormat.substr(fileNameWithFormat.lastIndexOf('.') + 1);

		$("#filesList option:selected").remove();
		$("#" + fileName + "_" + formatName).remove();
	});

	$("#btn_cancel").click(function() {
		location.href = "/board/list";
	});
</script>
<script>
   function addr() {
      new daum.Postcode({
         oncomplete : function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var fullAddr1 = ''; // 최종 주소 변수1
            var fullAddr2 = ''; // 최종 주소 변수2
            var fullAddr3 = ''; // 최종 주소 변수3
            var extraAddr = ''; // 조합형 주소 변수

            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
               fullAddr1 = data.sido;
               fullAddr2 = data.sigungu;
               fullAddr3 = data.bname;

            } else { // 사용자가 지번 주소를 선택했을 경우(J)
               fullAddr1 = data.sido;
                fullAddr2 = data.sigungu;
                fullAddr3 = data.bname;
            }

            document.getElementById('splace1').value = fullAddr1;
            document.getElementById('splace2').value = fullAddr2;
            document.getElementById('splace3').value = fullAddr3;
         }
      }).open();
   }
</script>