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
    font-size:20px;
}
.fading-side-menu a .fa {
    padding-right:15px;
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
    <div class="col-sm-3" >
        <div class="fading-side-menu" data-spy="affix" data-offset-top="350" id="li">
            <h2>My Page</h2><hr class="no-margin">
            <ul class="list-unstyled" id="li">
                <li>
                    <a href="#intro">
                        <span class="fa fa-angle-double-right text-primary"></span>공유현황
                    </a>
                </li>
                <li>
                    <a href="/user/apply">
                        <span class="fa fa-angle-double-right text-primary"></span>신청현황
                    </a>
                </li>
                <li>
                    <a href="/user/usermodify">
                        <span class="fa fa-angle-double-right text-primary"></span>회원정보 수정
                    </a>
                </li>
                <li>
                    <a href="/user/userdelete">
                        <span class="fa fa-angle-double-right text-primary"></span>회원탈퇴
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- THIS IS NOT NEEDED, THIS IS JUST THE CONTENT OF THE DEMO -->
    <div class="col-xs-12 col-sm-9">
        <table class="table table-striped table-hover ">
            <thead>
                <tr class="bg-primary">
                    <th>상품명/유효기간</th>
                    <th>진행상태</th>
                    <th>&nbsp&nbsp&nbsp&nbsp채팅</th>
                </tr>
            </thead>
            <tbody> <!-- para abrir em outra aba adicionar target="_blank" -->
            <tr>
                    <td>감자/2017-09-19</td>
                    <td>"진행중"</td>
                    <td><a href="#">채팅하기</a></td> 
                </tr>
                <tr> 
                    <td>고구마/2017-09-23</td>
                    <td>"거래완료"</td>
                    <td><a href="#">채팅하기</a></td>
                </tr>
                
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
</script>