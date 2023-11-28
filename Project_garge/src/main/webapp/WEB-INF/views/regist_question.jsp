<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
 	font-size: -webkit-xxx-large;
 	margin-bottom: 1rem;
 	margin-top: 1rem;
}
.custom_img{
	object-fit: cover;
	margin-left: 5px; 
	margin-right: 5px; 
    border: solid;
    border-color: chartreuse;
    border-width: thin;
}
#imgArea{
    overflow: auto;
    white-space: nowrap;
    width: 100%;
}
</style>
	<jsp:include page="inc/style.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="inc/top.jsp"></jsp:include>
		<div class="custom_flex2" style="width: 40%;">
			<h2 class="fw-bold" style="text-align: center;">1:1문의</h2>
			<hr class="custom_border_grove">
			<form action="QuestionRegistPro" method="post" onsubmit="return result()" enctype="multipart/form-data" >
				<select class="form-control" id="qna_category" style="margin: 20px 0; height: 3.2rem;">
					<option selected disabled>문의 유형을 선택하세요</option>
					<option value="1">이용제재</option>
					<option value="2">신고접수</option>
					<option value="3">회원/이용문의</option>
				</select>
				
				<select class="form-control" id="qna_category2" style="margin: 20px 0; height: 3.2rem;" disabled>
					<option>문의 유형을 선택하세요</option>
					<option>이용제재</option>
					<option>신고접수</option>
					<option>회원/이용문의</option>
				</select>
				<textarea class="form-control" style="resize: none; margin-bottom: 1.25rem; " rows="10" cols="10"></textarea>
				<div class="fs-6 fw-semibold">
					사진 동영상 첨부(
					<span id="count">0</span>/10)
				</div>
				<div id="imgArea" style="display: flex;">
					<button type="button" class="custom_btn" onclick="document.all.file.click();">
						<i class="bi bi-camera"></i>
					</button>		
					<input type="hidden" name="files" value="">
					<input type="file" accept=" audio/*, video/*, image/*" name="file" id="file" style="display:none"/>
				</div>
				<div class="d-grid gap-2">
					<input type="submit"  style="height: 3.5rem;" class="btn btn-success" value="등록하기" onclick="location.href='FraudInquiry'">
				</div>
			</form>
		</div>
	<jsp:include page="inc/bottom.jsp"></jsp:include>
	<script type="text/javascript">
		var count = 0;
		var files = []; 
		$("input[type=file][name=file]").on("change", function(event) {
			const file = event.target.files;
			count += 1;
			if(count > 10){
				alert("등록 최대갯수를 초과하였습니다");
				count -= 1;
				return;
			}
			
			files.push(file);
			$("#count").text(count);
			var image = new Image();
			var ImageTempUrl = window.URL.createObjectURL(file[0]);
			
			
			image.src = ImageTempUrl;
			image.name = file[0].name;
			image.className = "custom_btn custom_img";
			
			// 스크립트
// 			debugger;
			// JQuery
			$("#imgArea").append(image);
			
			$(image).on("click",function(){
				if(confirm("삭제하시겠습니까?")){
					$(this).remove("");
					count -= 1;
					$("#count").text(count);
					for(let i = 0; i < files.length; i++){
						if(file[i].name == $(this)[0].name){
							 files.splice(i, 1);
						}						
					}
				debugger;
				console.log(files);
				}
			});
		});
		$("#qna_category").on("change",function(){
			$("#qna_category2").attr("disabled",false);
// 			$("#qna_category").val() == "1"
		});
		
		function result() {
			debugger;
			return false;
		}
		
	</script>
</body>
</html>