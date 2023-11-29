package com.itwillbs.garge.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.garge.service.MainService;
import com.itwillbs.garge.service.ShopService;

@Controller
public class ShopController {
	
	@Autowired
	MainService service;
	
	@Autowired
	ShopService shopService;
	
//	@GetMapping("ShopForm")
//	public String shopForm(@RequestParam(required = false) Map<String,String> map, HttpSession session, Model model) {
//		
//		// 로그인X 처리
//		if(session.getAttribute("sId") == null) {
//			model.addAttribute("msg", "로그인 후 이용부탁드립니다.");
//			return "fail_back";
//		}
//		
//		List<Map<String, String>> selectCategory = service.selectCategory();
//		System.out.println(selectCategory);
//		model.addAttribute("selectCategory",selectCategory);
//		return "shop_form";
//	}
	
	// 등록 완료
	@PostMapping("/ShopSuccess")
	public String shopSuccess(@RequestParam Map<String, Object> map
							  ,@RequestParam(value = "files", required=false) MultipartFile file
							  , HttpSession session, Model model) {
		System.out.println("오긴옴?" + map);
		
		String sId = (String)session.getAttribute("sId");
		String uploadDir = "/sssion.getAttr"; //가상 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir).replace("Project_garge/", ""); //실제 경로
		
		
//		//===================== < 이미지 처리 > ===================== 
//		//--------------------- < 이미지 경로 > ---------------------
//		// 서브디렉토리명 저장 yyyy/MM/dd 형식
		String subDir = "";
		try {
			LocalDate now = LocalDate.now();
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
			subDir = now.format(dtf);
			saveDir += subDir;
			
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}
//		//-------------------- < 이미지명 처리 > --------------------
		String uuid = UUID.randomUUID().toString();
		System.out.println("swe11121111 : " + file);
		System.out.println("3454422112121212a : "+file.getOriginalFilename());
		String fileName =  uuid.substring(0, 3) + "_" + file.getOriginalFilename();
		
		if(file == null || file.getOriginalFilename().equals("")) {
			map.put("file_name", "");
		} else {
			map.put("file_name", uploadDir + subDir + "/" + fileName);
		}
		map.put("member_id", sId);
//		//------------------ < 게시물 등록 처리 > -------------------
		
		int insertCount = shopService.registProduct(map);
//		
		try {
			if(insertCount > 0) { //성공
				if(file != null && !(file.getOriginalFilename().equals(""))) {
					file.transferTo(new File(saveDir, fileName));
					
					System.out.println("***************************************saveDir: " + saveDir);
					System.out.println("***************************************fileName: " + fileName);
				}
				model.addAttribute("msg", "판매할 상품을 등록했습니다.");

				return "home";
			} 
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return "home";
	}

	@GetMapping("ShopDetails")
	public String shopDetails() {
		
		return "shop/shop_details";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
