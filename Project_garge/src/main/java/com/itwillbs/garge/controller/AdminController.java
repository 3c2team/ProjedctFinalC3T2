package com.itwillbs.garge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	@GetMapping("/AdminMain")
	public String myPageMain() {
		
		return "admin/admin_main";
	}
	
	@GetMapping("/Declaration")
	public String declaration() {
		
		return "admin/declaration";
	}
	
	@GetMapping("/ProductSales")
	public String productSales() {
		
		return "admin/product_sales";
	}
}
