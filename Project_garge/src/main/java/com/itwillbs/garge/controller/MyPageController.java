package com.itwillbs.garge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.garge.service.MyPageService;

@Controller
public class MyPageController {
	@Autowired
	MyPageService service;
	
	@GetMapping("MyPageMain")
	public String myPageMain() {
		
		return "myPage/myPage_main";
	}
	
	@GetMapping("MyFavorite")
	public String myFavorite() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("MyProfile")
	public String myProfile() {
		
		return "myPage/myPage_profile";
	}
	
	@GetMapping("MySales")
	public String mySales() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("MyPurchase")
	public String myPurchase() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("MyInfo")
	public String myInfo() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("MyAccount")
	public String myAccount() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("MyAddress")
	public String myAddress() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("FAQ")
	public String fAQ() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("Announcement")
	public String announcement() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("TermsAndPolicies")
	public String termsAndPolicies() {
		
		return "myPage/myPage_favorite";
	}
	
	
	
}
