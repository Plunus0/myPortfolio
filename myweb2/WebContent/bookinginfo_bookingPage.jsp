<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="jqtransformplugin/jqtransform.css">
<script type="text/javascript" src="base.js"></script>
<script type="text/javascript" src="jqtransformplugin/requiered/jquery.js"></script>
<script type="text/javascript" src="jqtransformplugin/jquery.jqtransform.js"></script>
<title>Insert title here</title>
<style type="text/css">
	* {margin: 10px; padding: 0;}
	a {text-decoration: none; color: white;}
	table{
		width: 890px;
		height: 70px;
		border-collapse: collapse;
		table-layout: fixed;
	}
	th{background: lightgray;}
	th, td{
		border: 1px black solid;
		text-align: center;
	}
	#req{
		width: 887px;
		height: 100px;
		border: 1px black solid;
		background: lightgray;
		padding: 0;
	}
	#reqTA{
		width: 850px;
		heigth: 90px;
		background: lightgray;
	}
	#paymentBtn{
		background: lightskyblue;
		border: none;
		position: relative;
		left: 300px;
		border-radius: 10px;
		width: 250px;
		height: 50px;
		color: white;
		text-align: center;
		padding: 1px;
	}
</style>
<script type="text/javascript">
	function Guest(name, phone1, phone2, email, roomname, date, people, fee, payment, paymentmethod, status, request){
		this.name = name;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.email = email
		this.roomName = roomname;
		this.date = date;
		this.people = people;
		this.fee = fee;
		this.payment = payment;
		this.paymentMethod = paymentmethod;
		this.status = status;
		this.request = request;
	}
		
	function bookingInit(){
		document.getElementById('name').focus();
		name = document.getElementById('name').value;
		phone1 = document.getElementById('phone1').value;
		phone2 = document.getElementById('phone2').value;
		email = document.getElementById('email').value;
		request = document.getElementById('reqTA').value;
		
		var paymentBtn = document.getElementById('paymentBtn');
		paymentBtn.onmousedown=function(){
			paymentBtn.style.background='cyan';
		}
		paymentBtn.onmouseup=function(){
			paymentBtn.style.background='lightskyblue';
		}
		paymentBtn.addEventListener('click',paymentQ);
	}
	
	
	function paymentQ(){
		var check = confirm("??????????????? ???????????? ?????? ??????????????????.");
		if(check == true){
			var notice = alert("????????? ?????????????????????.");
			p1.name = name.value;
			p1.phone1 = phone1.value;
			p1.phone2 = phone2.value;
			p1.email = email.value;
			p1.request = reqTA.value;
		}
	}
	
	function inputCheck(obj){
		if(obj.value==""){
			alert("?????? ?????? ????????????.");
			obj.focus();
		}
	}
	
	var name;
	var phone1;
	var phone2;
	var email;
	var request;
	var roomName = "?????? 1??????";
	var date = "2022-02-20~2022-02-23";
	var people = "3???";
	var fee = "200,000???";
	var payment = "200,000???";
	var paymentMethod = "?????? ??????";
	var status = "????????????";
	var p1 = new Guest(name, phone1, phone2, email, roomName, date, people, fee, payment, paymentMethod, status, request);
	
	$(function(){
		$('.userForm').jqTransform({imgPath:'jqtransform/jqtransformplugin/img/'});
	});
	
</script>
</head>
<body onload="bookingInit()">
	<script type="text/javascript">
		
		document.write("<form class='userForm'>");
		document.write("<table>");
		document.write("<h2>????????? ??????</h2>");
		document.write("<tr><th>?????????</th><th>?????????1</th><th>?????????2</th><th>?????????</th></tr>");
		document.write("<tr><td><input id='name' type='text' placeholder='???   ???' onblur='inputCheck(this)'></td><td><input id='phone1' type='text' placeholder='010-****-****' onblur='inputCheck(this)'></td><td><input id='phone2' type='text' placeholder='010-####-####'></td><td><input id='email' type='text' placeholder='***@naver.com' onblur='inputCheck(this)'></td></tr>");
		document.write("</table>");
		document.write("</form>");
		document.write("<h2>????????????</h2>");
		document.write("<div id='req'><textarea id='reqTA' rows='5' cols='120'></textarea></div>");
		document.write("<form class='userForm'>");
		document.write("<table>");
		document.write("<h2>????????????</h2>");
		document.write("<tr><th>?????????</th><th>?????????</th><th>????????????</th><th>??????</th></tr>");
		document.write("<tr><td>"+p1.roomName+"</td><td>"+p1.date+"</td><td>"+p1.people+"</td><td>"+p1.fee+"</td></tr>");
		document.write("</table><br><br>");
		document.write("<table>");
		document.write("<tr><th>????????????</th><th>????????????</th><th>????????????</th></tr>");
		document.write("<tr><td>"+p1.payment+"</td><td>"+p1.paymentMethod+"</td><td>"+p1.status+"</td></tr>");
		document.write("</table>");
		document.write("<div id='paymentBtn'><h2>??? ??? ??? ???</h2></div>");
		document.write("</form>");
	</script>
		
</body>
</html>