package com.itwillbs.garge.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String checkout(HttpSession session, Model model) {
		String sId = (String)session.getAttribute("sId");
		String sEmail = (String)session.getAttribute("sEmail");
//		String sEmail2 = (String)session.getAttribute("sEmail2");
//		Map<String, String> memberAddress = service.getMemberAddress(sId);
//		model.addAttribute("memberAddress" ,memberAddress);
//		model.addAttribute("sName", sName);
		model.addAttribute("sId", sId);
		model.addAttribute("sEmail", sEmail);
//		model.addAttribute("sEmail2", sEmail2);
//		System.out.println(memberAddress);
		return "checkout";
	}
	@GetMapping("Contact")
	public String contact() {
		
		
		return "contact";
	}
	
	// 안써도 될거같음
	@GetMapping("Main")
	public String main(HttpSession session) {
		
//		session.setAttribute("sId", "hyeri123");
		
		return "main";
	}
	@GetMapping("Shop")
	public String shop(Model model,@RequestParam(required = false) Map<String,String> map) {
		
		List<Map<String, String>> selectCategory = service.selectCategory();
		
//		System.out.println(selectCategory);
		System.out.println(map);
		if(map.get("price") != null) {
			System.out.println("일단 이건 성공");
			String[] price = map.get("price")
							.replace("만원", "0000")
							.replace("이상", "")
							.replace("이하", "")
							.trim()
							.split("-");
			for(int i = 0; i < price.length; i++) {
				if(i == 1) {
					map.put("minPrice", price[i]);
				}
				map.put("maxPrice", price[i]);
			}
		}
		List<Map<String, Object>> selectProduct = service.selectProduct(map);
		System.out.println("상품 목록" + selectProduct);
		model.addAttribute("selectProduct",selectProduct);
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
	//고객센터 페이지 이동
	@GetMapping("Customer")
	public String customer() {
		
		return "customer";
	}
	//1대1 문의 페이지 이동
	@GetMapping("RegistQuewstion")
	public String registQuewstion() {
		
		return "regist_question";
	}
	
	
}
