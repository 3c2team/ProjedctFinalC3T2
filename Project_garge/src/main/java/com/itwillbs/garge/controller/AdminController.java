package com.itwillbs.garge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	// admin 메인 
	@GetMapping("/AdminMain")
	public String myPageMain() {
		
		return "admin/product_transaction";
	}
	
	// 신고회원
	@GetMapping("/Declaration")
	public String declaration() {
		
		return "admin/declaration";
	}
	
	// 수수료 내역
	@GetMapping("/ProductSales")
	public String productSales() {
		
		return "admin/product_sales";
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
}
