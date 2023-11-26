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

import com.itwillbs.garge.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
	
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
	
	// 채팅하기
	@GetMapping("/MyChat")
	public String myChat(HttpSession session) {
		String sId = (String)session.getAttribute("sId");
		System.out.println("sId : " + sId);
		
		
		return "myChat";
	}
	
	@PostMapping("/AdminLoginPro")
	public String adminLoginPro(HttpSession session, Model model,@RequestParam Map<String, String> map) {
		System.out.println("id : " + map.get("id") + ", passwd : " +  map.get("passwd"));
	
		
//		MemberVO dbMember = adminService.selectAdminMember(map);
		
//		session.setAttribute("sId", id);
		
//		String sId = (String)session.getAttribute("sId");
//		System.out.println("내 계정 : " + sId);
//		if(!aId.equals("dnjsgk19")) {
//			model.addAttribute("msg", "관리자 계정이 아닙니다."); // 출력할 메세지
//			model.addAttribute("targetURL", "Login"); // 이동시킬 페이지
//			session.invalidate();
//			return "forward";
//		}
		
		return "admin/admin_main";
	}
	
	@GetMapping("/PagesTest")
	public String pageTest() {
		
		return "admin/pagesTest";
	}
	
	@PostMapping("/SearchList")
	public String searchList(
			@RequestParam(defaultValue = "1990-01-01") String startDate, 
			@RequestParam(defaultValue = "") String endDate) {
		
		System.out.println("SearchList => 시작일자 : " + startDate + ", 종료일자 : " + endDate);
		
		
		return "";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
