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
		"images/객실내부31.jpg",
		"images/객실내부32.jpg",
		"images/객실내부33.jpg",
		"images/객실내부34.jpg",
		"images/객실내부35.jpg"
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
	<img id="view" src="images/객실내부31.jpg" alt="view">
	<hr>
	<img class="button" id="leftbutton" src="images/left arrow.png" alt="left" onclick="leftclick(view)">
	<img class="button" id="rightbutton" src="images/right arrow.png" alt="right" onclick="rightclick(view)">
</body>
</html>