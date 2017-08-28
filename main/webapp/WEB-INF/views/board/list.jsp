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
<div class="container">
	<h2>나눔리스트</h2>
	<button type="button" class="btn btn-info" id="cancleBtn">
		글쓰기<i class="fa fa-times spaceLeft"></i>
	</button>
	<div class="row">
		<c:forEach items="${list}" var="boardVO">
			<div class="col-sm-4 col-md-3">
				<div class="thumbnail">
					<a href="/board/detail"> <img src="/resources/img/jumbo1.jpg"
						alt="...">
						<div class="caption">
							<p>
								<span id="boardtitle">${boardVO.title} </span><span
									id="boardwrite">${boardVO.writer}</span>
							</p>
							<p>
								<span id="boardspace" class="text-primary">${boardVO.splace}</span>
							</p>
							<p>
								<span id="boardduedate" class="text-danger">
									${boardVO.duedate} 까지</span>
							</p>
						</div></a>
				</div>
			</div>
		</c:forEach>

	</div>
</div>
<%@ include file="../include/footer.jsp"%>
<script>
	var result = '${msg}';
	if (result == 'success') {
		alert("처리가 완료 되었습니다.");
	}

	$("#cancleBtn").click(function() {
		location.href = "/board/regist";
	});
</script>