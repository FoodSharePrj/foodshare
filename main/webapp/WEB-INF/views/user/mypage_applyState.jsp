<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="/resources/css/Login-Center.css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
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
	font-size: 20px;
}

.fading-side-menu a .fa {
	padding-right: 15px;
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
	<div class="col-sm-3">
		<div class="fading-side-menu" data-spy="affix" data-offset-top="350"
			id="li">
			<h2>My Page</h2>
			<hr class="no-margin">
			<ul class="list-unstyled" id="li">
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
	<!-- THIS IS NOT NEEDED, THIS IS JUST THE CONTENT OF THE DEMO -->
	<div class="col-xs-12 col-sm-9" style="padding-top:80px; padding-left:20px;">
		<table class="table table-borderedtable table-hover">
			<thead>
				<tr class="bg-success">
					<th style="text-align:center;">제목</th>
					<th style="text-align:center;">신청일</th>
					<th style="text-align:center;">공유진행상태</th>
					<th style="text-align:center;">채택여부</th>
					<th style="text-align:center;">대화하기</th>
					<th style="text-align:center;">거래완료</th>
				</tr>
			</thead>
			<tbody id="applyStateList">
				
			</tbody>
		</table>
	</div>
</div>

<%@include file="../include/footer.jsp"%>
<script>
	var result = '${msg}';
	if (result == 'success') {
		alert("처리 완료.");
	}
	getApplyStateList();
	function getApplyStateList() {
		$.getJSON("/user/getApplyStateList/" + "${login.uid}", function(list) {
			$(list).each(function() {
				var str = ""; 
				str += '<tr>';
				str +=	'<td style="text-align:center;"><a href="/board/detail?bid='+this.bid+'">'+this.title+'</a></td>';
				str +=	'<td style="text-align:center;">'+this.regdate+'</td>';
				str +=	'<td style="text-align:center;" id="td_progress">'+this.progress+'</td>';
				str +=	'<td style="text-align:center;">'+this.ischoice+'</td>';
				if(this.ischoice=="채택"){
					str +=	'<td style="text-align:center;"><button class="btn btn-success btn-sm" id="chatbtn" data-aid="'+this.aid+'">';
					if(this.cnt>0){
						str += '대화하기<span class="label label-danger">'+this.cnt+'</span></button></td>';
					}else{
						str += '대화하기</button></td>';	
					}
					
				}else{
					str +=	'<td style="text-align:center;"><button class="btn btn-success btn-sm" disabled>대화하기</button></td>';
				}
				if(this.ischoice=="채택"){
					str +=	'<td style="text-align:center;"><button class="btn btn-success btn-sm" id="finishbtn" data-bid="'+this.bid+'">거래완료</button></td>';
				}else{
					str +=	'<td style="text-align:center;"><button class="btn btn-success btn-sm" disabled>거래완료</button></td>';
				}
				str += '</tr>';
				$("#applyStateList").append(str);
					
			});
			
		});
	}
	
	$("#applyStateList").on("click","tr #finishbtn",function(){
		var selectBtn = $(this);
		var bid = selectBtn.attr("data-bid");
		if(confirm("[거래]를 완료하시겠습니까?")==true){
			$.ajax({
				type:'post',
				url:'/user/applySuccessClick/'+bid,
				headers:{"Content-Type":"application/json"},
				data:JSON.stringify({bid:bid}),
				dataType:'text',
				success:function(result){
					alert("거래가 완료되었습니다.");
					selectBtn.parent().parent().find("#td_progress").text("거래완료");
					selectBtn.attr("disabled","disabled");
				},
				error:function(){
					alert("실패하였습니다.");
				}
			}); 
		}
		
	});
	
	$("#applyStateList").on("click", "tr td #chatbtn", function(){
		var btn = $(this);
		var aid = btn.attr("data-aid");
		window.open("http://192.168.0.222:3000/chatroom?roomname="+aid+"&uid="+"${login.uid}", aid,'width=400,heiht=430');
	});
	
</script>