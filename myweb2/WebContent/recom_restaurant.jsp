<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* { margin: 0;padding: 0; }
	a { text-decoration: none;}
	div{ margin: 5px;}
	span { background: skyblue; color: white; }
	h2{ margin: 10px; padding: 5px; margin-left: 0;
		display: inline-block; border-radius: 5px;
		background: skyblue; color: white;
		}
	img { display: block; border: 1px black solid; }
	#main{ position: relative; }
	.click{
		position: absolute; 
		white-space: nowrap;
	}
	#click01{ left: 520px; top: 280px;}
	#click02{ left: 650px; top: 435px;}
	#click03{ left: 490px; top: 360px;}
	#click04{ left: 675px; top: 195px;}
	#click05{ left: 150px; top: 105px;}
	#click06{ left: 385px; top: 245px;}
	#click07{ left: 410px; top: 447px;}
	#click08{ left: 765px; top: 345px;}
	#click09{ left: 810px; top: 185px;}
	#click10{ left:  30px; top: 125px;}
	#click11{ left: 615px; top: 235px;}
	#restaurant_map{ margin: 5px; width: 903px; height: 550px; }
	.resimg01{
		width: 700px;
	}
	.resimg02{
		width: 500px;
	}
	#top{
		position: fixed;
		bottom: 10px;
		right: 10px;
		background: red;
		border: 2px lightcyan solid;
		border-radius: 30px;
		width: 30px; height: 30px;
		padding-top: 5px;
		padding-left: 5px;
	}
</style>
<script type="text/javascript">

	var resimg = [
		"images/로타리식당.jpg",
		"images/꽃돌게장1번가.jpg",
		"images/명동게장.jpg",
		"images/백천선어마을.jpg",
		"images/맛나게장.jpg",
		"images/싱싱게장마을.jpg",
		"images/상아산장어전문식당.jpg",
		"images/행운무궁화.jpg",
		"images/덕충식당.jpg",
		"images/진미꽃게탕.jpg",
		"images/좌수영바게트버거.jpg"
	]
	var resmap = [
		"images/로타리식당_위치.png",
		"images/꽃돌게장1번가_위치.png",
		"images/명동게장_위치.png",
		"images/백천선어마을_위치.png",
		"images/맛나게장_위치.png",
		"images/싱싱게장마을_위치.png",
		"images/상아산장어전문식당_위치.png",
		"images/행운무궁화_위치.png",
		"images/덕충식당_위치.png",
		"images/진미꽃게탕_위치.png",
		"images/좌수영바게트버거_위치.png"
	]
</script>
</head>
<body>
	<div id='main'>
		<img id="restaurant_map" src="images/맛집.jpg" alt="resaurant_map">
		<div class='click' id='click01'><a href="#res01">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
		<div class='click' id='click02'><a href="#res02">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
		<div class='click' id='click03'><a href="#res03">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
		<div class='click' id='click04'><a href="#res04">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
		<div class='click' id='click05'><a href="#res05">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a></div>
		<div class='click' id='click06'><a href="#res06">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
		<div class='click' id='click07'><a href="#res07">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
		<div class='click' id='click08'><a href="#res08">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
		<div class='click' id='click09'><a href="#res09">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
		<div class='click' id='click10'><a href="#res10">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</a></div>
		<div class='click' id='click11'><a href="#res11">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </a></div>
	</div>
	&nbsp; *해당 식당을 클릭하세요.
		<hr>
	<div id="res01">
		<h2>로타리식당</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[0]+" alt='로타리식당'>");
		</script>
		<p>
			여수 백반 맛집입니다. 서교동 로타리 근처에 위치하고 있어요. 백반 1인분에 단돈 7,000원. 매스컴에도 소개된 집입니다.
			백반에는 돌게장, 양념게장, 제육볶음, 갓김치, 꽃게된장찌개, 명태조림 등 12첩 반상에 부족하면 리필도 가능합니다.
			가격 부담도 없고 푸짐하게 먹을 수 있습니다. 피크 시간때는 골목 밖에까지 줄이 길에 늘어있으니 어느정도 웨이팅은 감수해야해요.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 11시 ~ 오후 9시</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[0]+" alt='로타리식당_위치'>");
		</script>
	</div>
	<div id="res02">
		<h2>꽃돌게장 1번가</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[1]+" alt='꽃돌게장1번가'>");
		</script>
		<p>
			여수 한정식 맛집으로 알려진 한일관에서 만든 게장 전문 식당입니다. 돌게정식(1인) 12,000원, 갈치조림정식(1인) 18,000원, 꽃게정식(1인) 25,0000원 입니다.
			무료로 샐러드바를 이용할 수 있으며 간장돌게장, 샐러드, 홍합탕 등이 있습니다. 건물 전체가 가게이며 짜지않고 깔끔한 맛이 특징입니다.
			화장실에는 1회용 칫솔이 있어서 식사를 마치고 양치할 수 있습니다.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 10시 ~ 오후 9시 30분(15~17시 브레이크타임)</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[1]+" alt='꽃돌게장1번가_위치'>");
		</script>
	</div>
	<div id="res03">
		<h2>명동게장</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[2]+" alt='명동게장'>");
		</script>
		<p>
			TV에 여러차례 소개된 곳입니다. 여수 봉산동에 위치하며 갈치조림(1인) 16,000원, 게장백반(1인) 10,000원입니다.
			갈치조림에는 간장, 양념게장이 서비스로 나오며 두 메뉴 다 무한리필 가능합니다. 밑반찬도 푸짐하고 맛도 깔끔합니다.
			게장을 계속 리필해서 먹을 수 있다는 점이 큰 매력입니다. 100% 국내산 갈치와 돌게를 사용합니다.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 8시 ~ 오후 9시</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[2]+" alt='명동게장_위치'>");
		</script>
	</div>
	<div id="res04">
		<h2>백천선어마을</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[3]+" alt='백천선어마을'>");
		</script>
		<p>
			여수 엑스포근처에 있는 현지인이 추천하는 맛집입니다. 선어는 싱싱한 생선을 미리 죽여 피를 빼고 냉장보관해 숙성시켜 회로 먹는 것으로 활어랑은 차이가 있습니다.
			민어 전문점으로 민어회, 민어정식 등이 있으며 구이백반, 게장백반은 10,000원이며 남도백반은 7,000원이에요. 구이와 백반을 같이 맛볼 수 있습니다.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 11시 ~ 오후 9시</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[3]+" alt='백천선어마을_위치'>");
		</script>
	</div>
	<div id="res05">
		<h2>맛나게장</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[4]+" alt='맛나게장'>");
		</script>
		<p>
			거북선공원 근처에 있는 백반집입니다. 돌게게장 정식은 12,000원, 꽃게게장 정식은 25,000원 입니다. 전에는 무한리필이었는데 
			어획량 부족으로 현재는 리필 한번까지 가능합니다. 정식에는 조림, 찌개, 양념게장, 간장게장, 각종 나물 등 푸짐하게 나옵니다.
			포장 및 택배판매도 하고 있어요.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 10시 ~ 오후 9시(수요일 휴무)</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[4]+" alt='맛나게장_위치'>");
		</script>
	</div>
	<div id="res06">
		<h2>싱싱게장마을</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[5]+" alt='싱싱게장마을'>");
		</script>
		<p>
			여수시청 문수청사 바로 옆에 있는 게장집입니다. 오후3시면 영업종료되는 곳이에요. 돌게장백반 한가지 메뉴만 하며 1인 10,000원입니다.
			게장은 무한리필이에요. 갈치조림, 찌개 등 각종 반찬이 푸짐하게 나옵니다. 마지막에는 누룽지도 나와요. 점심시간에는 어느정도 웨이팅은 예상해야합니다.
			2시 이후에 도착하면 못먹을 수도 있으니 늦게 도착하면 전화로 문의해보는 것이 좋습니다. 착한 가격으로 배부르게 맛있게 먹을 수 있습니다.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 11시 ~ 오후 9시</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[5]+" alt='싱싱게장마을_위치'>");
		</script>
	</div>
	<div id="res07">
		<h2>상아식당</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[6]+" alt='상아식당'>");
		</script>
		<p>
			여수 어항단지에 있는 산장어 전문점입니다. 기본 2인분 이상부터이며 원조통장어탕(1인) 14,000원, 장어양념구이(1인)	 20,000원,
			 장어소금구이(1인) 20,000원입니다. 장어 맛이 순하고 국물은 비린내없이 깔끔합니다. 밑반찬으로 나오는 멍게젓도 맛있습니다. 
			 통장어탕은 큰 뚝배기에 실한 장어가 큼지막하게 토막되어 들어가있으며 구이도 깔끔한 맛이 일품입니다.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 7시 ~ 오후 9시</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[6]+" alt='상아식당_위치'>");
		</script>
	</div>
	<div id="res08">
		<h2>행운무궁화</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[7]+" alt='행운무궁화'>");
		</script>
		<p>
			이순신광장, 천사벽화마을 근처에 있는 갓삼합집입니다. 2인분 이상 주문 가능하며 한우갓삼합(1인) 32,000원, 차돌박이 갓삼합(1인) 25,000원이
			메인입니다. 각종 야채, 해물, 갓김치와 삼합을 함께 먹기에 갓삼합이라고 2부릅니다. 고기, 왕새우, 키조개, 전복, 버섯, 부추 등을 불판에 구워서 먹습니다.
			양도 충분하며 반찬도 실합니다.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 11시 30분 ~ 오후 12시(평일 15~16시 브레이크 타임)</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[7]+" alt='행운무궁화_위치'>");
		</script>
	</div>
	<div id="res09">
		<h2>덕충식당</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[8]+" alt='덕충식당'>");
		</script>
		<p>
			여수 엑스포 근처에 있는 백반집입니다. 백반은 6,000원, 서대회무침은 10,000원입니다. 두 메뉴 다 13첩 반찬이 나오며
			가성비가 뛰어납니다. 반찬에는 양념게장, 간장게장, 복어국 등이 나옵니다. 서대회는 여수를 대표하는 음식 중 하나로 서대를 손질해서
			깻잎, 오이등 채소와 고추장등으로 버무린 것이 서대회무침이에요. 아침 일찍부터 영업하기에 값싼 가격에 조식먹기 좋은 곳입니다.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 8시 ~ 오후 8시</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[8]+" alt='덕충식당_위치'>");
		</script>
	</div>
	<div id="res10">
		<h2>진미꽃게탕</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[9]+" alt='진미꽃게탕'>");
		</script>
		<p>
			여수시청 바로 옆에 위치한 꽃게탕이 유명한 가게입니다. 꽃게탕 대 50,000원 중 40,000원 소 30,000원입니다.
			꽃게찜도 동일한 가격이에요. 탕에는 각종 야채, 꽃게, 낙지가 들어있으며 된장육수를 넣고 끓여서 더 깔끔하고 시원한 맛을 느낄 수 있습니다.
			마지막에 라면을 넣어서 먹어도 좋습니다.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 11시 ~ 오후 9시</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[9]+" alt='진미꽃게탕_위치'>");
		</script>
	</div>
	<div id="res11">
		<h2>좌수영바게트버거</h2>
		<script type="text/javascript">
			document.write("<img class='resimg01' src="+resimg[10]+" alt='좌수영바게트버거'>");
		</script>
		<p>
			이순신광장 근처에 있는 바게트버거집입니다. 바게트버거는 4,000원이며 아메리카노 세트는 7,300원, 콜라세트는 5,000원이에요.
			겉은 바삭한 바게트이며 속은 고기, 토핑, 야채 등으로 꽉 차있습니다. 청양고추가 들어있어서 매콤하지만 느끼한 맛을 잡아줘서 질리지 않습니다.
			간식거리로 좋아요. 바게트 빵때문에 입천장이 까질 수 있으니 주의하며 드세요.
		</p>
		<br>
		<p>
			<span>&lt;영업시간&gt;</span><p>오전 10시 ~ 오후 9시</p><span>&lt;위치&gt;</span>
		</p>
		<script type="text/javascript">
			document.write("<img class='resimg02' src="+resmap[10]+" alt='좌수영바게트버거_위치'>");
		</script>
	</div>
	<a href="#"><div id="top">Top</div></a>
</body>
</html>