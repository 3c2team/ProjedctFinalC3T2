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
	.custom_text{
		background-color: #e7e7e7;
	    border-radius: 10px 10px;
	}
	.custom_btn{
		height: 50px;
	    display: inline-block;
	    font-weight: 400;
	    color: #212529;
	    text-align: center;
	    vertical-align: middle;
	    user-select: none;
	    background-color: transparent;
	    border: 1px solid transparent;
	    padding: 0.375rem 0.75rem;
	    font-size: 1rem;
	    line-height: 1.5;
	    border-radius: 5rem;
	    border-color: #e1e3e5;
	    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
		margin: 1%;
	}
	.custom_hr{
		margin-top: 1rem;
	    margin-bottom: 0;
	    border-top: 1px solid rgba(0,0,0,.1);
	    border-color: black;
	}

	.custom_select{
	    padding-left: 20px;
	    padding-top: 1rem;
	    padding-bottom: 1rem;
	    border-bottom: solid;
	    border-color: aliceblue;
	    cursor: pointer;
	}
	.custom_sticky{
	    position: sticky;
	    top: 200px;
	    z-index: 1020;
	    background-color: white;
	}
</style>
	<jsp:include page="inc/style.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="inc/top.jsp"></jsp:include>
		<div class="custom_flex2" style="width: 40%;">
			<h2 class="fw-bold" style="text-align: center;">고객센터</h2>
			<hr class="custom_border_grove">
			<h3 class="fw-bold">자주 묻는 질문FAQ</h3>
			<div class="shop__sidebar__search" style="margin-top: 5%;">
				<form onSubmit="customer()">
					<input type="text" id="select" class="custom_text" placeholder="궁금하신점을 입력해주세요">
					<button type="button"><span class="icon_search"></span></button>
				</form>
			</div>
			<div class="custom_sticky">
				<button class="custom_btn">전체</button>
				<button class="custom_btn">거래문의</button>
				<button class="custom_btn">이용문의</button>
				<button class="custom_btn">회원/계정</button>
				<button class="custom_btn">운영정책</button>
				<button class="custom_btn">기타</button>
			</div>
			<ul>	
				<li style="list-style: none;">
					<div class="custom_select w-100">질문이름</div>
				</li>
			</ul>
			<div class="d-grid gap-2">
				<input type="button" class="btn btn-light" value="1대1 문의하기" onclick="location.href='FraudInquiry'">
				<input type="button" id="open" class="btn btn-light" value="내 문의 내역"onclick="location.href=">
			</div>
		</div>
	<jsp:include page="inc/bottom.jsp"></jsp:include>
	<script type="text/javascript">
		$(".custom_btn").on("click",function(){
			$(".custom_btn").css("background-color","transparent");
			$(".custom_btn").css("color","black");
			$(this).css("background-color","rgb(25 28 33)");
			$(this).css("color","aliceblue");
		});
		$(".custom_select").on("click",function(){
			$(this).after("<div><h1>result</h1></div>");
		});
		function customer() {
			$("#select").val();
		}
	</script>
</body>
</html>