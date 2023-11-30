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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.garge.service.MainService;
import com.mysql.cj.Session;

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
		return "shop/shop";
	}
	
	@GetMapping("ShopForm")
	public String shopForm(@RequestParam(required = false) Map<String,String> map, HttpSession session, Model model) {
		// 로그인X 처리
		if(session.getAttribute("sId") == null) {
			model.addAttribute("msg", "로그인 후 이용부탁드립니다.");
			return "fail_back";
		}
		
		List<Map<String, String>> selectCategory = service.selectCategory();
//		System.out.println(selectCategory);
		model.addAttribute("selectCategory",selectCategory);
		return "shop/shop_form";
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
	public String registQuewstion(Model model) {
		
		List<Map<String, String>> selectQnaCategory = service.selectQnaCategory();
		System.out.println(selectQnaCategory.size());
		System.out.println(selectQnaCategory);
		model.addAttribute("selectQnaCategory", selectQnaCategory);
		return "regist_question";
	}
	@PostMapping("QuestionRegistPro")
	public String quewstionRegistPro(HttpSession session,@RequestParam(value =  "file" , required = false) MultipartFile[] imageList) {
		for(MultipartFile file : imageList) {
			System.out.println("fdfdfd : " + file.getOriginalFilename());
//			session.;
		}
		return "";
	}	

}
