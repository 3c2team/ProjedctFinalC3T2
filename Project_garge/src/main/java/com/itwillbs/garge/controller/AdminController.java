package com.itwillbs.garge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	//admin 로그인
	@GetMapping("/AdminLogin")
	public String adminLogin() {
		
		return "admin/admin_login";
	}

	// admin 메인 
	@GetMapping("/AdminMain")
	public String myPageMain() {
		
		return "admin/admin_main";
	}
	
	// 신고회원
	@GetMapping("/Declaration")
	public String declaration() {
		
		return "admin/declaration";
	}
	
	// 수수료 내역
	@GetMapping("/ProductCharge")
	public String productSales() {
		
		return "admin/product_charge";
	}
	
	// 거래내역
	@GetMapping("/Transaction")
	public String transaction() {
		
		return "admin/product_transaction";
	}
	
	// 가지페이 입금내역
	@GetMapping("/Deposit")
	public String deposit() {
		
		return "admin/deposit";
	}
	// 가지페이 출금내역
	@GetMapping("/Withdraw")
	public String withdraw() {
		
		return "admin/withdraw";
	}
	
	// 차트 확인용(지울꺼임)
	@GetMapping("/Charts")
	public String charts() {
		return "admin/charts";
	}
	
	@GetMapping("/MyChat")
	public String myChat() {
		
		return "myChat";
	}
	
}
