<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>J'ai Faim</title>
</head>
	<meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Male-Fashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/login_temp.css" type="text/css">
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<body>
	<div id="mainLayout">
		<header>
			<jsp:include page="../inc/top.jsp"></jsp:include>
		</header>
	</div>
	<main>
		<div class="main">
			<p class="sign" align="center">로그인</p>
			<form action="LoginPro" method="post" class="form1">
				<input class="user" type="text" name="member_id" id="id" value="${cookie.cookieId.value }" style="align-content: center" placeholder="아이디">
				<input class="pass" type="password" name="member_passwd" id="passwd"style="align-content: center" placeholder="비밀번호">
				<div class="privateCheck">
					<input type="checkbox" name="rememberId"
						<c:if test="${not empty cookie.cookieId.value }">
							checked="checked"
						</c:if>>
					<a>아이디 저장</a>
				</div>
				<div>
					<div class="roginArea">
						<div class="myLogin">
							<input type="submit" class="submit" id="btn_submit" value="로그인">
						</div>
						<div class="kakaoLogin">
							<a href="https://kauth.kakao.com/oauth/authorize?
										client_id=46389b0d2a4098beef5e03823cefb9a9
										&redirect_uri=http%3A%2F%2Flocalhost%3A8081%2Fc3t2%2Fkakao
										&response_type=code" id="kakaoLogin">
					            		Kakao 로그인
					        </a>
						</div>
						<div class="naverLogin" id="naver_id_login">
							<a href="https://nid.naver.com/oauth2.0/authorize?
									response_type=code
									&client_id=O9St1pC9EAPKQRlsYeWN
									&state=state
									&redirect_uri=http://localhost:8081/c3t2/Naver" id="naverLogin">
				            		Naver 로그인
					        </a>
						</div>
						<script type="text/javascript">
							var naver_id_login = new naver_id_login("O9St1pC9EAPKQRlsYeWN", "http://localhost:8081/c3t2/Naver");
							var state = naver_id_login.getUniqState();
							naver_id_login.setDomain("http://localhost:8081/c3t2");
							naver_id_login.setState(state);
							naver_id_login.setPopup();
							naver_id_login.init_naver_id_login();
						</script>
					</div>
					<div class="aTag" align="center">
						<a href="JoinAgree" class="join" style="align-content: center">회원가입</a>
						<a href="IdForgot" class="idForgot" style="align-content: center">아이디찾기</a>
						<a href="PassForgot"  class="passForgot" style="align-content: center">비밀번호찾기</a>
					</div>
				</div>
			</form>
	    </div>
	</main>
	<footer id="footer">
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</footer>
	<!-- Js Plugins -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.nicescroll.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/checkout.js"></script>
</body>
</html>