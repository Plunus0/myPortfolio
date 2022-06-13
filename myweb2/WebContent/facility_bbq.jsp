<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin: 0; padding: 0}
	#view{
		margin: 1%;
		width: 903px; height: 550px;
	}
	.button{
		width: 100px; height: 50px;
		margin-top: 1%;
		margin-left: 26%;
	}
	#leftbutton:hover {
		animation-name : leftarrowon;
		animation-duration : 0.5s;
		animation-iteration-count : infinite;
	}
	#rightbutton:hover {
		animation-name : rightarrowon;
		animation-duration : 0.5s;
		animation-iteration-count : infinite;
	}
	
	@keyframes leftarrowon{
	0% {transform: translateX(0);}
	25% {transform: translateX(-5px);}
	50% {transform: translateX(-10px);}
	75% {transform: translateX(-15px);}
	100% {transform: translateX(-20px);}
	}
	
	@keyframes rightarrowon{
	0% {transform: translateX(0);}
	25% {transform: translateX(5px);}
	50% {transform: translateX(10px);}
	75% {transform: translateX(15px);}
	100% {transform: translateX(20px);}
	}
	
	
	
	
</style>
<script type="text/javascript">
	var images = [
		"images/바베큐1.png",
		"images/바베큐2.jpg"
		]
	
	var imgcount = 0;
	
	function leftclick(obj) {
		if(imgcount != 0){
			imgcount--;}
		obj.src=images[imgcount];
	}
	function rightclick(obj) {
		if(imgcount != images.length-1){
			imgcount++;}
		obj.src=images[imgcount];
	}
</script>
</head>
<body>
	<img id="view" src="images/바베큐1.png" alt="view">
	<hr>
	<img class="button" id="leftbutton" src="images/left arrow.png" alt="left" onclick="leftclick(view)">
	<img class="button" id="rightbutton" src="images/right arrow.png" alt="right" onclick="rightclick(view)">
	<p>
	&nbsp;&nbsp;&nbsp;<span style="text-decoration: underline; font: 18px"><b>바베큐장 이용안내</b></span><br>
	&nbsp;&nbsp;&nbsp;이용요금 : 30,000원 (숯 제공)<br>
	&nbsp;&nbsp;&nbsp;이용시간 : 17:00 ~ 21:00
	</p>
</body>
</html>