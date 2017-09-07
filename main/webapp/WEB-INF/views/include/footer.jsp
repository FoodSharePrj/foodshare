<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<footer class="hidden-sm hidden-xs">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-6 footer-navigation">
				<h3>
					<a href="#">FoodShare Project</a>
				</h3>
				<p class="links">
					<a href="#">Home</a><strong> · </strong><a href="#">FoodShare </a><strong>
						· </strong><a href="#">MyPage </a><strong> · </strong><a href="#">Contact</a>
				</p>
				<p class="company-name">FoodShare Project © 2017</p>
			</div>
			<div class="col-md-4 col-sm-6 footer-contacts">
				<div>
					<span class="fa fa-map-marker footer-contacts-icon"> </span>
					<p>
						<span class="new-line-span">Jonglo-gu</span> Seoul,
						Korea
					</p>
				</div>
				<div>
					<i class="fa fa-phone footer-contacts-icon"></i>
					<p class="footer-center-info email text-left">02 000 0000</p>
				</div>
				<div>
					<i class="fa fa-envelope footer-contacts-icon"></i>
					<p>
						<a href="#" target="_blank">foodshare@company.com</a>
					</p>
				</div>
			</div>
			<div class="clearfix visible-sm-block"></div>
			<div class="col-md-4 footer-about">
				<h4>About the FoodShare Project</h4>
				<p>2017년 9월 더조은 IT아카데미 스마트웹 개발자 양성과정의 
					파이널 프로젝트로 제작 되었습니다.</p>
				<div class="social-links social-icons">
					<a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i
						class="fa fa-twitter"></i></a><a href="#"><i
						class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a>
				</div>
			</div>
		</div>
	</div>
</footer>
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

var chatList = new Array();
var uid="${login.uid}";
if(uid != ""){

	$.getJSON("/chat/getChatroomList/"+uid, function(list) {
		
		if(list.length>0){
			$(list).each(function() {
				chatList.push(this.roomname);
				var html ='';
				html += "<iframe class='"+this.roomname+"' src='http://192.168.0.222:3000/wait?roomname="+this.roomname;
				html +=	"&uid="+uid+"'>";
				html += "</iframe>";

				$(".iframe-section").append(html);
			});
			
			if(window.addEventListener) {
				window.addEventListener ("message", receiveMessage, false);
			}else{
				if(window.attachEvent) {  
					window.attachEvent("onmessage", receiveMessage);
				}
			}
		}
	});
}

function receiveMessage(event){
	/* 이부분 수정 chatList에 event.data가 들어있음 여부에 따라 분기 */
	if(event.data){
		for(var i = 0 ; i<chatList.length; i++){
			if(chatList[i]==event.data){
				window.open("http://192.168.0.222:3000/chatroom?roomname="+event.data+"&uid="+"${login.uid}", event.data,'width=400,heiht=430');
				$(".iframe-section ."+event.data).remove();
			}
		}
		
	}
}
</script>
</body>
</html>
