<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html>
<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Male-Fashion | Template</title>
<jsp:include page="../inc/style.jsp"></jsp:include>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>
	<header>
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>

    <!-- 본문 시작 -->
    <form action="ShopSuccess" method="POST" enctype="multipart/form-data" name="insertForm" onsubmit="return confirm('등록하시겠습니까?')">
    	<section class="contact shop_spad">
	        <div class="container">
				<div class="section-title">
				    <h2>판매하기</h2>
				</div>
	            <div class="row">
	                <div class="col-lg-6 col-md-6" style="min-width:35%;">
	                    <div class="contact__text">
	                    </div>
	                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
							<div class="card">
								<div class="card-heading">
<!-- 								    <a data-toggle="collapse" data-target="#collapseOne">카테고리</a> -->
								    <h3 style="margin: 5%">카테고리</h3>
								</div>
								<div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
								    <div class="card-body">
								        <div class="card-main">
									        <div class="shop__sidebar__categories">
									        <input type="hidden" name="category_idx" id="hidCategory" value="${category_idx }"/>
									            <ul class="nice-scroll">
									            	<c:forEach var="selectCategory" items="${selectCategory }" varStatus="status">
														<li class="list" id="liCategory" value="${status.count }">${selectCategory.category_name }</li>
								                    </c:forEach>
								                </ul>
								            </div>
							            </div>
							        </div>
							    </div>
							</div>
							<div class="fs-6 fw-semibold">
								사진 동영상 첨부( <span id="count"></span>/10)
							</div>
							<div id="imgArea" style="display: flex;">
								<button id="fileTrigger" type="button" class="custom_btn">
									<i class="bi bi-camera"></i>
								</button>		
								<input type="file" multiple accept=" audio/*, video/*, image/*" name="file" id="file" style="display:none"/>
							</div>
						</div>
	<!--                         	</div> -->
	                </div>
	                <div class="col-lg-6 col-md-6">
	                    <div class="contact__form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" name="product_name" class="input-name" placeholder="글제목">
                                </div>
                                <div class="col-lg-7">
                                    <input type="number" name="product_price" class="input-price" id="product_price" placeholder="판매가격" min="0">
<!--                                     <input type="checkbox" name="free_sharing" class="active" value="무료나눔"> -->
<!--                                     <label class="active" > -->
                                        <input type="checkbox" name="free_sharing" id="free_sharing" value="무료나눔">무료나눔
<!--                                     </label> -->
                                </div>
                                <div class="col-lg-8">
	                                <div class="address" style="display: flex;">
	                                    <input type="text" name="direct_address1" class="input-price" id="direct_address1" value="${direct_address1 }" placeholder="기본주소" style="margin-right: 10px;">
										<input type="button" id="btnSearchAddress" class="site-btn" value="주소검색"><br>
	                                </div>
									<input type="text" name="direct_address2" class="input-name" id="direct_address2" value="${direct_address2 }" placeholder="상세주소" size="25">
                                </div>
                                <div class="col-lg-12">
                                    <textarea rows="2" name="product_info" cols="20" wrap="hard" maxlength="1000" placeholder="- 상품명(브랜드) >
- 구매 시기
- 사용 기간
- 하자 여부
* 실제 촬영한 사진과 함께 상세 정보를 입력해주세요.
* 카카오톡 아이디 첨부 시 게시물 삭제 및 이용제재 처리될 수 있어요.
 안전하고 건전한 거래환경을 위해 과학기술정보통신부, 한국인터넷진흥원, 가지나라가 함께합니다."></textarea>
                                    <div class="product__details__option">
		                                <div class="product__details__option__size">
		                                    <span style="color: #111111; font-weight: 700;">상품상태</span>
		                                    <label class="active" for="xxl">중고상품
		                                        <input type="radio" id="xxl" name="product_status" value="used" checked>
		                                    </label>
		                                    <label for="xl">새상품
		                                        <input type="radio" id="xl" name="product_status" value="new">
		                                    </label>
		                                </div>
		                            </div>
                                    <div class="product__details__option">
		                                <div class="product__details__option__size">
		                                    <span style="color: #111111; font-weight: 700;">거래방법</span>
		                                    <input type="checkbox" name="trading_method1" class="active" value="delivery">택배거래
		                                    <input type="checkbox" name="trading_method2" class="active" value="direct">직거래
		                                </div>
		                            </div>
		                            <div class="product__form__submit">
	                                    <button type="reset" class="site-btn" >리셋</button>
<!-- 	                                    <button class="site-btn" onclick="insertCheck()">판매등록</button> -->
	                                    <button type="submit" class="site-btn" >판매등록</button>
		                            </div>
                                </div>
                            </div>
	                    </div>
	                </div>
	            </div>
	        </div>
    	</section>
    </form>
    
    <!-- 바텀 시작 -->
	<footer>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>
</body>
<script type="text/javascript">

const dataTransfer = new DataTransfer();
	
$(function () {
		
	// li 선택값 넘기기, css
	$(".nice-scroll li").click(function() {
		$("#hidCategory").val($(this).val());
		$(this).css("background-color" , "#5F12D3");
		$(this).css("color" , "white");
// 		alert($("#hidCategory").val());
	});
	
	$("#direct_address1").click(function(){
		$("#direct_address1").attr("disabled", true);
		alert("주소를 검색해주세요.");
// 		debugger;
	});

// 	$("#free_sharing").click(function(){
		
// 		$("#product_price").attr("disabled", false);
// 		$("#product_price").attr("disabled", true);
		
// 	});
	
	$("#btnSearchAddress").click(function() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            let address = data.address; // 기본 주소 저장
	            if(data.buildingName != '') { // 건물명이 있을 경우
	            	address += " (" + data.buildingName + ")";
	            }
	            $("#direct_address1").val(address);
	            $("#direct_address2").focus();
	        }
	    }).open();
	    
	});
	
	
	$("#fileTrigger").on("click", function() {
		$("#file").trigger("click");
	});
	
	$("#file").on("change", uploadImageHandler);
	
// 	var count = 0;
// 	var files = []; 
// 	$("input[type=file][name=file]").on("change", function(event) {
// 		const file = event.target.files;
// 		count += 1;
// 		if(count > 10){
// 			alert("등록 최대갯수를 초과하였습니다");
// 			count -= 1;
// 			return;
// 		}
		
// 		files.push(file);
// 		$("#count").text(count);
// 		var image = new Image();
// 		var ImageTempUrl = window.URL.createObjectURL(file[0]);
		
		
// 		image.src = ImageTempUrl;
// 		image.name = file[0].name;
// 		image.className = "custom_btn custom_img";
		
// 		// 스크립트
// //			debugger;
// 		// JQuery
// 		$("#imgArea").append(image);
		
// 		$(image).on("click",function(){
// 			if(confirm("삭제하시겠습니까?")){
// 				$(this).remove("");
// 				count -= 1;
// 				$("#count").text(count);
// 				for(let i = 0; i < files.length; i++){
// 					if(file[i].name == $(this)[0].name){
// 						 files.splice(i, 1);
// 					}						
// 				}
// 			debugger;
// 			console.log(files);
// 			}
// 		});
// 	});
});

function uploadImageHandler(e) {
	let files = e.target.files;
	console.log(files);
	
	let filesArr = Array.prototype.slice.call(files);
	console.log(filesArr);
	
	let idx = 0;
	filesArr.forEach(function(file) {
		
		let reader = new FileReader();
		reader.onload = function(e) {
			let html = "<a href = \"javascript:void(0);\" onclick=\"deleteImage(" + idx + ")\ id=\"img_" + idx + "\"><img src=\"" + e.target.result + "\" data-file='" + file.name + "' class='productFile' title='클릭 시 제거'></a>";
			$("#imgArea").append(html);
			idx++;
		};
		
		reader.readAsDataURL(file);
		
		dataTransfer.items.add(file);
	});
	
	e.target.files = dataTransfer.files;
}
	
	
</script>
</html>