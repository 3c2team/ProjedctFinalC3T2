<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Male-Fashion | Template</title>
<style type="text/css">
.custom_btn{
	background-color: rgb(241 244 246);
	border: var(--bs-btn-border-width) solid var(--bs-btn-border-color);
	height: 5rem;
	width: 5rem;
	border-radius: 0.25rem;
 	color: gray; 
 	font-size: 2rem;
 	margin-bottom: 1rem;
 	margin-top: 1rem;
}
</style>
	<jsp:include page="inc/style.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="inc/top.jsp"></jsp:include>
		<div class="custom_flex2" style="width: 40%;">
			<h2 class="fw-bold" style="text-align: center;">1:1문의</h2>
			<hr class="custom_border_grove">
			<select class="form-control" style="margin: 20px 0;">
				<option>문의 유형을 선택하세요</option>
				<option value="1">이용제재</option>
				<option value="2">신고접수</option>
				<option value="3">회원/이용문의</option>
			</select>
			<select class="form-control" style="margin: 20px 0;" disabled>
				<option>문의 유형을 선택하세요</option>
				<option>이용제재</option>
				<option>신고접수</option>
				<option>회원/이용문의</option>
			</select>
			<textarea class="form-control" style="resize: none; margin-bottom: 1.25rem; " rows="10" cols="10"></textarea>
			<div class="fs-6 fw-semibold">
				사진 동영상 첨부(0/10)
			</div>
			<div>
				<button class="custom_btn"  onclick="document.all.file.click();">
					<i class="bi bi-camera"></i>
				</button>		
				<div id="imgArea">
				</div>
				
				<input type="file" accept=" audio/*, video/*, image/*" name="file" id="file" style="display:none"/>
			</div>
			<div class="d-grid gap-2">
				<input type="button" class="btn btn-light" value="1대1 문의하기" onclick="location.href='FraudInquiry'">
				<input type="button" id="open" class="btn btn-light" value="내 문의 내역"onclick="location.href=">
			</div>
		</div>
	<jsp:include page="inc/bottom.jsp"></jsp:include>
	<script type="text/javascript">
		$("input[type=file][name=file]").on("change", function(event) {
			const file = event.target.files;
			
			var image = new Image();
			var ImageTempUrl = window.URL.createObjectURL(file[0]);
			image.src = ImageTempUrl;
			image.onClick = result();
			debugger;
			$("#imgArea").append(image);
		});
		function result() {
			alert();
		}
	</script>
</body>
</html>