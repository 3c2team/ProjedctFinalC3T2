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
	                        <button class="flex items-center justify-center w-20 h-20 mr-1.5 bg-jnGray-200 rounded">
							</button>
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