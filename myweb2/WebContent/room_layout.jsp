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
	function leftclick(obj) {
		obj.src="images/객실배치도.jpg";
	}
	function rightclick(obj) {
		obj.src="images/객실배치도.jpg";
	}
	
</script>
</head>
<body>
	<img id="view" src="images/객실배치도.jpg" alt="view">
	<hr>
	<img class="button" id="leftbutton" src="images/left arrow.png" alt="left" onclick="leftclick(view)">
	<img class="button" id="rightbutton" src="images/right arrow.png" alt="right" onclick="rightclick(view)">
</body>
</html>