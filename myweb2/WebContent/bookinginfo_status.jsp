<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin: 0; padding: 0;}
	
	a{
		color: black;
		text-decoration: none;
	}	
	#arrow{
		font-size: 100px;
	}
	
	h1{
		text-align: center;
		font-size: 50px;
	}
	h3{
		text-align: center;
		font-size: 30px;
	}
	#statusIcon{
		margin-left: 45px;
		display: inline-block;
		width: 50%;
	}
	
	.pos, .reserv, .comple, .quiry{
		display: inline-block;
		border: 1px black solid;
		border-radius: 3px;
		color: white;
		font-weight: bold;
		margin: 10px 2.5% 10px 5px;
	}
	.pos{background: green}
	.reserv{background: skyblue}
	.comple{background: red}
	.quiry{background: black}
	
	#convers{float: right; margin: 10px 2.5% 10px 5px;font-size: 20px;}

	table{
		border: 1px black solid;
		border-collapse: collapse;
		table-layout: fixed;
	}
	th{
		border-top: 1px black solid;
		border-left: 1px black solid;
		border-right: 1px balck solid;
	}
	td{
		border-left: 1px black solid;
		border-right: 1px balck solid;
	}
	table{
		margin: 20px auto;
		width: 95%;
	}
	th{
		height: 50px;
		font-size: 20px;
		text-align: center;
	}
	td{
		height: 200px;
		font-size: 18px;
		text-align: center;
	}
	
</style>
</head>
<body>
	<header>
		<h1><a class='arrow' id='leftMonth' href='#'><sub>&lt;</sub></a>&nbsp; &nbsp; &nbsp; &nbsp; 2022.02&nbsp; &nbsp; &nbsp; &nbsp; <a class='arrow' id='rightMonth' href='#'><sub>&gt;</sub></a></h1>
		<h3>오늘날짜 : 2022년 02월 09일 (수)</h3>
	</header>
	<br>
	<hr>
	<div id='statusIcon'>
		<div class='pos'>가</div>예약가능
		<div class='reserv'>진</div>예약진행
		<div class='comple'>완</div>예약완료
		<div class='quiry'>전</div>전화문의
	</div>
	<div id='convers'>
		<input id='checkbox' type="checkbox" onclick="convers()">날짜별 요금보기
	</div>
	<div>
	<table>
		<tr><th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th></tr>
		<tr><th></th><th></th><th>1</th><th>2</th><th>3</th><th>4</th><th>5</th></tr>
		<tr><td></td><td></td><td>예약종료</td><td>예약종료</td><td>예약종료</td><td>예약종료</td><td>예약종료</td></tr>
		<tr><th>6</th><th>7</th><th>8</th><th>9</th><th>10</th><th>11</th><th>12</th></tr>
		<tr><td>예약종료</td><td>예약종료</td><td>예약종료</td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td></tr>
		<tr><th>13</th><th>14</th><th>15</th><th>16</th><th>17</th><th>18</th><th>19</th></tr>
		<tr><td><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='reserv'>진</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='reserv'>진</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='reserv'>진</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td></tr>
		<tr><th>20</th><th>21</th><th>22</th><th>23</th><th>24</th><th>25</th><th>26</th></tr>
		<tr><td><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='reserv'>진</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='reserv'>진</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='reserv'>진</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='reserv'>진</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='reserv'>진</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td></tr>
		<tr><th>27</th><th>28</th><th>29</th><th>30</th><th>31</th><th></th><th></th></tr>
		<tr><td><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='comple'>완</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='quiry'>전</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">오션1호실</a><br><div class='quiry'>전</div><a href="case_bookinginfo_booking.jsp">오션2호실</a><br><div class='pos'>가</div><a href="case_bookinginfo_booking.jsp">블루1호실</a><br></td><td></td><td></td></tr>
	</table>
	</div>
</body>
</html>