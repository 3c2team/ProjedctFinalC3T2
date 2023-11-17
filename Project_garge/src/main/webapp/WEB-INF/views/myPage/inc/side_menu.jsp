<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
	<div class="menu-inner-shadow"></div>
	
	<ul class="menu-inner py-1">
	<!-- Dashboard -->
		<li class="menu-item active">
			<a href="MyPageMain" class="menu-link">
				<i class="menu-icon tf-icons bx bx-home-circle"></i>
				<div data-i18n="MyPageMain">마이페이지</div>
			</a>
		</li>
	
	
		<li class="menu-header small text-uppercase">
			<span class="menu-header-text">나의 거래</span>
		</li>
		<li class="menu-item">
			<a href="MyFavorite" class="menu-link">
				<i class="menu-icon tf-icons bx bx-dock-top"></i>
				<div data-i18n="MyFavorite">관심목록</div>
			</a>
		</li>
		<li class="menu-item">
			<a href="javascript:void(0);" class="menu-link menu-toggle">
				<i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
				<div data-i18n="Authentications">판매내역</div>
			</a>
			<ul class="menu-sub">
				<li class="menu-item">
					<a href="auth-login-basic.html" class="menu-link" target="_blank">
						<div data-i18n="Basic">판매중</div>
					</a>
				</li>
				<li class="menu-item">
					<a href="auth-register-basic.html" class="menu-link" target="_blank">
						<div data-i18n="Basic">거래완료</div>
					</a>
				</li>
				<li class="menu-item">
					<a href="auth-forgot-password-basic.html" class="menu-link" target="_blank">
						<div data-i18n="Basic">숨김</div>
					</a>
				</li>
			</ul>
		</li>
		<li class="menu-item">
			<a href="javascript:void(0);" class="menu-link menu-toggle">
				<i class="menu-icon tf-icons bx bx-cube-alt"></i>
				<div data-i18n="Misc">구매내역</div>
			</a>
			<ul class="menu-sub">
				<li class="menu-item">
					<a href="pages-misc-error.html" class="menu-link">
						<div data-i18n="Error">Error</div>
					</a>
				</li>
				<li class="menu-item">
					<a href="pages-misc-under-maintenance.html" class="menu-link">
						<div data-i18n="Under Maintenance">Under Maintenance</div>
					</a>
				</li>
			</ul>
		</li>
	  <!-- Components -->
		<li class="menu-header small text-uppercase">
			<span class="menu-header-text">내 정보</span>
		</li>
	  <!-- Cards -->
		<li class="menu-item">
			<a href="MyProfile" class="menu-link">
				<i class="menu-icon tf-icons bx bx-collection"></i>
				<div data-i18n="Basic">프로필관리</div>
			</a>
		</li>
	  <!-- User interface -->
		<li class="menu-item">
			<a href="javascript:void(0)" class="menu-link">
				<i class="menu-icon tf-icons bx bx-box"></i>
				<div data-i18n="User interface">계좌관리</div>
			</a>
		</li>
	
	  <!-- Extended components -->
		<li class="menu-item">
			<a href="javascript:void(0)" class="menu-link">
				<i class="menu-icon tf-icons bx bx-copy"></i>
				<div data-i18n="Extended UI">배송지관리</div>
			</a>
		</li>
		
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
