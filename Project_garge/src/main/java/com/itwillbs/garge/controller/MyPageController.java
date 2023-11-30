package com.itwillbs.garge.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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
import org.springframework.web.multipart.MultipartFile;

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
	
	@PostMapping("MyInfoModify")	// 회원 프로필 수정
	public String myInfoModify(HttpSession session, @RequestParam Map<String, Object> param) {
		param.put("sId", session.getAttribute("sId"));
		
		int updateCount = service.myInfoModify(param);
		
		if (updateCount > 0) {
			return "redirect:/MyInfo";
	    } else {
	    	return "fail_back";
	    }
	}
	
	@PostMapping("MyProfileModify")	// 회원 프로필 사진 수정
	public String myProfileModify(HttpSession session, @RequestParam Map<String, Object> param, @RequestParam(value = "file", required=false) MultipartFile file) {
		
		String sId = (String)session.getAttribute("sId");
		param.put("sId", sId);
		String uploadDir = "resources/TradeUp_upload/user_profile_image";
		String saveDir = session.getServletContext().getRealPath(uploadDir); //.replace("프로젝트명"); 추가하기
		String fileName = "";
		try {
			
			//하위폴더 고민중
//				subDir = (String)session.getAttribute("sMember_num");
//				saveDir += subDir;
			
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// 중복방지 uuid 추가하기 고민중
		fileName = file.getOriginalFilename();// 파일이름 추가 작업 해주기
		if(file != null || !(file.getOriginalFilename().equals(""))) {
//				param.put("modify_value", "");
			param.put("modify_value", uploadDir + "/" + fileName);
		}
			
		int updateCount = service.myInfoModify(param);
		
		Map<String, Object> response = new HashMap<String, Object>();
		if (updateCount > 0) {
			try {
				if(file != null && !(file.getOriginalFilename().equals(""))) {
					file.transferTo(new File(saveDir, fileName));
				}
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "redirect:/MyInfo";
	    } else {
	    	return "fail_back";
	    }
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
