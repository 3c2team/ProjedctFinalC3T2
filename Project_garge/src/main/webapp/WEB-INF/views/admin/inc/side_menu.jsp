<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
	<div class="menu-inner-shadow"></div>
	
	<ul class="menu-inner py-1">
	<!-- Dashboard -->
		<li class="menu-item active">
			<a href="AdminMain" class="menu-link">
				<i class="menu-icon tf-icons bx bx-home-circle"></i>
				<div data-i18n="MyPageMain">관리자 페이지</div>
			</a>
		</li>
	
	
		<li class="menu-header small text-uppercase">
			<span class="menu-header-text">가지 정보</span>
		</li>
		

		<li class="menu-item">
			<a href="javascript:void(0);" class="menu-link menu-toggle">
				<i class="menu-icon tf-icons bx bx-cube-alt"></i>
				<div data-i18n="Misc">거래내역</div>
			</a>
			<ul class="menu-sub">
				<li class="menu-item">
					<a href="Transaction" class="menu-link">
						<div data-i18n="Under Maintenance">거래 내역</div>
					</a>
				</li>
				<li class="menu-item">
					<a href="ProductCharge" class="menu-link">
						<div data-i18n="Error"> 수수료 내역</div>
					</a>
				</li>
			</ul>
		</li>
		
				<li class="menu-item">
			<a href="javascript:void(0);" class="menu-link menu-toggle">
<!-- 				<i class="menu-icon tf-icons bx bx-lock-open-alt"></i> -->
				<i class="menu-icon tf-icons bx bx-dock-top"></i>
				<div data-i18n="">가지페이</div>
			</a>
			<ul class="menu-sub">
				<li class="menu-item">
					<a href="Deposit" class="menu-link" >
						<div data-i18n="">페이 입금내역</div>
					</a>
				</li>
				<li class="menu-item">
					<a href="Withdraw" class="menu-link">
						<div data-i18n="">페이 출금내역</div>
					</a>
				</li>
<!-- 				<li class="menu-item"> -->
<!-- 					<a href="auth-forgot-password-basic.html" class="menu-link" target="_blank"> -->
<!-- 						<div data-i18n="Basic">거래완료</div> -->
<!-- 					</a> -->
<!-- 				</li> -->
			</ul>
		</li>
		
		<li class="menu-item">
			<a href="Declaration" class="menu-link">
<!-- 				<i class="menu-icon tf-icons bx bx-dock-top"></i> -->
				<i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
				<div data-i18n="">신고회원 조회</div>
			</a>
		</li>
	  <!-- Components -->
<!-- 		<li class="menu-header small text-uppercase"> -->
<!-- 			<span class="menu-header-text">내 정보</span> -->
<!-- 		</li> -->
	  <!-- Cards -->
<!-- 		<li class="menu-item"> -->
<!-- 			<a href="MyProfile" class="menu-link"> -->
<!-- 				<i class="menu-icon tf-icons bx bx-collection"></i> -->
<!-- 				<div data-i18n="Basic">프로필관리</div> -->
<!-- 			</a> -->
<!-- 		</li> -->
	  <!-- User interface -->
<!-- 		<li class="menu-item"> -->
<!-- 			<a href="javascript:void(0)" class="menu-link"> -->
<!-- 				<i class="menu-icon tf-icons bx bx-box"></i> -->
<!-- 				<div data-i18n="User interface">계좌관리</div> -->
<!-- 			</a> -->
<!-- 		</li> -->
	
	  <!-- Extended components -->
<!-- 		<li class="menu-item"> -->
<!-- 			<a href="javascript:void(0)" class="menu-link"> -->
<!-- 				<i class="menu-icon tf-icons bx bx-copy"></i> -->
<!-- 				<div data-i18n="Extended UI">배송지관리</div> -->
<!-- 			</a> -->
<!-- 		</li> -->
		
		<li class="menu-header small text-uppercase">
			<span class="menu-header-text">소식 및 지원</span>
		</li>
	  <!-- Cards -->
		<li class="menu-item">
			<a href="cards-basic.html" class="menu-link">
				<i class="menu-icon tf-icons bx bx-collection"></i>
				<div data-i18n="Basic">자주 묻는 질문</div>
			</a>
		</li>
	  <!-- User interface -->
		<li class="menu-item">
			<a href="javascript:void(0)" class="menu-link">
				<i class="menu-icon tf-icons bx bx-box"></i>
				<div data-i18n="User interface">공지사항</div>
			</a>
		</li>
	
	  <!-- Extended components -->
		<li class="menu-item">
			<a href="javascript:void(0)" class="menu-link">
				<i class="menu-icon tf-icons bx bx-copy"></i>
				<div data-i18n="Extended UI">약관 및 정책</div>
			</a>
		</li>
	</ul>
	<%--
	<li class="menu-header small text-uppercase">
		<span class="menu-header-text">소식 및 지원</span>
	</li>
	<li class="menu-item">
		<a href="javascript:void(0);" class="menu-link menu-toggle">
			<i class="menu-icon tf-icons bx bx-dock-top"></i>
			<div data-i18n="Account Settings">자주 묻는 질문</div>
		</a>
		<ul class="menu-sub">
			<li class="menu-item">
				<a href="pages-account-settings-account.html" class="menu-link">
					<div data-i18n="Account">공지사항</div>
				</a>
			</li>
			<li class="menu-item">
		        <a href="pages-account-settings-notifications.html" class="menu-link">
					<div data-i18n="Notifications">Notifications</div>
				</a>
			</li>
			<li class="menu-item">
				<a href="pages-account-settings-connections.html" class="menu-link">
					<div data-i18n="Connections">Connections</div>
				</a>
			</li>
		</ul>
	</li>
	--%>
</aside>
