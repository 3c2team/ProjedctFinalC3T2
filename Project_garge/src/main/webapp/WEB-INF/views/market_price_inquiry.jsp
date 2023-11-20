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
	.custom_price_inquiry{
		width: 70%;
	    margin: auto;
	    margin-top: 2%;
	    margin-bottom: 2%;
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	}
	.custom_box2{
		width: 100%;
		height: 7em;
		margin-bottom: 5%; 
		display: flex;
		background: #a6ebb6!important;
	}
	.custom_price{
	    width: 33%;
    	height: 100%;
	}
	.custom_font{
		margin: 10px;
	}
	.custom_color{
		color: #62f784;
	}
</style>
	<jsp:include page="inc/style.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="inc/top.jsp"></jsp:include>
	<div class="custom_price_inquiry">
		<div class="fs-3 fw-semibold text-secondary">시세조회</div>
		<div class="fs-6">원하시는 상품이 얼마에 거래되고 있는지 알아보세요</div>
		<div style="width: 60%;" class="shop__sidebar__search">
			<form action="#">
				<input type="text" style="margin-top:7%;" placeholder="상품 이름을 검색해주세요">
				<button style="margin-top:4%;" type="submit"><span class="icon_search"></span></button>
			</form> 
		</div>
<!-- 		<div class="custom_box border"> -->
		<div class="col-xl-6">
			<div class="card mb-4">
				<div class="card-body">
					<div class="fs-6 fw-semibold text-secondary">
						시세 금액
					</div>	
					<div class="fs-4 fw-semibold custom_color">
						100,000,000
					</div>	
						<canvas id="myAreaChart" width="70%" height="40"></canvas>
				</div>
			</div>
		</div>
<!-- 		</div> -->
	</div>
	<div style="width: 70%; margin: auto; " >
		<div class="fs-4 fw-semibold text-secondary">최근 등록된 상품</div>
		<hr style="margin-bottom: 5%;" class="custom_border_grove">
		<div style="margin-bottom: 3%;" class="fs-5 fw-semibold text-secondary">최근 등록 상품 가격을 비교해봤어요!</div>
		<div style="" class="custom_box2 border border-success">
			<div class="custom_price">
				<div class="fs-5 fw-semibold text-secondary custom_font">평균 가격이에요</div>
				<div style="margin-top: 10%;">
					<span class="fw-semibold text-secondary">평균</span>
					<span class="fs-4 fw-semibold text-secondary">100,000</span> 
					<span class="fw-semibold text-secondary">원</span> 
				</div>
			</div>
			<div class="custom_price">
				<div class="fs-5 fw-semibold text-secondary custom_font">가장 높은 가격이에요</div>
				<div style="margin-top: 10%;">
					<span class="fw-semibold text-secondary">평균</span>
					<span class="fs-4 fw-semibold text-secondary">000</span> 
					<span class="fw-semibold text-secondary">원</span> 
				</div>
			</div>
			<div class="custom_price">
				<div class="fs-5 fw-semibold text-secondary custom_font">가장 낮은 가격이에요</div>
				<div style="margin-top: 10%;">
					<span class="fw-semibold text-secondary">평균</span>
					<span class="fs-4 fw-semibold text-secondary">000</span> 
					<span class="fw-semibold text-secondary">원</span> 
				</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="inc/bottom.jsp"></jsp:include>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
	crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath }/resources/demo/market_price_chart.js"></script>
</body>
</html>