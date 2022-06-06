<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="main.css">
<script type="text/javascript" src="base.js"></script>
<title>사랑과 추억이 넘치는 블루오션 펜션에 오신 것을 환영합니다.</title>
</head>
<body>
	<header>
		<h1 id="blueocean">
			<a href="main.jsp">
				블루오션 펜션
			</a>
		</h1>
		<div>
			<a href="javascript:prompt('URL을 복사해주세요.',window.location)"><img id="url" src="images/URL 사각.png" alt="URL share"></a>
			<a href="javascript:alert('instargram으로 공유합니다.')"><img id="instagram" src="images/인스타그램사각.png" alt="instagram share"></a>
			<a href="javascript:alert('kakaotalk으로 공유합니다.')"><img id="kakao" src="images/카카오톡사각.png" alt="kakaotalk share"></a>
		</div>
	</header>
	<nav id="mainnav">
		<li class="mainnavmenu" id="mainnavmenu1">
			<a href="case_intro_view.jsp">소개</a>
			<div class="dropdown-content">
				<a href="case_intro_view.jsp">전경</a>
				<a href="case_intro_directions.jsp">오시는길</a>
			</div>
		</li>
		<li class="mainnavmenu" id="mainnavmenu2">
			<a href="case_board_notice.jsp">게시판</a>
			<div class="dropdown-content">
				<a href="case_board_notice.jsp">공지사항</a>
				<a href="case_board_service.jsp">고객센터</a>
			</div>
		</li>
		<li class="mainnavmenu" id="mainnavmenu3">
			<a href="case_bookinginfo_booking.jsp">예약 안내</a>
			<div class="dropdown-content">
				<a href="case_bookinginfo_booking.jsp">예약하기</a>
				<a href="case_bookinginfo_status.jsp">에약현황</a>
				<a href="case_bookinginfo_check.jsp">예약확인/취소</a>
			</div>
		</li>
		<li class="mainnavmenu" id="mainnavmenu4">
			<a href="case_room_layout.jsp">객실 안내</a>
			<div class="dropdown-content">
				<a href="case_room_layout.jsp">객실 배치도</a>
				<a href="case_room_ocean1.jsp">오션 1호실</a>
				<a href="case_room_ocean2.jsp">오션 2호실</a>
				<a href="case_room_blue1.jsp">블루 1호실</a>
			</div>
		</li>
		<li class="mainnavmenu" id="mainnavmenu5">
			<a href="case_facility_pool.jsp">이용 시설</a>
			<div class="dropdown-content">
				<a href="case_facility_pool.jsp">수영장</a>
				<a href="case_facility_bbq.jsp">바베큐장</a>
				<a href="case_facility_gallery.jsp">갤러리</a>
			</div>
		</li>
		<li class="mainnavmenu" id="mainnavmenu6">
			<a href="case_recom_festival.jsp">추천 여행지</a>
			<div class="dropdown-content">
				<a href="case_recom_festival.jsp">축제정보</a>
				<a href="case_recom_spot.jsp">가볼만한곳</a>
				<a href="case_recom_restaurant.jsp">추천맛집</a>
			</div>
		</li>
	</nav>
	
	<div class="container">
		<section class="content">
			<h1>블루오션 펜션</h1>
			<h2 id="main_booking_left"><a href="case_bookinginfo_booking.jsp">예약하기</a></h2>
			<h2 id="main_booking_right"><a href="javascript:bookingCheck();">예약내역</a></h2>
		</section>
	</div>

	<footer class="footer">
	<img src="images/블루오션아이콘.png" alt="로고">
	<div class="footerdiv1">
		<h3>
			업체명 : 블루오션 펜션 | 대표 : 유덕현 | &phone;.&starf;&starf;&starf;)&starf;&starf;&starf;&hyphen;&starf;&starf;&starf;&starf; | 계좌번호 : &starf;&starf;&starf;&hyphen;&starf;&starf;&starf;&starf;&starf; (예금주 : 유덕현)<br>
			주소 : 전라남도 여수시 &starf;&starf;&starf; | 사업자번호 : &starf;&starf;&starf;&hyphen;&starf;&starf;&hyphen;&starf;&starf;&starf;&starf;&starf;
		</h3>
	</div>
	<div class="footerdiv2">
	<h7>
		<span>
			<a href="javascript:copyright()">이용약관</a>
		</span>|
		<span>
			<a href="javascript:copyright()">저작권</a>
		</span>|
		<span>
			<a href="javascript:copyright()">개인정보처리방침</a>
		</span>|
		<span>
			<a href="#"><font color="red">Admin</font></a>
		</span>
		<br>
		ALL RIGHT RESERVED.
	</h7> 
	</div>
	</footer>
</body>
</html>