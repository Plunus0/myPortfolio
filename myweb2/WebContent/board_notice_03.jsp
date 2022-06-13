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
		"board_notice_01.jsp",
		"board_notice_02.jsp",
		"board_notice_03.jsp"
		]
	
	var linkcount = 2;
	
	function leftClick() {
		if(linkcount != 0){
			linkcount--;}
		return linklist[linkcount];
	}
	function rightClick() {
		if(linkcount == linklist.length){

		}else{
			linkcount++;
		}
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
			<td class="note">공지사항 입니다.</td>
			<td>관리자</td>
			<td>2022.01.31</td>
		</tr>
		<tr>
			<th>22</th>
			<td class="note">2월 이벤트!!</td>
			<td>관리자</td>
			<td>2022.02.01</td>
		</tr>
		<tr>
			<th>23</th>
			<td class="note">환영합니다.</td>
			<td>관리자</td>
			<td>2022.02.02</td>
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
		document.write("&lt;".link(leftClick())+"&nbsp;");
		document.write("1".link(linklist[0])+"&nbsp;");
		document.write("2".link(linklist[1])+"&nbsp;");
		document.write("3".link(linklist[2])+"&nbsp;");
		document.write("&gt;".link(rightClick()));
	</script>
	</h3>
	<button id='writeBtn' onclick='newWrite()'>글쓰기</button>
</body>
</html>