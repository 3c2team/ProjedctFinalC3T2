package com.itwillbs.garge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
	public String main() {
		
		return "main";
	}
	@GetMapping("Shop")
	public String shop() {
		
		return "shop";
	}
	@GetMapping("ShopDetails")
	public String shopDetails() {
		
		return "shop_details";
	}
	@GetMapping("ShoppingCart")
	public String shoppingCart() {
		
		return "shopping_cart";
	}
	
}
