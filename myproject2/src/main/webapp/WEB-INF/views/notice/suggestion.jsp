<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/review.js"></script>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/suggestion.css">
</head>
<body>
   <!-- header -->
   <jsp:include page="../header.jsp"></jsp:include>

   <!-- content -->
   <form action="">
		<table style="width: 70%; font-size: 15px;">
			<tr>
				<td>
					<h2 class="review_title" style="margin-bottom:10px; margin-top: 50px;">π’ μ¬λ¬λΆμκ² λ§μν μ΄λ μ¨λμ?</h2> <br>
				</td>
			</tr>
			<tr>
				<td>
					<p style="margin-bottom:3px;">λ§μνλ₯Ό μ΄μ©νμλ©΄μ λΆνΈνλ μ , μ μνκ³  μΆμ μ λ€μ λ¨κ²¨μ£ΌμΈμ.</p>
					<p style="margin-bottom:3px;">λ¨κ²¨μ£Όμ  μμ€ν μκ²¬λ€μ λ΄λΉμκ° μ€μκ°μΌλ‘ νμΈνκ³  μμ΄μπ§</p> <br>
					<p style="margin-bottom:3px;">λΆνΈ λ° κ°μ  μ¬ν­μ λΉ λ₯΄κ² μ‘°μΉνκ³ , μ μν΄μ£Όμ  μ¬ν­μ μ κ·Ή κ²ν &middot;λ°μν κ²μ.</p>
					<p>ν­μ κ³ κ°λ μκ²¬μ κ·κΈ°μΈμ¬ λ£κ³  λμ± λ°μ νλ λ§μν λκ² μ΅λλ€.</p>
				</td>
			</tr>
			<tr>
				<td class="rcategory">
					<p style="margin-top: 65px; margin-bottom:10px;">1. μΉ΄νκ³ λ¦¬
						<img src="http://localhost:9000/manwol/resources/images/circle_icon.jpg" width="10px;" style="padding-bottom: 3px;">
					</p>
					<div>
						<p  style="margin-bottom:7px;"><input type="radio" name="category"> ππ» λΆνΈνμ΄μ (μ΄μ¬ μμ λ§, λΆλ§μ‘±μ€λ° μλΉμ€ λ± λ°λν μΆ©κ³  νλ§λ)</p>
						<p style="margin-bottom:10px;"><input type="radio" name="category"> π‘ μ μνκ³  μΆμ΄μ (κ°μ  λ°©μ, μ μ ν μΆμ² λ± λ°μ§μ΄λ μμ΄λμ΄)</p>
						<p><input type="radio" name="category"> κΈ°ν μκ²¬</p>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<p style="margin-top: 25px;">2. μ λͺ©
						<img src="http://localhost:9000/manwol/resources/images/circle_icon.jpg" width="10px;" style="padding-bottom: 3px;">
					</p> 
					<input type="text" style="margin-top: 30px; border-top:none; border-left: none; border-right: none; width: 100%; border-bottom: 1px solid black;">
				</td>
			</tr>
			<tr>
				<td>
					<p style="margin: 15px 0 20px 0;">3. νκ³  μΆμ λ§μ λ§μκ» μ μ΄μ£ΌμΈμ.
						<img src="http://localhost:9000/manwol/resources/images/circle_icon.jpg" width="10px;" style="padding-bottom: 3px;">
					</p> 
					<span><textarea style="border-top:none; border-left: none; border-right: none; width: 100%; height:75px;  border-bottom: 1px solid black;"></textarea></span>
				</td>
			</tr>
			<tr>
				<td>
					<p style="margin: 15px 0 5px 0;">4. μ΄λ―Έμ§/λμμ μ¬λ¦¬κΈ°(μ΅λ 50MB μ²¨λΆ κ°λ₯)</p> 				
					<label>
						<img src="http://localhost:9000/manwol/resources/images/btn.jpg" width="150px;">
						<span><input type='file' style="margin-bottom: 30px;"></span>
					</label>	
					
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<button type="button" style="padding: 10px 27px 10px 25px; margin-bottom: 100px; background: white; border: 1.3px solid rgb(95,93,93);"><img alt="check_icon" src="http://localhost:9000/manwol/resources/images/check_icon.png" width="18px;" onclick=" fn_submit();"><strong style="color: #0A2155;"> λ³΄λ΄κΈ°</strong></button>
				</td>
			</tr>
		</table>
	</form>

	<!-- λͺ¨λ¬μ°½ -->
	<div class="modal">
		<div class="modal_inner">
			<div class="desc">
				<div class="desc_header">
					<div id="user">
						<img alt=""
							src="http://localhost:9000/manwol/resources/images/review/μ¬μ©μ.png">
					</div>
					<div class="star_id">
						<p class="star_img">βββββ</p>
						<p id="id">goun****</p>
					</div>
					<button class="close_modal">&times;</button>
				</div>

				<div class="option">
					<div id="option1">
						<small>[μ΅μ] μ’λ₯: λ°ν¬ν°/μ©λ: 12κ°μ (-17%)</small>
					</div>
					<div id="option2">
						<p>λ§μμ΄μ!</p>
						<p>λ μνΌλλ‘ νλ©΄ λ§μκΎΈ μ°ν΄μ μ λ μ°μ μ‘°κΈλλ£μ΄μ λ¨Ήμ΄μ</p>
					</div>
				</div>

				<div class="product">
					<div id="product1">
						<a href="http://localhost:9000/manwol/product_detail"> <img
							alt=""
							src="http://localhost:9000/manwol/resources/images/product/λ§μν μλ£ μμ‘ λ² μ΄μ€ 10μ’(2κ°μ,12κ°μ).jpg"
							style="width: 45px; height: 45px;">
						</a>
					</div>
					<div id="product2">
						<a href="http://localhost:9000/manwol/product_detail"> <span>λ§μν
								μλ£ μμ‘ λ² μ΄μ€ 10μ’(...</span>
						</a>
					</div>
				</div>

				<div class="comment1">
					<p style="font-size: 14px;">
						<span style="color: black;">λκΈ </span><span
							style="color: #0042A9;">0</span>
						<button class="cw_btn">λκΈμ°κΈ°</button>
					</p>
				</div>

				<div class="comment2">
					<form action="" name="comment2">
						<textarea name="c" id="comment2_te" placeholder="λκΈ" rows="30"
							cols="1000"></textarea>
						<p>
							<label class="filebutton"> 
								<img src="http://localhost:9000/manwol/resources/images/review/image.png" />
								<span><input type="file" id="myfile" name="myfile"></span>
							</label>
							<button type="button" class="w_btn" onclick=" fn_submit();">μμ±</button>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!--  footer -->
   <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>