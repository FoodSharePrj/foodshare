<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>

<style>
body{background:#f0f6fc;}
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
	<h2>
		나눔리스트&nbsp;&nbsp;
		<button type="button" class="btn btn-sm btn-warning" id="cancleBtn">글쓰기</button>
	</h2>
	<div class="row shareList" style="display:flex; flex-wrap:wrap">
	</div>
</div>

<%@ include file="../include/footer.jsp"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script src="/resources/js/simpleparallax.js"></script>	
<script id="listTemplate" type="text/x-handlebars-template">
<div class="col-sm-6 col-md-3">
	<div class="thumbnail">
		<a href="{{getLink}}">
			<img src="{{imgSrc}}" alt="...">
			<div class="caption">
				<p>
					<span id="boardtitle">{{title}} </span><br>
					<span id="boardwrite1">{{splace1}}</span> 
					<span id="boardwrite2">{{splace2}}</span>
					<span id="boardwrite3">{{splace3}}</span>
				</p>
				<p>
					<span id="boardduedate1" class="text-danger">{{regdate}}</span>
					<span class="text-danger">&nbsp;~&nbsp;</span>
					<span id="boardduedate2" class="text-danger">{{duedate}}</span>
				</p>
			</div>
		</a>
	</div>
</div>
</script>

<script>
	var listNumber = 0;
	var template = Handlebars.compile($("#listTemplate").html());
	
	$(document).ready(function(){
		getList();
		
		$(document).scroll(function(){
			var maxHeight = $(document).height();
			var currentScroll = $(window).scrollTop() + $(window).height();
			if (maxHeight <= currentScroll+15) {
				getList();
				$(window).scrollTop($(window).scrollTop()-30);
			}
		});
	});
			
	function getList() {
		$.getJSON("/board/getList/"+listNumber, function(list) {
			listNumber++;
			$(list).each(function() {
				var listObjInfo = getListObjInfo(this);
				var html = template(listObjInfo);

				$(".shareList").append(html);
			});
		});
	}

	function getListObjInfo(listObj) {
		var bid = listObj.bid;
		var getLink = "/board/detail?bid="+bid;
		var title = listObj.title;
		var splace1 = listObj.splace1;
		var splace2 = listObj.splace2;
		var splace3 = listObj.splace3;
		var regdate = listObj.regdate;
		var duedate = listObj.duedate;
		var imgSrc = listObj.route;
		if(imgSrc.substring(0,10)!="/resources"){
			
			imgSrc="/displayFile?fileName="+imgSrc;
		}
		
		return {bid:bid, getLink:getLink, title:title, splace1:splace1, splace2:splace2, splace3:splace3, regdate:regdate,
				duedate:duedate, imgSrc:imgSrc};
		
	}
</script>
<script>
	var result = '${msg}';
	if (result == 'success') {
		alert("처리가 완료 되었습니다.");
	}

	$("#cancleBtn").click(function() {
		location.href = "/board/regist";
	});
</script>