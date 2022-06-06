<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="board.css">
<title>Insert title here</title>
<script type="text/javascript">
	var linklist = [
		"board_service_01.jsp",
		"board_service_02.jsp",
		"board_service_03.jsp"
		]
	
	var linkcount = 2;
	
	function leftclick() {
		if(linkcount != 0){
			linkcount--;}
		return linklist[linkcount];
	}
	function rightclick() {
		if(linkcount != linklist.length){
			linkcount++;}
		return linklist[linkcount];
}
</script>
</head>
<body>
	<table border="1px" width="900px" height="550px">
		<tr id=firstline>
			<th width="8%"></th>
			<th>제목</th>
			<th width="8%">작성자</th>
			<th width="8%">작성일자</th>
		</tr>
		<tr>
			<th>21</th>
			<td class="note">문의사항 입니다.</td>
			<td>홍길동</td>
			<td>2022.02.03</td>
		</tr>
		<tr>
			<th>22</th>
			<td class="note">문의 남겨요.</td>
			<td>이순신</td>
			<td>2022.02.03</td>
		</tr>
		<tr>
			<th>23</th>
			<td class="note">전화를 안받네요.</td>
			<td>을지문덕</td>
			<td>2022.02.04</td>
		</tr>
		<tr>
			<th>24</th>
			<td class="note"></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<th>25</th>
			<td class="note"></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<th>26</th>
			<td class="note"></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<th>27</th>
			<td class="note"></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<th>28</th>
			<td class="note"></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<th>29</th>
			<td class="note"></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<th>30</th>
			<td class="note"></td>
			<td></td>
			<td></td>
		</tr>
	</table>
	<h3 style="text-align: center;">
	<script type="text/javascript">
		document.write("&lt;".link(leftclick())+"&nbsp;");
		document.write("1".link(linklist[0])+"&nbsp;");
		document.write("2".link(linklist[1])+"&nbsp;");
		document.write("3".link(linklist[2])+"&nbsp;");
		document.write("&gt;".link(rightclick()));
	</script>
	</h3>
	<button id='writeBtn' onclick='newWrite()'>글쓰기</button>
</body>
</html>