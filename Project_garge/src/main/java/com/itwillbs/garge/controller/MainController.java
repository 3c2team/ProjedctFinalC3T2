package com.itwillbs.garge.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.garge.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService service;
	
	@GetMapping("About")
	public String about() {
		
		return "about";
	}
	@GetMapping("Blog")
	public String blog() {
		
		return "blog";
	}
	@GetMapping("BlogDetails")
	public String blogDetails() {
		
		return "blog_details";
	}
	@GetMapping("Checkout")
	public String checkout() {
		
		return "checkout";
	}
	@GetMapping("Contact")
	public String contact() {
		
		return "contact";
	}
	
	// 안써도 될거같음
	@GetMapping("Main")
	public String main(HttpSession session) {
		
		session.setAttribute("sId", "hyeri123");
		
		return "main";
	}
	@GetMapping("Shop")
	public String shop(Model model) {
		
		List<Map<String, String>> selectCategory = service.selectCategory();
		System.out.println(selectCategory);
		model.addAttribute("selectCategory",selectCategory);
		
		return "shop";
	}
	@GetMapping("ShopDetails")
	public String shopDetails() {
		
		return "shop_details";
	}
	@GetMapping("ShopForm")
	public String shopForm() {
		
		return "shop_form";
	}
	@GetMapping("ShoppingCart")
	public String shoppingCart() {
		
		return "shopping_cart";
	}
	//사기조회 페이지 이동
	@GetMapping("FraudInquiry")
	public String fraudInquiry() {
		
		return "fraud_inquiry";
	}
	//사기조회 결과 처리
	@PostMapping("FraudInquiryPro")
	public String fraudInquiryPro() {
		
		return "redirect:/FraudInquiryDetail";
	}
	//사기조회 결과 페이지 이동
	@GetMapping("FraudInquiryDetail")
	public String fraudInquiryDtail() {
		
		return "fraud_inquiry_detail";
	}
	
	//시세조회 페이지 이동
	@GetMapping("MarketPriceInquiry")
	public String marketPriceInquiry() {
		
		return "market_price_inquiry";
	}
	
	
}
