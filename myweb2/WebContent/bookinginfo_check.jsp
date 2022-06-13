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
	}
	#cancel{
		background: red;
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
	function init(){
		var cancel = document.getElementById('cancel');
		cancel.onmousedown=function(){
			cancel.style.background='darkred';
		}
		cancel.onmouseup=function(){
			cancel.style.background='red';
		}
		cancel.addEventListener('click',cancelq);
	}	
	
	function cancelq(){
		var cancel = confirm("예약을 취소하시겠습니까?");
		if(cancel == true){
			var notice = alert("예약을 취소했습니다.");
		}
	}

</script>
</head>
<body onload="init()">
	<script type="text/javascript">
		var name = "홍길동";
		var phone1 = "010-****-****";
		var phone2 = "010-####-####";
		var email = "***@naver.com";
		var roomName = "블루 1호실";
		var date = "2022-02-20~2022-02-23";
		var people = "3인";
		var fee = "200,000원";
		var payment = "200,000원";
		var paymentMethod = "카드 결제";
		var status = "예약완료";
		var request = "수영장 및 바베큐장 사용 예정입니다.";
		var p1 = new Guest(name, phone1, phone2, email, roomName, date, people, fee, payment, paymentMethod, status, request);
	
		document.write("<table>");
		document.write("<h2>예약자 정보</h2>");
		document.write("<tr><th>예약자</th><th>연락처1</th><th>연락처2</th><th>이메일</th></tr>");
		document.write("<tr><td>"+p1.name+"</td><td>"+p1.phone1+"</td><td>"+p1.phone2+"</td><td>"+p1.email+"</td></tr>");
		document.write("</table>");
		document.write("<h2>요청사항</h2>");
		document.write("<div id='req'>"+p1.request+"</div>");
		document.write("<table>");
		document.write("<h2>객실정보</h2>");
		document.write("<tr><th>객실명</th><th>이용일</th><th>이용인원</th><th>요금</th></tr>");
		document.write("<tr><td>"+p1.roomName+"</td><td>"+p1.date+"</td><td>"+p1.people+"</td><td>"+p1.fee+"</td></tr>");
		document.write("</table><br><br>");
		document.write("<table>");
		document.write("<tr><th>결제금액</th><th>결제방법</th><th>예약상태</th></tr>");
		document.write("<tr><td>"+p1.payment+"</td><td>"+p1.paymentMethod+"</td><td>"+p1.status+"</td></tr>");
		document.write("</table>");
		document.write("<div id='cancel'><h2>예 약 취 소</h2></div>");
	
	</script>
</body>
</html>