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
<style type="text/css">
.btn{
	 background-color:#e0e0e0;
	 margin: 5px;
	 font-size: 13px;
}
.cusor{
	cursor: pointer;
}
</style>
</head>
<body>
	<jsp:include page="../inc/top.jsp"></jsp:include>
	
    <!-- 주메뉴 -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>거래하기</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">홈</a>
                            <span>거래하기</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 거래하기 메인 시작 -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="fs-5 fw-bold">
                       		필터
                        </div>
                        <div>
							<div class="btn delete" hidden="" id="category">
							</div>	
							<div class="btn delete" hidden="" id="price">
							</div>	
							<div class="btn delete" hidden="" id="search">
							</div>	
                        </div>
                        
                        <!-- 카테고리 -->
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">카테고리</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="card-main">
                                                <ul class="nice-scroll">
                                                	<c:forEach var="selectCategory" items="${selectCategory }">
														<li><div class="cusor">${selectCategory.category_name }</div></li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- 브랜드 -->
<!--                                 <div class="card"> -->
<!--                                     <div class="card-heading"> -->
<!--                                         <a data-toggle="collapse" data-target="#collapseTwo">Branding</a> -->
<!--                                     </div> -->
<!--                                     <div id="collapseTwo" class="collapse show" data-parent="#accordionExample"> -->
<!--                                         <div class="card-body"> -->
<!--                                             <div class="shop__sidebar__brand"> -->
<!--                                                 <ul> -->
<!--                                                     <li><a href="#">Louis Vuitton</a></li> -->
<!--                                                     <li><a href="#">Chanel</a></li> -->
<!--                                                     <li><a href="#">Hermes</a></li> -->
<!--                                                     <li><a href="#">Gucci</a></li> -->
<!--                                                 </ul> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="card"> -->
<!--                                     <div class="card-heading"> -->
<!--                                         <a data-toggle="collapse" data-target="#collapseThree">Filter Price</a> -->
<!--                                     </div> -->
                                    <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <li class="custom_li">
                                                    	<label><input type="radio" class="radio form-check-input"name="radio" value="10만원 이하">10만원 이하</label>
                                                    </li>
                                                    <li class="custom_li">
                                                    	<label><input type="radio" class="radio form-check-input" name="radio" value="10만원 - 30만원 이하">10만원 - 30만원 이하</label>
                                                    </li>
                                                    <li class="custom_li">
                                                    	<label><input type="radio" class="radio form-check-input" name="radio" value="30만원 - 50만원 이하">30만원 - 50만원 이하</label>
                                                    </li>
                                                    <li class="custom_li">
                                                    	<label><input type="radio" class="radio form-check-input" name="radio" value="50만원 이상">50만원 이상</label>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
<!--                                 </div> -->
<!--                                 <div class="card"> -->
<!--                                     <div class="card-heading"> -->
<!--                                         <a data-toggle="collapse" data-target="#collapseFour">Size</a> -->
<!--                                     </div> -->
<!--                                     <div id="collapseFour" class="collapse show" data-parent="#accordionExample"> -->
<!--                                         <div class="card-body"> -->
<!--                                             <div class="shop__sidebar__size"> -->
<!--                                                 <label for="xs">xs -->
<!--                                                     <input type="radio" id="xs"> -->
<!--                                                 </label> -->
<!--                                                 <label for="sm">s -->
<!--                                                     <input type="radio" id="sm"> -->
<!--                                                 </label> -->
<!--                                                 <label for="md">m -->
<!--                                                     <input type="radio" id="md"> -->
<!--                                                 </label> -->
<!--                                                 <label for="xl">xl -->
<!--                                                     <input type="radio" id="xl"> -->
<!--                                                 </label> -->
<!--                                                 <label for="2xl">2xl -->
<!--                                                     <input type="radio" id="2xl"> -->
<!--                                                 </label> -->
<!--                                                 <label for="xxl">xxl -->
<!--                                                     <input type="radio" id="xxl"> -->
<!--                                                 </label> -->
<!--                                                 <label for="3xl">3xl -->
<!--                                                     <input type="radio" id="3xl"> -->
<!--                                                 </label> -->
<!--                                                 <label for="4xl">4xl -->
<!--                                                     <input type="radio" id="4xl"> -->
<!--                                                 </label> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="card"> -->
<!--                                     <div class="card-heading"> -->
<!--                                         <a data-toggle="collapse" data-target="#collapseFive">Colors</a> -->
<!--                                     </div> -->
<!--                                     <div id="collapseFive" class="collapse show" data-parent="#accordionExample"> -->
<!--                                         <div class="card-body"> -->
<!--                                             <div class="shop__sidebar__color"> -->
<!--                                                 <label class="c-1" for="sp-1"> -->
<!--                                                     <input type="radio" id="sp-1"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-2" for="sp-2"> -->
<!--                                                     <input type="radio" id="sp-2"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-3" for="sp-3"> -->
<!--                                                     <input type="radio" id="sp-3"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-4" for="sp-4"> -->
<!--                                                     <input type="radio" id="sp-4"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-5" for="sp-5"> -->
<!--                                                     <input type="radio" id="sp-5"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-6" for="sp-6"> -->
<!--                                                     <input type="radio" id="sp-6"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-7" for="sp-7"> -->
<!--                                                     <input type="radio" id="sp-7"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-8" for="sp-8"> -->
<!--                                                     <input type="radio" id="sp-8"> -->
<!--                                                 </label> -->
<!--                                                 <label class="c-9" for="sp-9"> -->
<!--                                                     <input type="radio" id="sp-9"> -->
<!--                                                 </label> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="card"> -->
<!--                                     <div class="card-heading"> -->
<!--                                         <a data-toggle="collapse" data-target="#collapseSix">Tags</a> -->
<!--                                     </div> -->
<!--                                     <div id="collapseSix" class="collapse show" data-parent="#accordionExample"> -->
<!--                                         <div class="card-body"> -->
<!--                                             <div class="shop__sidebar__tags"> -->
<!--                                                 <a href="#">Product</a> -->
<!--                                                 <a href="#">Bags</a> -->
<!--                                                 <a href="#">Shoes</a> -->
<!--                                                 <a href="#">Fashio</a> -->
<!--                                                 <a href="#">Clothing</a> -->
<!--                                                 <a href="#">Hats</a> -->
<!--                                                 <a href="#">Accessories</a> -->
<!--                                             </div> -->
<!--                                         </div> -->
<!--                                     </div> -->
<!--                                 </div> -->
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- 본문 시작 -->
                <div class="col-lg-9">
                    <div class="shop__product__option">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__left">
                                    <p>Showing DBAll of DBselect results</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__right">
                                    <p>정렬:&nbsp;</p>
                                    <select>
                                        <option value="">추천순</option>
                                        <option value="">최신순</option>
                                        <option value="">낮은가격순</option>
                                        <option value="">높은가격순</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    	<!-- 첫번째 글 -->
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-2.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
<%--                                         <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li> --%>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>유틸리티 자켓</h6>
                                    <a href="#" class="add-cart">상세보기</a>
									<p>부산진구 <span> / 6분 전</span></p>
                                    <h5>30000원</h5>
                                </div>
                            </div>
                        </div>
                    	<!-- 두번쨰 글 -->
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-3.jpg">
                                    <span class="label">무료나눔</span>
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
<%--                                         <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a></li> --%>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>가방 팔아요</h6>
                                    <a href="#" class="add-cart">상세보기</a>
									<p>서울 마포구 중앙동 <span> / 15분 전</span></p>
                                    <h5>5000원</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-4.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>Diagonal Textured Cap</h6>
                                    <a href="#" class="add-cart">상세보기</a>
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
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-6.jpg">
                                    <span class="label">무료나눔</span>
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>Ankle Boots</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$98.49</h5>
                                    <div class="product__color__select">
                                        <label for="pc-16">
                                            <input type="radio" id="pc-16">
                                        </label>
                                        <label class="active black" for="pc-17">
                                            <input type="radio" id="pc-17">
                                        </label>
                                        <label class="grey" for="pc-18">
                                            <input type="radio" id="pc-18">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-7.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>T-shirt Contrast Pocket</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$49.66</h5>
                                    <div class="product__color__select">
                                        <label for="pc-19">
                                            <input type="radio" id="pc-19">
                                        </label>
                                        <label class="active black" for="pc-20">
                                            <input type="radio" id="pc-20">
                                        </label>
                                        <label class="grey" for="pc-21">
                                            <input type="radio" id="pc-21">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-8.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>Basic Flowing Scarf</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$26.28</h5>
                                    <div class="product__color__select">
                                        <label for="pc-22">
                                            <input type="radio" id="pc-22">
                                        </label>
                                        <label class="active black" for="pc-23">
                                            <input type="radio" id="pc-23">
                                        </label>
                                        <label class="grey" for="pc-24">
                                            <input type="radio" id="pc-24">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-9.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>PiquÃ© Biker Jacket</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$67.24</h5>
                                    <div class="product__color__select">
                                        <label for="pc-25">
                                            <input type="radio" id="pc-25">
                                        </label>
                                        <label class="active black" for="pc-26">
                                            <input type="radio" id="pc-26">
                                        </label>
                                        <label class="grey" for="pc-27">
                                            <input type="radio" id="pc-27">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-10.jpg">
                                    <span class="label">무료나눔</span>
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>Multi-pocket Chest Bag</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$43.48</h5>
                                    <div class="product__color__select">
                                        <label for="pc-28">
                                            <input type="radio" id="pc-28">
                                        </label>
                                        <label class="active black" for="pc-29">
                                            <input type="radio" id="pc-29">
                                        </label>
                                        <label class="grey" for="pc-30">
                                            <input type="radio" id="pc-30">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-11.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>Diagonal Textured Cap</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$60.9</h5>
                                    <div class="product__color__select">
                                        <label for="pc-31">
                                            <input type="radio" id="pc-31">
                                        </label>
                                        <label class="active black" for="pc-32">
                                            <input type="radio" id="pc-32">
                                        </label>
                                        <label class="grey" for="pc-33">
                                            <input type="radio" id="pc-33">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item sale">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-12.jpg">
                                    <span class="label">무료나눔</span>
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>Ankle Boots</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$98.49</h5>
                                    <div class="product__color__select">
                                        <label for="pc-34">
                                            <input type="radio" id="pc-34">
                                        </label>
                                        <label class="active black" for="pc-35">
                                            <input type="radio" id="pc-35">
                                        </label>
                                        <label class="grey" for="pc-36">
                                            <input type="radio" id="pc-36">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-13.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>T-shirt Contrast Pocket</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$49.66</h5>
                                    <div class="product__color__select">
                                        <label for="pc-37">
                                            <input type="radio" id="pc-37">
                                        </label>
                                        <label class="active black" for="pc-38">
                                            <input type="radio" id="pc-38">
                                        </label>
                                        <label class="grey" for="pc-39">
                                            <input type="radio" id="pc-39">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${pageContext.request.contextPath }/resources/img/product/product-14.jpg">
                                    <ul class="product__hover">
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a></li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/compare.png" alt=""> <span>Compare</span></a>
                                        </li>
                                        <li><a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/search.png" alt=""></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6>Basic Flowing Scarf</h6>
                                    <a href="#" class="add-cart">상세보기</a>
                                    <div class="rating">
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                        <i class="fa fa-star-o"></i>
                                    </div>
                                    <h5>$26.28</h5>
                                    <div class="product__color__select">
                                        <label for="pc-40">
                                            <input type="radio" id="pc-40">
                                        </label>
                                        <label class="active black" for="pc-41">
                                            <input type="radio" id="pc-41">
                                        </label>
                                        <label class="grey" for="pc-42">
                                            <input type="radio" id="pc-42">
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="product__pagination">
                                <a class="active" href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer class="footer">
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
    </footer>
    <script type="text/javascript">
    $(function() {
// 		debugger;
//			alert("${param}")
//			if(search){
		var search = "";
		var category = "";
		var price = "";
		if("${param.category}"){
			category = "&category=${param.category}";
			$(".cusor").each(function(){
// 				debugger;				
				if($(this).text() == "${param.category}"){
					$(this).css("color","red");
				}
			});
			$("#category").attr("hidden",false);
			$("#category").html("${param.category} <i class='bi bi-x'></i>");
		}
		if("${param.search}"){
			search = "&search=${param.search}";
			$("#search").attr("hidden",false);
			$("#search").html("${param.search} <i class='bi bi-x'></i>");
		}
		if("${param.price}"){
			$("input[type=radio][name=radio]").each(function(){
				if($(this).val() == "${param.price}"){
					$(this).prop("checked",true);
				}
			});
			price = "&price=${param.price}";
			$("#price").attr("hidden",false);
			$("#price").html("${param.price} <i class='bi bi-x'></i>");
		}
		
		
		$(".delete").on("click",function(){
			let totalSearch = search + price + category;
			let deleteSearch = $(this).text().trim();
			
			if(deleteSearch == "${param.price}"){
				
				totalSearch = totalSearch.replace(price,"");		
			}else if(deleteSearch == "${param.search}"){
				
				totalSearch = totalSearch.replace(search,"");
			}else if(deleteSearch == "${param.category}"){
				
				totalSearch = totalSearch.replace(category,"");
			}
			location.href="Shop?" + totalSearch;
		});
		
		$(".cusor").on("click",function(){
			location.href="Shop?category=" + $(this).text() + search + price;
		});
		$(".radio").on("click",function(){
			location.href="Shop?price=" + $(this).val() + search + category;
		});
			
	});

    </script>
</body>

</html>