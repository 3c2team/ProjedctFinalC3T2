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


	<jsp:include page="inc/style.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="inc/top.jsp"></jsp:include>
<!-- 	<div class="custom_div"> -->
		<div class="custom_flex2">
			<hr class="custom_border_grove">
			<h5>검색 내용</h5>
			<h5>피해사례 조회</h5>
			<hr class="custom_border_grove">
			<div class="custom_flex">
				<div>
					가지
				</div>
				<div>
					신고 건수 없음
				</div>
			</div>
			<hr class="custom_border_grove">
			<div class="custom_flex">
				<div>
					가지
				</div>
				<div>
					신고 건수 없음
				</div>
			</div>
			<hr class="custom_border_grove">
			<div class="custom_flex">
				<div>
					가지
				</div>
				<div>
					신고 건수 없음
				</div>
			<hr class="custom_border_grove">
			</div>
			<div class="d-grid gap-2">
				<input type="button" class="btn btn-light" value="다시 조회하기" onclick="histroy.back()">
				<input type="button" class="btn btn-light" value="이의 제기하기">
			</div>
		</div>
<!-- 	</div> -->
	<jsp:include page="inc/bottom.jsp"></jsp:include>
</body>
</html>