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
#reset{
    float: inline-end;
    cursor: pointer;
}
</style>
	<jsp:include page="inc/style.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="inc/top.jsp"></jsp:include>
		<div class="custom_flex2" style="width: 40%;">
			<h2 class="fw-bold" style="text-align: center;">1:1문의</h2>
			<hr class="custom_border_grove">
			<form action="QuestionRegistPro" method="post" onsubmit="return dmddo()" enctype="multipart/form-data" >
				<select class="form-control" id="qna_category" style="margin: 20px 0; height: 3.2rem;">
					<option selected disabled>문의 유형을 선택하세요</option>
				</select>
					<c:forEach var="selectQnaCategory" items="${selectQnaCategory}">
						<h5>${selectQnaCategory.qna_category_name}</h5>
					</c:forEach>
					<select class="form-control" id="qna_category_datail" style="margin: 20px 0; height: 3.2rem;" disabled>
						<option>상세 유형을 선택하세요</option>
					</select>
				<textarea class="form-control" style="resize: none; margin-bottom: 1.25rem; " rows="10" cols="10"></textarea>
				<div class="fs-6 fw-semibold">
					사진 동영상 첨부(
					<span id="count">0</span>/10) <span id="reset">초기화</span>
				</div>
				<div style="display: flex;">
					<button type="button" class="custom_btn" id="fileTrigger">
						<i class="bi bi-camera"></i>
					</button>		
					<span id="imgArea" >
					</span>
				</div>
				<div class="d-grid gap-2">
					<input type="file"  multiple accept=" audio/*, video/*, image/*" name="file" id="file" style="display:none"/>
					<input type="submit"  style="height: 3.5rem;" class="btn btn-success" value="등록하기">
				</div>
			</form>
		</div>
	<jsp:include page="inc/bottom.jsp"></jsp:include>
	<script type="text/javascript">
		// 전송 데이터 관리할 DataTransfer 객체 생성
		const dataTransfer = new DataTransfer();
		$(function() {
			$("#fileTrigger").on("click", function() {
				$("#file").trigger("click");
			});
			
			$("#file").on("change", uploadImageHandler);
		});
		let idx = 0;
		function uploadImageHandler(e) {	
// 			debugger;
			let files = e.target.files;
			console.log(files);
// 			debugger;
			let filesArr = Array.prototype.slice.call(files);
			console.log(filesArr);

			filesArr.forEach(function(file) {
	 			if(dataTransfer.files.length > 9) {
	 				debugger;
					alert("갯수를 초과하였습니다.");
	 				return;	
	 			}
// 	 			debugger;
				let reader = new FileReader();
				
				reader.onload = function(e) {
					let html = "<a href = \"javascript:void(0);\" id=\"img_" + idx + "\"><img src=\"" + e.target.result + "\" data-file='" + file.name + "' class='custom_img custom_btn' title='클릭 시 제거'></a>";
					$("#imgArea").append(html);
					console.log(idx);
					const deleteImg = $("#img_" + idx);
					$(deleteImg).on('click', (delete_img) => {
						console.log(delete_img.currentTarget.id);
						let delete_img_num = delete_img.currentTarget.id.split('_')[1]
						$("#img_"+ delete_img_num)[0].remove()
						dataTransfer.items.remove(delete_img_num);
						$("#file")[0].files = dataTransfer.files;
						$("#count").text($("#file")[0].files.length);
// 						debugger;
					});
					idx++;
					
				};
				reader.readAsDataURL(file);
				dataTransfer.items.add(file);
			});
			e.target.files = dataTransfer.files;
			$("#count").text($("#file")[0].files.length);
		}
		$("#reset").on("click",function(){
			$("#imgArea").html("");
			dataTransfer.items.clear();
			$("#file")[0].files = dataTransfer.files;
			idx = 0;
			$("#count").text($("#file")[0].files.length);
		});
// 		$("#qna_category").on("change",function(){
// 			$("#qna_category_datail").attr("disabled",false);
// 			$.ajax({
// 					type: "POST",
// 					url: "SelectQnaCategorys",
// 					data: {
// 						qnaCategoryName : $(this).val()
// 					},
// 					dataType: 'json',
// 					success: function(result) {
// 						alert("성공");
// 					}
// 				});

// 			if($("#qna_category").val() == "이용제재"){
// 				$("#qna_category_datail").html(
// 						  "<option selected disabled>상세 유형을 선택하세요</option>"
// 						+ "<option value='제재관련문의'>제재관련문의</option>"
// 						+ "<option value='개인정보 도용문의'>개인정보 도용문의</option>"
// 				);
// 			}
// 			if($("#qna_category").val() == "신고접수"){
// 				$("#qna_category_datail").html(
// 						  "<option selected disabled>상세 유형을 선택하세요</option>"
// 						+ "<option value='사기신고'>사기신고</option>"
// 						+ "<option value='불량글 신고'>불량글 신고</option>"
// 						+ "<option value='거래제한 품목 신고'>거래제한 품목 신고</option>"
// 				);
// 			}
// 			if($("#qna_category").val() == "회원/이용문의"){
// 				$("#qna_category_datail").html(
// 						  "<option selected disabled>상세 유형을 선택하세요</option>"
// 						+ "<option value='이벤트'>이벤트</option>"
// 						+ "<option value='이용관련문의'>이용관련문의</option>"
// 						+ "<option value='광고문의'>광고문의</option>"
// 				);
// 			}
// 		});
// 		$("#reset").on("click",function(){
// 			if(confirm("사진을 초기화 하시겠습니까?")){
// 				$("input[type =file][name=file]")[0].files  =
// 			        $("input[type =file][name=reset]")[0].files
// 			}
		
// 		});

		function dmddo() {
			if(confirm("등록하시겠습니까?")){
				alert("등록이 완료되었습니다.");	
				return true;
			}
			return false;
		
		}
		
	</script>
</body>
</html>