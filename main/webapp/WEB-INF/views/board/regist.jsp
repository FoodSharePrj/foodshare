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
<h1 class="text-center">글 쓰기</h1>
<div class="container">
	<div class="row">
		<div
			class="col-lg-8 col-lg-offset-2 col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1">
			<div class="well well-sm">
				<form role="form" method="post" action="/board/regist">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label for="title"> TITLE</label> <input type="text"
									class="form-control" id="id" name="title" placeholder="Title"
									required="required" />
							</div>
							<div class="form-group">
								<label for="writer"> WRITER</label> <input type="text"
									class="form-control" id="writer" name="writer"
									placeholder="writer" required="required" />
							</div>

							<div class="form-group">
								<label for="target"> Target</label> <input type="text"
									class="form-control" id="target" name="target"
									placeholder="target" required="required" />
							</div>

							<div class="form-group">
								<label for="subject"> Place</label> <select id="splace"
									name="splace" class="form-control" required="required">
									<option value="seoul" selected="">서울/인천</option>
									<option value="gyunggi">경기/강원</option>
									<option value="daejeon">대전/충청</option>
									<option value="boosan">부산/울산/경남</option>
									<option value="dagoo">대구/경북</option>
									<option value="gwangjoo">광주/전라</option>
									<option value="jejoo">제주</option>
								</select>
							</div>
							<div class="form-group">
								<label for="subject"> Category</label> <select id="category"
									name="category" class="form-control" required="required">
									<option value="meet" selected="">육류</option>
									<option value="fish">어패류</option>
									<option value="vegetable">채소류</option>
									<option value="apple">과일류</option>
									<option value="can">가공식품</option>
								</select>
							</div>

							<div class="form-group">
								<label for="subject"> Status</label> <select id="status"
									name="status" class="form-control" required="required">
									<option value="top" selected="">상</option>
									<option value="middle">중</option>
									<option value="low">하</option>
								</select>
							</div>

							<div class="form-group">
								<label for="duedate"> Duedate</label> <input type="date"
									class="form-control" name="duedate" />
							</div>

						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="name"> Content</label>
								<textarea name="content" id="content" class="form-control"
									rows="9" cols="30" required="required" placeholder="Content"></textarea>
							</div>
						</div>
						<div class="col-md-12">
							<button type="submit" class="btn btn-primary pull-right"
								id="btnContactUs">등록</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../include/footer.jsp"%>