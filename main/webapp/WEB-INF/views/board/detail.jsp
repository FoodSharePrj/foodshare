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
		<button class="btn btn-sm btn-warning" id="modify">수정</button>
		<button class="btn btn-sm btn-danger" id="delete">삭제</button>
	</c:if>
	<div class="row">
		<div class="col-md-6">
			<div id="carousel-generic" class="carousel slide">
				<div class="carousel-inner"></div>
				<a class="left carousel-control" href="#carousel-generic"
					data-slide="prev"> <span class="icon-prev"></span>
				</a> <a class="right carousel-control" href="#carousel-generic"
					data-slide="next"> <span class="icon-next"></span>
				</a>
			</div>
		</div>
		<div class="col-md-6">
			<table class="table">
				<tr>
					<th>제목</th>
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
					<h4 class="text-primary"><u>본인이 작성한 글입니다.</u></h4></a>
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
<%@ include file="../include/footer.jsp"%>

<script>

$(function(){
	$("#goList").click(function(){
		location.href="/board/list";
	});
	
	$("#modify").click(function(){
		
	});
	
	$("#delete").click(function(){
		location.href="/board/delete?bid="+"${boardVO.bid}";
	});
	
	getList();
	
	$("#applyAddBtn").click(function(){
		var applicant = "${login.uid}";
		var content = $("#newApplyText").val();
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
			}
		});
	});
	
	$.getJSON("/getUploadList/"+"${boardVO.bid}", function(list) {
		$(list).each(function(index, element) {
			
			var imgSrc=element.route;
			if(imgSrc.substring(0,10)!="/resources"){
				imgSrc="/displayFile?fileName="+imgSrc;
			}
			
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
	});
	
	$('.carousel').carousel({
		interval:3000
	});	
});

function getList() {
	$.getJSON("/apply/getApplyList/"+"${boardVO.bid}", function(list) {
		$(list).each(function() {
			addApplyObj(this);
		});
	});
}

function addApplyObj(applyObj){
	var writer = "${boardVO.writer}";
	var aid = applyObj.aid;
	var applicant = applyObj.applicant;
	var regdate = applyObj.regdate;
	var content = applyObj.content;
	
	var str ="";
	str += '<li class="media" data-aid="'+aid+'">';
	str += '<div class="form-group">';
	str += '<label class="col-md-2 col-lg-2">';
	str += '<img src="/resources/img/apply.png">&nbsp;';
	str += applicant+'</label>';
	str += '<div class="col-md-2 col-lg-2">';
	str += '<p><small>'+regdate+'</small></p>';
	str += '</div>';
	str += '<div class="col-md-6 col-lg-6">';
	str += '<span class="form-control-static" style="word-break:break-all;word-wrap:break-word;"><small>'+content+'</small></span>';
	str += '</div>';
	str += '<div class="col-md-2 col-lg-2">';
	if("${login.uid}"==writer){
		str += '<button type="button" class="btn btn-danger" id="choiceBtn">선택</button>';
		str += '<button type="button" class="btn btn-info" id="chatBtn">채팅</button>';	
	}else if("${login.uid}"==applicant){
		str += '<button type="button" class="btn btn-danger" id="modifyBtn">수정</button>';
	}else{
		str+='';
	}
	str += '</div>';
	str += '</div>';
	str += '</li>';
	
	$(".applies-section").append(str);
}
</script>