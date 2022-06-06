<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	*{
		margin: 0; padding: 0;
	}
		
	h1{	
		margin-top: 10%;
		text-align: center;
		font-size: 50px;
	}
	
	.part{
		width: 97%; height: 300px;
		margin-bottom: 10px;
		margin-left: 10px;
		background: white;
		border: 1px black solid;
		position: relative;
	}	
	div img{
		width: 30%; height: 100%;
		display : inline-block;
		float: left;
		border-right: 1px black solid;
	}
	b{
		font-size: 18px;
	}
	p{
		width: 62%; height: 80%; margin: 20px;
		display: inline-block;
		float: left;
	}
	p>a{
		position: absolute;
		bottom: 5px; right: 5px;
	}
</style>
</head>
<body>
	<h1>추 천 명 소</h1>
	<br><br><br>
	<div style="text-align: center;">
	 여수, 어디로 떠나 볼까요?<br>
	 다양한 놀거리가 준비되있는 아름다운 곳에서<br>
	 색다른 추억을 만들어보세요.<br>
	</div>
	<a href="#first"><img src="images/down arrow.png" width="50px" height="50px" style="margin: 50px 48%"></a>
	<div class="part" id="first">
		<img src="images/여수엑스포.jpg" alt="여수엑스포">
		<p>
			<b>여수 엑스포</b><br><br>
			끝없이 펼쳐진 바다와 공연이벤트 전 세계인에 감동을 선사했던 여수박람회장은 지구촌 단 하나뿐인 화려한 빅오쇼를 비롯해 스카이타워, 아쿠아플라넷 등
			하루 종일 신나는 박람회 시설물과 다이내믹한 해양레포츠 프로그램, 바다와 맞닿은 수변공원을 거닐며 산책하는 이들로 북적댄다.
			재미와 다양한 볼거리를 제공하는 여수세계박람회장
			<a href="https://www.yeosu.go.kr/tour/travel/10tour/yeosu_expo" target='_blank'>관련사이트 바로가기 &gt;&gt;</a>
		</p>
	</div>
	<div class="part">
		<img src="images/아쿠아플라넷.jpg" alt="아쿠아플라넷">
		<p>
			<b>아쿠아 플라넷</b><br><br>
			전남 여수시 여수 신항 제2부두 인근에 자리한 국내 2위 규모의 아쿠아리움으로 특히, 국내에서는 처음으로 지상(4층 규모)에 들어선다는 점이 특징입니다. 
			‘2012 여수세계박람회’ 메인 관람시설로 지정된 아쿠아플라넷 여수는 태양광발전에 의해 구현되는 친환경 아쿠아리움으로 각층에는 ‘오션라이프’, 
			‘마린 라이프’, ‘아쿠아 포리스트’ 등 차별화된 체험 전시공간을 운영합니다. 300여 종 5만 5000여마리의 해양생물이 살고 있고, ‘벨루가(흰 고래), 
			‘푸른바다거북’ 등 멸종위기 생물들의 종보전 연구를 진행하고 있습니다.
			<a href="https://www.aquaplanet.co.kr/yeosu/information/use_price.do" target='_blank'>관련사이트 바로가기 &gt;&gt;</a>
		</p>
	</div>
	<div class="part">
		<img src="images/여수해상케이블카+엑스포카트.jpg" alt="해상케이블카&엑스포카트">
		<p>
			<b>해상 케이블카와 엑스포 카트</b><br><br>
			여수 돌산과 자산공원을 잇는 1.5Km 구간의 국내 첫 해상 케이블카로 바닥이 투명한 크리스탈 캐빈 15대(5인승)와 일반 캐빈 35대(8인승), 
			총 50대가 운행되고 있다. 박람회장과 오동도 중심으로 다도해의 탁 트인 전망과 여수의 밤바다 풍경이 아름답다.
			바다 위를 지나 섬과 육지를 연결하는 국내 최초의 해상 케이블카
			<a href="http://yeosucablecar.com/" target='_blank'>관련사이트 바로가기 &gt;&gt;</a>
		</p>
	</div>
</body>
</html>