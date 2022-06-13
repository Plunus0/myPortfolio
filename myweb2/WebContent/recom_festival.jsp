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
	<h1>축 제 정 보</h1>
	<br><br><br>
	<div style="text-align: center;">
	 여수, 어디로 떠나 볼까요?<br>
	 다양한 놀거리가 준비되있는 아름다운 곳에서<br>
	 색다른 추억을 만들어보세요.<br>
	</div>
	<a href="#first"><img src="images/down arrow.png" width="50px" height="50px" style="margin: 50px 48%"></a>
	<div class="part" id="first">
		<img src="images/여수밤바다 불꽃축제.jpg" alt="여수밤바다 불꽃축제">
		<p>
			<b>여수밤바다 불꽃축제</b><br><br>
			가수 버스커버스커의 노래에도 소재로 쓰인 여수 밤바다는 낭만으로 가득찬 풍경을 선사한다. 
			한여름밤 해상에서 펼쳐지는 불꽃쇼는 여수의 야경을 더욱 아기자기하고 다채롭게 해주어 보는 이들에게 감탄을 자아낸다. 
			버스킹공엽, 시립예술단의 축하공연, 가지각색의 퍼포먼스 부터 뮤지컬 등의 콘텐츠를 활용한 메인쇼까지 
			불꽃의 색만큼이나 다양한 공연 또한 준비되어 있으니 여름밤의 추억을 장식하기에 훌륭한 축제이다.
			<a href="https://www.yeosu.go.kr/ysff" target='_blank'>관련사이트 바로가기 &gt;&gt;</a>
		</p>
	</div>
	<div class="part">
		<img src="images/여수 치맥 페스티벌.png" alt="여수 치맥 페스티벌">
		<p>
			<b>여수 치맥 페스티벌</b><br><br>
			 여수세계박람회재단(이사장 신평식, 이하 재단)은 오는 12일부터 15일까지 ‘여수 밤바다, 그리고 젊음’이라는 주제로 박람회장 엑스포디지털갤러리(EDG)에서 ‘2016 여수엑스포 치맥페스티벌’이 개최된다고 밝혔다.
			누구나 무료로 입장가능한 이번 행사는 매일 오후 2시부터 인기가수 길미, 소울다이브, A.De, 다락 등 다양한 아티스트들의 LIVE콘서트와 메리트의 Summer COOL 댄스 공연, 기차놀이 플래시몹, 
			한효익 마술사의 매직퍼포먼스를 시작으로 저녁 8시 30분에는 관객들이 직접 참여할 수 있는 ‘퀴즈열전’, ’도전 나도 스타!‘ 등 다양한 이벤트가 준비되어 젊은 층부터 가족단위의 관광객이 치맥과 함께 축제를 즐길 수 있도록 준비되어 있다.

			<a href="http://www.m-i.kr/news/articleView.html?idxno=245561" target='_blank'>관련사이트 바로가기 &gt;&gt;</a>
		</p>
	</div>
	<div class="part">
		<img src="images/여수 눈썰매장.jpg" alt="여수 눈썰매장&눈꽃마을">
		<p>
			<b>여수 눈썰매장 & 눈꽃 마을</b><br><br>
			여수를 찾은 방문객들은 여수엑스포장에 마련된 눈썰매장인 ‘눈꽃마을’에서 신나는 겨울 체험도 할 수 있다.
			여수 눈썰매장 눈꽃마을은 동계 인기시설인 '4계절 눈썰매장'을 준비했는데 길이는 110m, 슬로프는 5개를 갖춘 지역 최대 규모 시설이다.
			<a href="http://www.expo2012.kr/web/bbs/content.php?co_id=sub013_14" target='_blank'>관련사이트 바로가기 &gt;&gt;</a>
		</p>
	</div>
</body>
</html>