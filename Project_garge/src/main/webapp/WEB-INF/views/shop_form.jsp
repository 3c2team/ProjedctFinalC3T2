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
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="contact__text">
                        <div class="section-title">
                            <h2>판매하기</h2>
                        </div>
                        <div>
                        <input name="media" type="file" multiple accept="image/png, image/jpeg, image/jpg, video/*" class="hidden">
<!-- 	                        <button class="flex items-center justify-center w-20 h-20 mr-1.5 bg-jnGray-200 rounded"> -->
<!-- 	                        	<div class="flex flex-col"> -->
<!-- 		                        	<svg width="32px" height="32px" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg" class=""> -->
<!-- 		                        	<path fill-rule="evenodd" clip-rule="evenodd" d="M15.728 20.4461C13.6481 20.4461 11.9619 18.7599 11.9619 16.68C11.9619 14.6001 13.6481 12.9138 15.728 12.9138C17.8079 12.9138 19.4942 14.6001 19.4942 16.68C19.4942 18.7599 17.8079 20.4461 15.728 20.4461Z" fill="#C2C6CE"> -->
<!-- 		                        	</path> -->
<!-- 		                        	<path fill-rule="evenodd" clip-rule="evenodd" d="M10.4564 7.32295C10.9376 6.00587 11.5097 5.15997 12.8118 5.15997H17.9241C19.2253 5.15997 19.7975 6.00463 20.2785 7.32003H20.7897C24.7543 7.32003 27.968 10.4192 27.968 14.2417V19.119C27.968 22.9409 24.7543 26.04 20.7897 26.04H10.6669C6.7023 26.04 3.48798 22.9409 3.48798 19.119V14.2417C3.48798 10.487 6.58918 7.4303 10.4564 7.32295ZM21.3772 16.68C21.3772 19.8001 18.8481 22.3292 15.728 22.3292C12.6079 22.3292 10.0788 19.8001 10.0788 16.68C10.0788 13.5599 12.6079 11.0308 15.728 11.0308C18.8481 11.0308 21.3772 13.5599 21.3772 16.68ZM21.5988 11.88C21.5988 12.4 22.0204 12.8216 22.5403 12.8216C23.0603 12.8216 23.4819 12.4 23.4819 11.88C23.4819 11.36 23.0603 10.9385 22.5403 10.9385C22.0204 10.9385 21.5988 11.36 21.5988 11.88Z" fill="#C2C6CE"> -->
<!-- 		                        	</path> -->
<!-- 		                        	</svg> -->
<!-- 		                        	<p class="mt-1 text-xs text-jnGray-500">0/10</p> -->
<!-- 	                        	</div> -->
<!-- 							</button> -->
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact__form">
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" placeholder="글제목">
                                </div>
                                <div class="col-lg-7">
                                    <input type="text" placeholder="판매가격">
                                </div>
                                <div class="col-lg-12">
                                    <textarea maxlength="1000" placeholder="- 상품명(브랜드)
- 구매 시기
- 사용 기간
- 하자 여부
* 실제 촬영한 사진과 함께 상세 정보를 입력해주세요.
* 카카오톡 아이디 첨부 시 게시물 삭제 및 이용제재 처리될 수 있어요.
 안전하고 건전한 거래환경을 위해 과학기술정보통신부, 한국인터넷진흥원, 중고나라가 함께합니다."></textarea>
                                    <button type="submit" class="site-btn">판매등록</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- 바텀 시작 -->
	<footer>
		<jsp:include page="inc/bottom.jsp"></jsp:include>
	</footer>
</body>

</html>