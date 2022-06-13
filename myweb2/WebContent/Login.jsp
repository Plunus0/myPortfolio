<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{ margin: 0 auto; padding: 0; font-size: 18px;}
	h1{
		margin-left: 40px;
		margin-top: 40px;
		margin-bottom: 20px;
	}
	body{
		background: aliceblue;
	}
	input{
		width: 150px;
	}
	button{
		width: 60px;
		height: 58px;
	}
	div{
		border: 1px black solid;
		display: inline-block;
		margin: 40px;
		margin-top: 10px;		
		padding: 20px;
	}
	a{
		font-size: 13px;
		text-align: right;
	}
	span{
		font-size:13px;
		text-align: left;
	}
</style>
<script type="text/javascript">
	function loginInit(){
		document.getElementById('name').focus();
	}
	function loginCheck(){
		window.open('case_bookinginfo_check.jsp','booking_check','_blank');
	}
	function inputCheck(obj){
		if(obj.value==""){
			alert("값을 입력 바랍니다.");
			obj.focus();
		}
	}
</script>
</head>
<body onload="loginInit()">
	<header>
		<h1>블루오션 펜션에 오신 것을 환영합니다.</h1>
	</header>
	<div>
		<form method="post">
			<table>
				<tr>
					<td>성&nbsp;&nbsp;&nbsp;함</td>
					<td><input id="name" name="name" type="text" placeholder="홍길동" onblur='inputCheck(this)'></td>
					<td rowspan="2"><button type="submit" value="submit" onclick='loginCheck()'>확인</button></td>
				</tr>
				<tr>
					<td>연락처</td>
					<td><input
					id="phone" 
					name="phone_number" 
					type="tel"
					placeholder="010-1234-5678" 
					pattern="\d{3}-\d{3,4}-\d{4}"
					onblur='inputCheck(this)'
					onkeydown="this.value = this.value.replace(/[^0-9-]/g, '');"
					></td>
				</tr>
			</table>
		</form>
			<span>예약 내역이 없다면?</span> >>> <a href="case_bookinginfo_booking.jsp" target="_blank">숙소 예약하기</a>
	</div>
</body>
</html>