<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html>
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
	<header>
		<jsp:include page="inc/top.jsp"></jsp:include>
	</header>

    <!-- 본문 시작 -->
    <form action="shop">
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
								<div class="card-body">
		                            <h3>카테고리</h3>
									<div class="card-main">
										<div class="shop__sidebar__categories">
                                            <ul class="nice-scroll">
                                                <li>디지털기기</li>
                                                <li>가구/인테리어</li>
                                                <li>유아동</li>
                                                <li>여성패션/잡화</li>
                                                <li>남성패션/잡화</li>
                                                <li>생활가전</li>
                                                <li>생활/주방</li>
                                                <li>가공식품</li>
                                                <li>스포츠/레저</li>
                                                <li>취미/게임/음반</li>
                                                <li>뷰티/미용</li>
                                                <li>식물</li>
                                                <li>반려동물용품</li>
                                                <li>티켓/교환권</li>
                                                <li>도서</li>
                                                <li>기타 중고물품</li>
                                                <li>무료나눔</li>
                                                <li>삽니다</li>
                                            </ul>
                                        </div>
									</div>
								</div>
	<!-- 	                        <div class="card-heading"> -->
							</div>
	                        <div class="filebox">
							    <input class="upload-name" value="첨부파일" placeholder="첨부파일" multiple accept="image/png, image/jpeg, image/jpg, video/*" >
							    <label for="file">파일찾기</label> 
							    <input type="file" id="file">
							</div>
						</div>
	<!--                         	</div> -->
	                </div>
	                <div class="col-lg-6 col-md-6">
	                    <div class="contact__form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="input-name" placeholder="글제목">
                                </div>
                                <div class="col-lg-7">
                                    <input type="text" class="input-price" placeholder="판매가격">
                                </div>
                                <div class="col-lg-12">
                                    <textarea rows="2" cols="20" wrap="hard" maxlength="1000" placeholder="- 상품명(브랜드) >
- 구매 시기
- 사용 기간
- 하자 여부
* 실제 촬영한 사진과 함께 상세 정보를 입력해주세요.
* 카카오톡 아이디 첨부 시 게시물 삭제 및 이용제재 처리될 수 있어요.
 안전하고 건전한 거래환경을 위해 과학기술정보통신부, 한국인터넷진흥원, 가지나라가 함께합니다."></textarea>
                                    <div class="product__details__option">
		                                <div class="product__details__option__size">
		                                    <span style="color: #111111; font-weight: 700;">상품상태</span>
		                                    <label for="xxl">중고상품
		                                        <input type="radio" id="xxl">
		                                    </label>
		                                    <label class="active" for="xl">새상품
		                                        <input type="radio" id="xl">
		                                    </label>
		                                </div>
		                            </div>
		                            <div class="product__form__submit">
	                                    <button class="site-btn" onclick="insertCheck()">사용하기</button>
<!-- 	                                    <button class="site-btn" onclick="insertCheck()">판매등록</button> -->
	                                    <button type="submit" class="site-btn" onclick="insertCheck()">판매등록</button>
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
		<jsp:include page="inc/bottom.jsp"></jsp:include>
	</footer>
</body>
<script type="text/javascript">
	
	function insertCheck(){
		if($('input[name=reservation_time]:checked').val() == "undefined" || $('input[name=reservation_time]:checked').val() == "" || $('input[name=reservation_time]:checked').val() == null){
			alert("예약 시간을 선택해주세요.");
			return false;
		}
		if ($("#reservation_person_name").val() == "") {
			alert("성함을 입력해주세요.");
			return false;
		}
		if(emailEvtFn()){
			var result = confirm("예약 하시겠습니까?");
			if(result){
				$("form").submit();
			}
		}
		return false;
	}
	
</script>
</html>