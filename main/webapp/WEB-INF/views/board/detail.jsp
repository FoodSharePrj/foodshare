<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div class="container" id="detail">
	<button class="btn btn-sm btn-primary" id="goList">목록</button>
	<c:if test="${login.uid == boardVO.writer}">
		<button class="btn btn-sm btn-warning" id="modifyBtn">수정</button>
		<button class="btn btn-sm btn-danger" id="deleteBtn">삭제</button>
	</c:if>
	<div class="row">
		<div class="col-md-5">
			<div id="carousel-generic" class="carousel slide">
				<div class="carousel-inner"></div>
				<a class="left carousel-control" href="#carousel-generic"
					data-slide="prev"> <span class="icon-prev"></span>
				</a> <a class="right carousel-control" href="#carousel-generic"
					data-slide="next"> <span class="icon-next"></span>
				</a>
			</div>
		</div>
		<div class="col-md-7">
			<table class="table">
				<tr>
					<th width="100px">제목</th>
					<th>${boardVO.title}</th>
				</tr>
				<tr>
					<th>작성자</th>
					<th>${boardVO.writer}</th>
				</tr>
				<tr>
					<th>종류</th>
					<th>${boardVO.category}</th>
				</tr>
				<tr>
					<th>상태</th>
					<th>${boardVO.status}</th>
				</tr>
				<tr>
					<th>장소</th>
					<th>${boardVO.splace}</th>
				</tr>
				<tr>
					<th>기한</th>
					<th>${boardVO.duedate}</th>
				</tr>
				<tr>
					<th>내용</th>
					<th>${boardVO.content}</th>
				</tr>
			</table>
		</div>
	</div>
	<hr />
	<!-- 댓글 등록 영역 -->
	<div class="row">
		<div class="col-md-12">
			<form class="form-horizontal">
				<div class="box-header">
					<h4 class="text-danger">신청합니다!</h4>
				</div>
				<div class="form-group">
				<c:if test="${not empty login and login.uid eq boardVO.writer}">
				<div class="container">
					<h4 class="text-primary"><u>공유하고자 하는 분을 선택해주세요.</u></h4></a>
				</div>	
				</c:if>
				<c:if test="${not empty login and login.uid ne boardVO.writer}">				
					<label class="col-xs-2 col-md-2 col-lg-2" style="text-align:center" for="newApplyText">
					<img src="/resources/img/apply.png"> ${login.uid}</label>
					<div class="col-xs-8 col-md-8 col-lg-8">
						<input class="form-control" type="text" placeholder="신청내용" id="newApplyText">
					</div>
					<div class="col-xs-2 col-md-2 col-lg-2">
						<button type="button" class="btn btn-primary btn-block" id="applyAddBtn">신청</button>
					</div>
				</div>
				</c:if>
				<c:if test="${empty login}">
				<div class="container">
					<a href="/user/login"><h4 class="text-primary"><u>Login Please</u></h4></a>
				</div>
				</c:if>
			</form>
			<hr/>
			<ul class="well applies-section">
				
			</ul>
		</div>
	</div>
</div>
<!-- Modal -->
<div id="modifyModal" class="modal modal-primary fade" role="dialog">
	<div class="modal-dialog">
		<!-- Modal content -->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">
				 &times;</button>
				 <h4 class="modal-title hide"></h4>
				 <h4>신청내역 수정</h4>
			</div>
			<div class="modal-body" data-rno>
				<p><input type="text" id="modalcontent" class="form-control"></p>
			</div>
			<div class="modal-footer">
				<button type="button"
				 class="btn btn-info" id="applyModBtn">수정</button>
				<button type="button"
				 class="btn btn-danger" id="applyDelBtn">삭제</button>
				<button type="button"
				 class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>

<script>

$(function(){
	
	//선택
	$(".applies-section").on("click","li #selectBtn",function(){
		var selectBtn = $(this);
		var btn_section = selectBtn.parent(".btn-section");
		var aid = ''+btn_section.attr("data-aid");
		var bid = "${boardVO.bid}";
		var writer = "${boardVO.writer}";
		var applicant = btn_section.parent().find(".applicant-section").text();
	
		selectBtn.addClass("hide");
		btn_section.find("#chatBtn").removeClass("hide");
		btn_section.find("#selectCancelBtn").removeClass("hide");
		
		$.ajax({
			type:'post',
			url:'/apply/applySelectClick?writer='+writer,
			headers:{"Content-Type":"application/json"},
			data:JSON.stringify({aid:aid, applicant:applicant,ischoice:'y',bid:bid}),
			dataType:'text',
			success:function(result){	
			}
		});
		
	});
	//취소
	$(".applies-section").on("click","li #selectCancelBtn",function(){
		var cancelBtn = $(this);
		var btn_section = cancelBtn.parent(".btn-section");
		var aid = btn_section.attr("data-aid");
		var bid = "${boardVO.bid}";
		
		cancelBtn.addClass("hide");
		btn_section.find("#chatBtn").addClass("hide");
		btn_section.find("#selectBtn").removeClass("hide");
		
		$.ajax({
			type:'post',
			url:'/apply/applyCancelClick',
			headers:{"Content-Type":"application/json"},
			data:JSON.stringify({aid:aid, ischoice:'n',bid:bid}),
			dataType:'text',
			success:function(result){	
			}
		});
		
	});
	//채팅
	$(".applies-section").on("click","li #chatBtn",function(){
		var selectBtn = $(this);
		var btn_section = selectBtn.parent(".btn-section");
		var aid = btn_section.attr("data-aid");
		var bid = "${boardVO.bid}";
		var uid = "${login.uid}";
		window.open("http://192.168.0.222:3000/chatroom?roomname="+aid+"&uid="+uid, aid,'width=400,heiht=430');
	});
	
	$("#goList").click(function(){
		location.href="/board/list";
	});
	
	$("#modifyBtn").click(function(){
		location.href="/board/modify?bid="+"${boardVO.bid}";
	});
	
	$("#deleteBtn").click(function(){
		var bid = "${boardVO.bid}";
		if(confirm("[삭제]를 진행하시겠습니까?")==true){
			$.ajax({
				type:'post',
				url:'/board/deleteBoard?bid='+bid,
				headers:{"Content-Type":"application/json"},
				dataType:'text',
				success:function(result){
					alert("삭제 완료");
					location.href="/board/list";
				},
				error:function(){
					alert("삭제 실패");
					location.href="/board/detail?bid="+bid;
				}
			});
		}
	});
	
	if(${boardVO.applycnt}>0){
		getList();	
	}
	
	$(".applies-section").on("click",".applyObj",function(){
		var apply = $(this);
		var applytext = apply.find(".apply-content").text();
		var data_aid = apply.attr("data-aid");
		
		$(".modal-title").text(data_aid);
		$("#modalcontent").val(applytext);
	});
	
	$("#applyAddBtn").click(function(){
		var content = $("#newApplyText").val();
		if(content=="" || content.length==0){
			alert("내용을 입력해주세요.");
			return;
		}
		var applicant = "${login.uid}";
		var bid = "${boardVO.bid}";
		
		$.ajax({
			type:'post',
			url:'/apply/insertApplyVO',
			headers:{
				"Content-Type":"application/json",
			},
			data:JSON.stringify({
				applicant:applicant,
				content:content,
				bid:bid
			}),
			dataType:'json',
			success:function(result){
				addApplyObj(result);
				$("#newApplyText").val("");
				$("#newApplyText").attr("readonly","readonly");
			}
		});
	});
	
	$("#applyModBtn").click(function(){
		var aid = $(".modal-title").text();
		var content = $("#modalcontent").val();
		
		$.ajax({
			type:'post',
			url:'/apply/modifyApply/'+aid,
			headers:{"Content-Type":"application/json"},
			data:JSON.stringify({content:content}),
			dataType:'text',
			success:function(result){
				if(result=='success'){
					alert("수정 되었습니다.");
					$("#modifyModal").modal('hide');
					$(".applies-section .applyObj").remove();
					getList();					
				}
			}
		});
	});
	
	$("#applyDelBtn").click(function(){
		var aid = $(".modal-title").text();
		var bid = "${boardVO.bid}";
		$.ajax({
			type:'post',
			url:'/apply/deleteApply/'+aid+'/'+bid,
			headers:{"Content-Type":"application/json"},
			dataType:'text',
			success:function(result){
				if(result=='success'){
					alert("삭제 되었습니다.");
					$("#modifyModal").modal('hide');
					$("#newApplyText").removeAttr("readonly");
					$(".applies-section .applyObj").remove();
					getList();					
				}
			}
		});
	});
	
	$.getJSON("/getUploadList/"+"${boardVO.bid}", function(list) {
		
		if(list.length==0){
			var str = '';
			str += "<div class='item active'>";	
			str += "<img src='/resources/img/file.png'>";
			str += "</div>";
			$(".carousel-inner").append(str);
		}else{
			$(list).each(function(index, element) {
				var imgSrc=element.route;
				imgSrc="/displayFile?fileName="+imgSrc;
								
				var str = '';
				if(index==0){
					str += "<div class='item active'>";	
				}else{
					str += "<div class='item'>";
				}
				str += "<img src='"+imgSrc+"'>";
				str += "</div>";
				$(".carousel-inner").append(str);
			});
		}	
	});
	
	$('.carousel').carousel({
		interval:3000
	});	
});

function getList() {
	$.getJSON("/apply/getApplyList/"+"${boardVO.bid}", function(list) {
		$(list).each(function() {
			addApplyObj(this);
			if(this.applicant=="${login.uid}"){
				$("#newApplyText").attr("readonly","readonly");
			}
		});
	});
}

function addApplyObj(applyObj){
	var writer = "${boardVO.writer}";
	var aid = applyObj.aid;
	var applicant = applyObj.applicant;
	var regdate = applyObj.regdate;
	var content = applyObj.content;
	var ischoice = applyObj.ischoice;
	
	var str ="";
	str += '<li class="media applyObj" data-aid="'+aid+'">';
	str += '<div class="form-group">';
	str += '<label class="col-sm-3 col-md-2 col-lg-2">';
	str += '<img src="/resources/img/apply.png">&nbsp;';
	str += '<span class="applicant-section">'+applicant+'</span><br><span style="font-size:15px">'+regdate+'</span></label>';
	str += '<div class="col-sm-6 col-md-8 col-lg-8">';
	str += '<span class="form-control-static apply-content" style="word-break:break-all;word-wrap:break-word;">'+content+'</span>';
	str += '</div>';
	str += '<div class="col-sm-3 col-md-2 col-lg-2 btn-section" data-aid="'+aid+'">';
	if("${login.uid}"==writer){
		if(ischoice=='n'){
			str += '<button type="button" class="btn btn-danger btn-block" id="selectBtn">선택</button>';
			str += '<button type="button" class="btn btn-success btn-block hide" id="chatBtn">채팅</button>';
			str += '<button type="button" class="btn btn-warning btn-block hide" id="selectCancelBtn">취소</button>';
		}
		else{
			str += '<button type="button" class="btn btn-danger btn-block hide" id="selectBtn">선택</button>';
			str += '<button type="button" class="btn btn-success btn-block" id="chatBtn">채팅</button>';
			str += '<button type="button" class="btn btn-warning btn-block" id="selectCancelBtn">취소</button>';
		}
	}else if("${login.uid}"==applicant){
		str += '<button type="button" class="btn btn-warning btn-block" id="modifyApplyBtn" data-toggle="modal" data-target="#modifyModal">수정</button>';
	}else{
		str+='';
	}
	str += '</div>';
	str += '</div>';
	str += '</li>';
	
	$(".applies-section").append(str);
}
</script>