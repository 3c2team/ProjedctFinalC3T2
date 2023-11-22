<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="../assets/"
  data-template="vertical-menu-template-free"
>
<head>
  <meta charset="utf-8" />
  <meta
    name="viewport"
    content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
  />

  <title>GARGE | MyPage</title>

  <meta name="description" content="" />

  <!-- Favicon -->
<!--   <link rel="icon" type="image/x-icon" href="../assets/img/favicon/favicon.ico" /> -->

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
    rel="stylesheet"
  />
	
	<!-- top css -->
	<jsp:include page="../inc/style.jsp"></jsp:include>
  <!-- Icons. Uncomment required icon fonts -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/myPage/assets/vendor/fonts/boxicons.css" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/myPage/assets/vendor/css/core.css" class="template-customizer-core-css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/myPage/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/myPage/assets/css/demo.css" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/myPage/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

  <!-- Page CSS -->

  <!-- Helpers -->
  <script src="${pageContext.request.contextPath }/resources/myPage/assets/vendor/js/helpers.js"></script>

  <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
  <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
  <script src="${pageContext.request.contextPath }/resources/myPage/assets/js/config.js"></script>
</head>

<body>
	<%-- 탑 메뉴 --%>
	<jsp:include page="../inc/top.jsp"></jsp:include>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<%-- 사이드 메뉴 --%>
			<jsp:include page="inc/side_menu.jsp"></jsp:include>  
			<div class="layout-page">
				<div class="content-wrapper">
					<div class="container-xxl flex-grow-1 container-p-y">
						<h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">내 정보 /</span> 프로필 관리</h4>
					
						<div class="row">
							<div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
								<div class="card h-100">
									<div class="card-header d-flex align-items-center justify-content-center" style="flex-direction: column;">
<!-- 										<h5 class="card-header m-0 me-2 pb-3"> 프로필 </h5> -->
										<div class="mb-4 mt-5">
											<img src="${pageContext.request.contextPath }/resources/myPage/assets/img/avatars/1.png" class="h-auto rounded-circle" style="width: 200px;" />
										</div>
										
										<h5>
											닉네임
											<a 
												data-bs-toggle="modal"
												href="#info_adit_modal"
											><i class="tf-icons bx bx-edit"></i>
											</a>
											<jsp:include page="modal/info_adit_modal.jsp"></jsp:include>
										</h5>
										<p>#239488</p>
									</div>
								</div>
							</div>
							<div class="col-12 col-lg-8 order-2 order-md-3 order-lg-2 mb-4">
								<div class="card">
									<div class="row row-bordered g-0">
										<h5 class="card-header m-0 me-2 pb-3"> 내 정보 </h5>
									</div>
								</div>
							</div>
						</div>

						<!-- 탈퇴 -->
						<div class="card">
							<h5 class="card-header">계정 삭제</h5>
							<div class="card-body">
								<div class="mb-3 col-12 mb-0">
									<div class="alert alert-warning">
										<h6 class="alert-heading fw-bold mb-1">정말로 계정을 삭제하시겠습니까?</h6>
										<p class="mb-0">계정을 삭제하면 되돌릴 수 없습니다. 다시 확인해주세요.</p>
									</div>
								</div>
<!-- 								<form id="formAccountDeactivation" onsubmit="return false"> -->
								<div class="form-check mb-3">
									<input
									class="form-check-input"
									type="checkbox"
									name="accountActivation"
									id="accountActivation"
									/>
									<label class="form-check-label" for="accountActivation"
									>계정을 삭제하겠습니다.</label
									>
								</div>
								<%-- 모달창 버튼 --%>
								<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete_account_modal">회원탈퇴</button>
							</div>
						</div>
						<!-- 탈퇴 -->
						
					</div>
				</div> <!-- Content Wrapper -->
			</div> <!-- / Layout page -->
		</div> <!-- / Layout Container -->
	</div> <!-- / Layout Wrapper -->


	<%-- 바텀 메뉴 --%>
	<jsp:include page="../inc/bottom.jsp"></jsp:include>
    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="${pageContext.request.contextPath }/resources/myPage/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="${pageContext.request.contextPath }/resources/myPage/assets/vendor/libs/popper/popper.js"></script>
    <script src="${pageContext.request.contextPath }/resources/myPage/assets/vendor/js/bootstrap.js"></script>
    <script src="${pageContext.request.contextPath }/resources/myPage/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="${pageContext.request.contextPath }/resources/myPage/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="${pageContext.request.contextPath }/resources/myPage/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
	</body>
</html>
