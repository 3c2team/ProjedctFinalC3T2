package com.itwillbs.garge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

	@GetMapping("AdminMain")
	public String myPageMain() {
		
		return "admin/admin_main";
	}
}
