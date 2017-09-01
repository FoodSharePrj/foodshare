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
			<div class="box box-success">
				<div class="box-header">
					<h3 class="box-title">ADD NEW REPLY</h3>
				</div>
				<c:if test="${not empty login}">
					<div class="box-body">
						<label for="newReplyWriter">Writer</label> <input
							class="form-control" type="text" id="newReplyWriter"
							placeholder="USER ID"> <label for="newReplyText">ReplyText</label>
						<input class="form-control" type="text" placeholder="REPLY TEXT"
							id="newReplyText">
					</div>
					<div class="box-footer">
						<button type="submit" class="btn btn-primary" id="replyAddBtn">ADD
							REPLY</button>
					</div>
				</c:if>
				<c:if test="${empty login}">
					<div class="box-body">
						<div>
							<a href="/user/login">Login Please</a>
						</div>
					</div>
				</c:if>
			</div>
			<!-- 댓글의 목록과 페이징 처리 영역 -->
			<ul class="timeline">
				<li class="time-label" id="repliesDiv">
					<span class="bg-green">Replies List <small id='replycntSmall'> [ ${boardVO.replycnt} ]</small>
					</span>
				</li>
			</ul>

			<div class="text-center">
				<ul id="pagination" class="pagination pagination-sm no-margin">
				</ul>
			</div>
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
</script>