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
    <section class="shop-details">
        <div class="product__details__pic">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
						<!-- 카테고리 -->
                        <div class="product__details__breadcrumb">
                            <a href="./index.jsp">홈</a>
                            <a href="./shop.jsp">디지털기기</a>
                            <a href="./ShopForm">모바일</a>
                            <span>아이폰</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-9">
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
						    <div class="product__details__pic__item">
						        <img src="${pageContext.request.contextPath }/resources/img/shop-details/ex.jpg" alt="">
						    </div>
						</div>
                    </div>
                    <div class="col-lg-6 col-md-9">
						<div class="product__details__content">
							<div class="container">
								<div class="row d-flex justify-content-center">
									<div class="col-lg-8">
										<div class="product__details__text">
											<h4>나이키 집업 자켓 팝니다</h4>
											<h3>35000원</h3>
											<div style="display:flex;">
												<p>1시간 전</p><p>조회</p><p>찜</p>
											</div>
											<div style="display:flex;">
												<p>배송비</p><br><p>배송비 별도</p>
											</div>
											<div class="product__details__option">
				                                <div class="product__details__option__size">
				                                    <span>거래방법 선택</span>
				                                    <label for="xxl">택배거래
				                                        <input type="radio" id="xxl">
				                                    </label>
				                                    <label class="active" for="xl">직거래
				                                        <input type="radio" id="xl">
				                                    </label>
				                                </div>
				                            </div>
											<div class="product__details__cart__option">
				                                <a href="#" class="primary-btn">채팅하기</a>
				                                <a href="#" class="primary-btn">안심거래하기</a>
				                            </div>
										</div>
									</div>
								</div>
							</div>
						</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product__details__content">
            <div class="container">
<!--                 <div class="row d-flex justify-content-center"> -->
<!--                     <div class="col-lg-8"> -->
<!--                         <div class="product__details__text"> -->
<!--                             <h4>나이키 집업 판매합니다.</h4> -->
<!--                             <h3>35000원</h3> -->
<!--                             <p>Coat with quilted lining and an adjustable hood. Featuring long sleeves with adjustable -->
<!--                                 cuff tabs, adjustable asymmetric hem with elastic side tabs and a front zip fastening -->
<!--                             with placket.</p> -->
<!--                             <div class="product__details__option"> -->
<!--                                 <div class="product__details__option__size"> -->
<!--                                     <span>거래방법 선택</span> -->
<!--                                     <label for="xxl">xxl -->
<!--                                         <input type="radio" id="xxl"> -->
<!--                                     </label> -->
<!--                                     <label class="active" for="xl">xl -->
<!--                                         <input type="radio" id="xl"> -->
<!--                                     </label> -->
<!--                                     <label for="l">l -->
<!--                                         <input type="radio" id="l"> -->
<!--                                     </label> -->
<!--                                     <label for="sm">s -->
<!--                                         <input type="radio" id="sm"> -->
<!--                                     </label> -->
<!--                                 </div> -->
<!--                                 <div class="product__details__option__color"> -->
<!--                                     <span>Color:</span> -->
<!--                                     <label class="c-1" for="sp-1"> -->
<!--                                         <input type="radio" id="sp-1"> -->
<!--                                     </label> -->
<!--                                     <label class="c-2" for="sp-2"> -->
<!--                                         <input type="radio" id="sp-2"> -->
<!--                                     </label> -->
<!--                                     <label class="c-3" for="sp-3"> -->
<!--                                         <input type="radio" id="sp-3"> -->
<!--                                     </label> -->
<!--                                     <label class="c-4" for="sp-4"> -->
<!--                                         <input type="radio" id="sp-4"> -->
<!--                                     </label> -->
<!--                                     <label class="c-9" for="sp-9"> -->
<!--                                         <input type="radio" id="sp-9"> -->
<!--                                     </label> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="product__details__cart__option"> -->
<!--                                 <div class="quantity"> -->
<!--                                     <div class="pro-qty"> -->
<!--                                         <input type="text" value="1"> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <a href="#" class="primary-btn">add to cart</a> -->
<!--                             </div> -->
<!--                             <div class="product__details__btns__option"> -->
<!--                                 <a href="#"><i class="fa fa-heart"></i> add to wishlist</a> -->
<!--                                 <a href="#"><i class="fa fa-exchange"></i> Add To Compare</a> -->
<!--                             </div> -->
<!--                             <div class="product__details__last__option"> -->
<!--                                 <h5><span>Guaranteed Safe Checkout</span></h5> -->
<%--                                 <img src="${pageContext.request.contextPath }/resources/img/shop-details/details-payment.png" alt=""> --%>
<!--                                 <ul> -->
<!--                                     <li><span>SKU:</span> 3812912</li> -->
<!--                                     <li><span>Categories:</span> Clothes</li> -->
<!--                                     <li><span>Tag:</span> Clothes, Skin, Body</li> -->
<!--                                 </ul> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
				<!-- 상세정보 시작 -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__tab">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs-5" role="tab">상세정보</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">판매자정보</a>
                                </li>
<!--                                 <li class="nav-item"> -->
<!--                                     <a class="nav-link" data-toggle="tab" href="#tabs-7" role="tab">주소정보</a> -->
<!--                                 </li> -->
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tabs-5" role="tabpanel">
                                    <div class="product__details__tab__content">
                                        <p class="note">거래 전 주의사항 안내<br>
														판매자가 별도의 메신저로 결제링크를 보내거나 직거래(직접송금)을
														유도하는 경우 사기일 가능성이 높으니 거래를 자제해 주시고<br>
														Garge 고객센터로 신고해주시기 바랍니다.</p>
                                        <div class="product__details__tab__content__item">
                                            <h5>상품내용</h5>
											<p>♡색상:브라운
												♡소재:폴리 아크릴 혼방
												<br>
												♡사이즈:free
												ㅡ가슴단면34.5,총장53.5
												<br>
												측정 위치와 방법에 따라
												오차 발생 할 수 있습니다
												<br>
												<br>
												<br>
												여성스러우면서 세련된 느낌의 니트티셔츠♡
												<br>
												어깨패드가 장착되어있어 깔끔하고
												고급스러운 느낌을 주는 니트티♡
												<br>
												랩 디자인의 과하지 않은 브이넥으로
												부담 없이 입기좋은 티셔츠♡
												<br>
												스커트,청바지,슬랙스 등
												어떤하의와도 코디하기 좋은 니트티♡
												<br>
												<br>
												데일리룩부터 하객룩, 오피스룩, 데이트룩
												언제든 입기좋은 니트티♡</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tabs-6" role="tabpanel">
                                    <div class="product__details__tab__content">
                                        <div class="product__details__tab__content__item">
                                            <h5>판매자 정보</h5>
                                            <p>A Pocket PC is a handheld computer, which features many of the same
                                                capabilities as a modern PC. These handy little devices allow
                                                individuals to retrieve and store e-mail messages, create a contact
                                                file, coordinate appointments, surf the internet, exchange text messages
                                                and more. Every product that is labeled as a Pocket PC must be
                                                accompanied with specific software to operate the unit and must feature
                                            a touchscreen and touchpad.</p>
                                            <p>As is the case with any new technology product, the cost of a Pocket PC
                                                was substantial during itâs early release. For approximately $700.00,
                                                consumers could purchase one of top-of-the-line Pocket PCs in 2003.
                                                These days, customers are finding that prices have become much more
                                                reasonable now that the newness is wearing off. For approximately
                                            $350.00, a new Pocket PC can now be purchased.</p>
                                        </div>
                                        <div class="product__details__tab__content__item">
                                            <h5>Material used</h5>
                                            <p>Polyester is deemed lower quality due to its none natural qualityâs. Made
                                                from synthetic materials, not natural like wool. Polyester suits become
                                                creased easily and are known for not being breathable. Polyester suits
                                                tend to have a shine to them compared to wool and cotton suits, this can
                                                make the suit look cheap. The texture of velvet is luxurious and
                                                breathable. Velvet is a great choice for dinner party jacket and can be
                                            worn all year round.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Details Section End -->

    <!-- 인기상품 시작 -->
    <section class="related spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="related-title">인기상품</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-1.jpg">
                            <span class="label">New</span>
                            <ul class="product__hover">
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>PiquÃ© Biker Jacket</h6>
                            <a href="#" class="add-cart">+ Add To Cart</a>
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$67.24</h5>
                            <div class="product__color__select">
                                <label for="pc-1">
                                    <input type="radio" id="pc-1">
                                </label>
                                <label class="active black" for="pc-2">
                                    <input type="radio" id="pc-2">
                                </label>
                                <label class="grey" for="pc-3">
                                    <input type="radio" id="pc-3">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-2.jpg">
                            <ul class="product__hover">
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>PiquÃ© Biker Jacket</h6>
                            <a href="#" class="add-cart">+ Add To Cart</a>
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$67.24</h5>
                            <div class="product__color__select">
                                <label for="pc-4">
                                    <input type="radio" id="pc-4">
                                </label>
                                <label class="active black" for="pc-5">
                                    <input type="radio" id="pc-5">
                                </label>
                                <label class="grey" for="pc-6">
                                    <input type="radio" id="pc-6">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item sale">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-3.jpg">
                            <span class="label">Sale</span>
                            <ul class="product__hover">
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Multi-pocket Chest Bag</h6>
                            <a href="#" class="add-cart">+ Add To Cart</a>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$43.48</h5>
                            <div class="product__color__select">
                                <label for="pc-7">
                                    <input type="radio" id="pc-7">
                                </label>
                                <label class="active black" for="pc-8">
                                    <input type="radio" id="pc-8">
                                </label>
                                <label class="grey" for="pc-9">
                                    <input type="radio" id="pc-9">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-4.jpg">
                            <ul class="product__hover">
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li>
                                <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                            </ul>
                        </div>
                        <div class="product__item__text">
                            <h6>Diagonal Textured Cap</h6>
                            <a href="#" class="add-cart">+ Add To Cart</a>
                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5>$60.9</h5>
                            <div class="product__color__select">
                                <label for="pc-10">
                                    <input type="radio" id="pc-10">
                                </label>
                                <label class="active black" for="pc-11">
                                    <input type="radio" id="pc-11">
                                </label>
                                <label class="grey" for="pc-12">
                                    <input type="radio" id="pc-12">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 바텀 시작 -->
	<footer class="footer">
		<jsp:include page="inc/bottom.jsp"></jsp:include>
    </footer>
</body>

</html>