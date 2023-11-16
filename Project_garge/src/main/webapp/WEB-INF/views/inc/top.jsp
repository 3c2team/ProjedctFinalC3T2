<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="./"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="./">Home</a></li>
                            <li><a href="Shop">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="dropdown">
                                    <li><a href="About">About Us</a></li>
                                    <li><a href="ShopDetails">Shop Details</a></li>
                                    <li><a href="ShoppingCart">Shopping Cart</a></li>
                                    <li><a href="Checkout">Check Out</a></li>
                                    <li><a href="BlogDetails">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="Blog">Blog</a></li>
                            <li><a href="Contact">Contacts</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/chatting.png" style=" width: 20px" alt=""></a>
                        <a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/heart.png" alt=""></a>
                        <a href="#"><img src="${pageContext.request.contextPath }/resources/img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">$0.00</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
        
        
        
    </header>
    <!-- Header Section End -->