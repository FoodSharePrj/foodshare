<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../include/header.jsp"%>
<div class="container">
	<br>
	<div class="searchBox">
		<div class="col-md-6">
			<div class="input-group">
				<input type="text" class="form-control" id="searchInput" size="40">
				<span class="input-group-btn">
					<button class="btn btn-success" id="searchBtn" type="button">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</span>
			</div>
		</div>
		<br> <a data-toggle="collapse" href="#collapseOne"><u>상세검색&nbsp;</u><span
			class="glyphicon glyphicon-menu-down"></span></a>
		<div class="clearfix"></div>
		<div id="collapseOne" class="collapse panel-collapse">
			<div class="panel-body">
				<ul class="nav nav-tabs" id="searchByRegion">
					<li class="active"><a href="#seoul" data-toggle="tab">서울</a></li>
					<li><a href="#gyunggi" data-toggle="tab">경기</a></li>
					<li><a href="#incheon" data-toggle="tab">인천</a></li>
					<li><a href="#busan" data-toggle="tab">부산</a></li>
					<li><a href="#daegu" data-toggle="tab">대구</a></li>
					<li><a href="#gwangju" data-toggle="tab">광주</a></li>
					<li><a href="#daejeon" data-toggle="tab">대전</a></li>
					<li><a href="#ulsan" data-toggle="tab">울산</a></li>
					<li><a href="#sejong" data-toggle="tab">세종</a></li>
					<li><a href="#gwangwon" data-toggle="tab">강원</a></li>
					<li><a href="#chungbuk" data-toggle="tab">충북</a></li>
					<li><a href="#chungnam" data-toggle="tab">충남</a></li>
					<li><a href="#kyungbuk" data-toggle="tab">경북</a></li>
					<li><a href="#kyungnam" data-toggle="tab">경남</a></li>
					<li><a href="#jeonbuk" data-toggle="tab">전북</a></li>
					<li><a href="#jeonnam" data-toggle="tab">전남</a></li>
					<li><a href="#jeju" data-toggle="tab">제주</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="seoul">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="강남구">강남구
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="강동구">강동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="강북구">강북구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="강서구">강서구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="관악구">관악구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="광진구">광진구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="구로구">구로구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="금천구">금천구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="노원구">노원구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="도봉구">도봉구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동대문구">동대문구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동작구">동작구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="마포구">마포구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서대문구">서대문구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서초구">서초구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="성동구">성동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="성북구">성북구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="송파구">송파구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="양천구">양천구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영등포구">영등포구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="용산구">용산구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="은평구">은평구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="종로구">종로구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="중구">중구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="중랑구">중랑구</label>
						</div>
					</div>

					<div class="tab-pane" id="gyunggi">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="가평군">가평군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="고양시">고양시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="과천시">과천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="광명시">광명시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="광주시">광주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="구리시">구리시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="군포시">군포시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="김포시">김포시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남양주시">남양주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동두천시">동두천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="부천시">부천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="성남시">성남시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="수원시">수원시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="시흥시">시흥시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="안산시">안산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="안양시">안양시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="양주시">양주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="양평군">양평군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="여주시">여주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="연천군">연천군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="오산시">오산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="용인시">용인시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="의왕시">의왕시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="의정부시">의정부시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="이천시">이천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="파주시">파주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="평택시">평택시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="포천시">포천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="하남시">하남시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="화성시">화성시</label>
						</div>
					</div>

					<div class="tab-pane" id="incheon">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="강화군">강화군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="계양구">계양구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남구">남구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남동구">남동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동구">동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="부평구">부평구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서구">서구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="연수구">연수구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="옹진군">옹진군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="중구">중구</label>
						</div>
					</div>

					<div class="tab-pane" id="busan">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="강서구">강서구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="금정구">금정구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="기장군">기장군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남구">남구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동구">동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동래구">동래구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="부산진구">부산진구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="북구">북구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="사상구">사상구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="사하구">사하구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서구">서구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="수영구">수영구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="연제구">연제구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영도구">영도구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="중구">중구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="해운대구">해운대구</label>
						</div>
					</div>

					<div class="tab-pane" id="daegu">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남구">남구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="달서구">달서구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="달성군">달성군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동구">동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="북구">북구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서구">서구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="수성구">수성구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="중구">중구</label>
						</div>
					</div>

					<div class="tab-pane" id="gwangju">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="광산구">광산구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남구">남구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동구">동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="북구">북구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서구">서구</label>
						</div>
					</div>

					<div class="tab-pane" id="daejeon">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="대덕구">대덕구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동구">동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서구">서구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="유성구">유성구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="중구">중구</label>
						</div>
					</div>

					<div class="tab-pane" id="ulsan">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남구">남구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동구">동구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="북구">북구</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="울주군">울주군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="중구">중구</label>
						</div>
					</div>

					<div class="tab-pane" id="sejong">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
					</div>

					<div class="tab-pane" id="gwangwon">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="강릉시">강릉시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="고성군">고성군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="동해시">동해시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="삼척시">삼척시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="속초시">속초시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="양구군">양구군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="양양군">양양군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영월군">영월군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="원주시">원주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="인제군">인제군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="정선군">정선군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="철원군">철원군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="춘천시">춘천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="태백시">태백시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="평창군">평창군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="홍천군">홍천군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="화천군">화천군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="횡성군">횡성군</label>
						</div>
					</div>

					<div class="tab-pane" id="chungbuk">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="괴산군">괴산군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="단양군">단양군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="보은군">보은군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영동군">영동군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="옥천군">옥천군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="음성군">음성군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="제천시">제천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="증평군">증평군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="진천군">진천군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="청원군">청원군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="청주시">청주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="충주시">충주시</label>
						</div>
					</div>

					<div class="tab-pane" id="chungnam">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="계룡시">계룡시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="공주시">공주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="금산군">금산군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="논산시">논산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="당진시">당진시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="보령시">보령시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="부여군">부여군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서산시">서산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서천군">서천군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="아산시">아산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="연기군">연기군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="예산군">예산군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="천안시">천안시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="청양군">청양군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="태안군">태안군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="홍성군">홍성군</label>
						</div>
					</div>

					<div class="tab-pane" id="kyungbuk">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="경산시">경산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="경주시">경주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="고령군">고령군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="구미시">구미시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="군위군">군위군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="김천시">김천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="문경시">문경시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="봉화군">봉화군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="상주시">상주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="성주군">성주군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="안동시">안동시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영덕군">영덕군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영양군">영양군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영주시">영주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영천시">영천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="예천군">예천군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="울릉군">울릉군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="울진군">울진군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="의성군">의성군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="청도군">청도군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="청송군">청송군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="칠곡군">칠곡군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="포항시">포항시</label>
						</div>
					</div>

					<div class="tab-pane" id="kyungnam">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="거제시">거제시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="거창군">거창군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="고성군">고성군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="김해시">김해시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남해군">남해군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="밀양시">밀양시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="사천시">사천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="산청군">산청군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="양산시">양산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="의령군">의령군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="진주시">진주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="창녕군">창녕군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="창원시">창원시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="통영시">통영시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="하동군">하동군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="함안군">함안군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="함양군">함양군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="합천군">합천군</label>
						</div>
					</div>

					<div class="tab-pane" id="jeonbuk">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="고창군">고창군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="군산시">군산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="김제시">김제시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="남원시">남원시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="무주군">무주군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="부안군">부안군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="순창군">순창군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="완주군">완주군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="익산시">익산시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="임실군">임실군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="장수군">장수군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="전주시">전주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="정읍시">정읍시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="진안군">진안군</label>
						</div>
					</div>

					<div class="tab-pane" id="jeonnam">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="강진군">강진군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="고흥군">고흥군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="곡성군">곡성군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="광양시">광양시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="구례군">구례군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="나주시">나주시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="담양군">담양군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="목포시">목포시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="무안군">무안군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="보성군">보성군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="순천시">순천시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="신안군">신안군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="여수시">여수시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영광군">영광군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="영암군">영암군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="완도군">완도군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="장성군">장성군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="장흥군">장흥군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="진도군">진도군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="함평군">함평군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="해남군">해남군</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="화순군">화순군</label>
						</div>
					</div>

					<div class="tab-pane" id="jeju">
						<div class="col-md-2 col-sm-4 col-xs-6 col-xs-6">
							<label class="radio-inline"> <input type="radio"
								name="splace2" value="전체">전체
							</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="서귀포시">서귀포시</label>
						</div>
						<div class="col-md-2 col-sm-4 col-xs-6">
							<label class="radio-inline"><input type="radio"
								name="splace2" value="제주시">제주시</label>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<br>
				<ul class="nav nav-pills" id="searchByCategory">
					<li class="active"><a href="#" data-toggle="tab">전체</a></li>
					<li><a href="#" data-toggle="tab">육류</a></li>
					<li><a href="#" data-toggle="tab">어패류</a></li>
					<li><a href="#" data-toggle="tab">채소류</a></li>
					<li><a href="#" data-toggle="tab">과일류</a></li>
					<li><a href="#" data-toggle="tab">가공식품</a></li>
					<li><a href="#" data-toggle="tab">기타</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>
		</div>
		<hr>
	</div>
</div>

<div class="container">
	<h2>
		나눔리스트&nbsp;&nbsp;
		<button type="button" class="btn btn-sm btn-warning" id="registBtn">글쓰기</button>
	</h2>
	<div class="row shareList" style="display: flex; flex-wrap: wrap">
	</div>
</div>

<%@ include file="../include/footer.jsp"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script id="listTemplate" type="text/x-handlebars-template">
<div class="col-sm-6 col-md-3">
	<div class="thumbnail">
		<a href="{{getLink}}">
			<img src="{{imgSrc}}" alt="...">
			<div class="caption">
				<p>
					<span id="boardtitle">{{title}} </span>&nbsp;<span class="label label-success pull-right">{{applycnt}}</span><br>
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
	var result = '${msg}';
	if (result == 'success') {
		alert("처리가 완료 되었습니다.");
	}

	var template = Handlebars.compile($("#listTemplate").html());

	$(document).ready(function() {
		getList();

		$(document).scroll(function() {
			var maxHeight = $(document).height();
			var currentScroll = $(window).scrollTop() + $(window).height();
			if (maxHeight <= currentScroll + 15) {
				getList();
				$(window).scrollTop($(window).scrollTop() - 30);
			}
		});
	});

	/* 검색부분 */
	var index = 0;
	var splace1 = '';
	var splace2 = '';
	var category = '';
	var keyword = '';
	
	$("#searchInput").keyup(function (e) {
		if (e.which == 13){
			$('#searchBtn').trigger("click");
		}
	});
	
	$("#searchBtn").click(function() {
		
		if ($(":radio[name=splace2]:checked").val()) {
			splace1 = $("#searchByRegion").find(".active").text();
			
			if($(":radio[name=splace2]:checked").val()=="전체"){
				splace2 = '';
			}else{
				splace2 = $(":radio[name=splace2]:checked").val();
			}
		}
		if ($("#searchByCategory").find(".active").text() != "전체") {
			category = $("#searchByCategory").find(".active").text();
		} else {
			category = '';
		}
		var searchInputText = $("#searchInput").val().trim();
		if (searchInputText == "" || searchInputText.length == 0) {
			keyword = '';
		} else {
			keyword = searchInputText;
		}
		$(".shareList > div").remove();
		index = 0;
		getList();
	});

	/* 화면에 뿌리는 로직 */
	function getList() {
		$.ajax({
			type : 'post',
			url : '/board/getList',
			headers : {
				"Content-Type" : "application/json"
			},
			data : JSON.stringify({
				index : index,
				splace1 : splace1,
				splace2 : splace2,
				category : category,
				keyword : keyword
			}),
			dataType : 'json',
			success : function(result) {
				index++;
				$(result).each(function() {
					var listObjInfo = getListObjInfo(this);
					var html = template(listObjInfo);

					$(".shareList").append(html);
				});
			}
		});

	}

	function getListObjInfo(listObj) {
		var bid = listObj.bid;
		var getLink = "/board/detail?bid=" + bid;
		var title = listObj.title;
		var splace1 = listObj.splace1;
		var splace2 = listObj.splace2;
		var splace3 = listObj.splace3;
		var regdate = listObj.regdate;
		var duedate = listObj.duedate;
		if (listObj.route == null) {
			listObj.route = "/resources/img/file.png";
		}
		var imgSrc = listObj.route;
		var applycnt = listObj.applycnt;
		if (imgSrc.substring(0, 10) != "/resources") {

			imgSrc = "/displayFile?fileName=" + imgSrc;
		}

		return {
			bid : bid,
			getLink : getLink,
			title : title,
			splace1 : splace1,
			splace2 : splace2,
			splace3 : splace3,
			regdate : regdate,
			duedate : duedate,
			imgSrc : imgSrc,
			applycnt : applycnt
		};
	}

	/* 글쓰기 버튼 클릭 */
	$("#registBtn").click(function() {
		location.href = "/board/regist";
	});
</script>