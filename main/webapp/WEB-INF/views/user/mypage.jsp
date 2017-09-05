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

<!-- <div class="container">
   <div class="row">
      <ul class="nav nav-list">
         <li><a href=""><i class="glyphicon glyphicon-home"></i> 공유현황<br></a></li>
         <li><a href=""><i class="glyphicon glyphicon-home"></i> 신청현황</a></li>
         <li><a href=""><i class="glyphicon glyphicon-home"></i> 회원정보수정</a></li>
         <li><a href=""><i class="glyphicon glyphicon-home"></i> 회원탈퇴</a></li>



      </ul>

   </div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
 -->
<div class="container">
   <link rel='stylesheet prefetch'
      href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
   <div class="MyPage">
      <aside class="sm-side">
         <ul class="nav nav-pills nav-stacked labels-info inbox-divider">
            <li>
               <h4>MyPage</h4>
            </li><br><br>
            <div><li><a href="#"> <i class="glyphicon glyphicon-home"></i>
                  공유현황
            </a></li><br></div>
            <div><li><a href="#"> <i class="glyphicon glyphicon-home"></i>
                  신청현황
            </a></li><br></div>
            <div><li><a href="#"> <i class="glyphicon glyphicon-home"></i>
                  회원정보수정
            </a></li><br></div>
            <div><li><a href="#"> <i class="glyphicon glyphicon-home"></i>
                  회원탈퇴
            </a></li><br></div>
         </ul>
      </aside>
   </div>
</div>

<script>
   $("#modify").click(function() {
      location.href = "/board/modify";
   });
</script>










</div>
<%@include file="../include/footer.jsp"%>