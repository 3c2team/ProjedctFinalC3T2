package com.itwillbs.garge.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
		
		return "myPage/myPage_sales";
	}
	
	@GetMapping("MyPurchase")
	public String myPurchase() {
		
		return "myPage/myPage_purchase";
	}
	
	@GetMapping("MyInfo")
	public String myInfo(HttpSession session, Map<String, Object> map, Model model) {
		String sId = (String)session.getAttribute("sId");
		map = service.getMember(sId);
		model.addAttribute("member", map);
		return "myPage/myPage_info";
	}
	
	@ResponseBody
	@PostMapping("MyInfoModify")	// 회원 프로필 수정
	public Map<String, Object> myInfoModify(HttpSession session, @RequestParam Map<String, Object> param) {
		param.put("sId", session.getAttribute("sId"));
		
		int updateCount = service.myInfoModify(param);
		
		Map<String, Object> response = new HashMap<String, Object>();
		if (updateCount > 0) {
			response.put("success", true);
			
	    } else {
	    	response.put("success", false);
	    }
		return response;
		
	}
	
	@PostMapping("DeleteMember")	// 회원 탈퇴
	public String deleteMember(HttpSession session, @RequestParam Map<String, Object> param) {
		
		return "Main";
	}
	
	@GetMapping("MyAccount")
	public String myAccount(HttpSession session, Model model, HttpServletRequest request) {
		String sId = (String)session.getAttribute("sId");
		String servlet_path = request.getServletPath();
		
		List<Map<String, Object>> list = retrieveDataForServletAndSession(sId, servlet_path);
		model.addAttribute("my_account", list);
		
		return "myPage/myPage_account";
	}
	

	@GetMapping("MyAddress")
	public String myAddress(HttpSession session, Model model, HttpServletRequest request) {
		String sId = (String)session.getAttribute("sId");
		String servlet_path = request.getServletPath();
		
		List<Map<String, Object>> list = retrieveDataForServletAndSession(sId, servlet_path);
		model.addAttribute("my_address", list);
		
		return "myPage/myPage_address";
	}
	
	@GetMapping("FAQ")
	public String fAQ() {
		
		return "myPage/tables-basic";
	}
	
	@GetMapping("Announcement")
	public String announcement() {
		
		return "myPage/myPage_favorite";
	}
	
	@GetMapping("TermsAndPolicies")
	public String termsAndPolicies() {
		
		return "myPage/myPage_favorite";
	}
	
	public List<Map<String, Object>> retrieveDataForServletAndSession(String sId, String servlet_path) {
		String table_name = servlet_path.toUpperCase().replace("MY", "MY_").replace("/", "").toString();
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>(); 
		list = service.getMemeberInfo(sId, table_name);
		
		System.out.println(list);
		
		return list;
	}

	
}
