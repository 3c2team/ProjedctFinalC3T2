package com.itwillbs.garge.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	
	// 등록 완료
	@PostMapping("/ShopSuccess")
	public String shopSuccess(@RequestParam Map<String, Object> map
							  ,@RequestParam(value = "file", required=false) MultipartFile[] file
							  , HttpSession session, Model model) {
		System.out.println("오긴옴?" + map);
		
//		거래 방식 지정
		if(map.get("trading_method1") != null && map.get("trading_method2") != null) {
			map.put("trading_method", "total");
		}

		//--------------------- < 이미지 경로 : 가상, 실제 경로> ---------------------
		String sId = (String)session.getAttribute("sId");
		String uploadDir = "/resources/upload/"; //가상 경로
		String saveDir = session.getServletContext().getRealPath(uploadDir).replace("Project_garge/resources/upload/", ""); //실제 경로
		
		//===================== < 이미지 처리 : yyyy/MM/dd 형식 > ===================== 
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
			
		//-------------------- < 이미지명 처리 : 3자리 랜덤 > --------------------
		String uuid = UUID.randomUUID().toString();
		System.out.println("s234123515163456 : " + file);
		int insertImgCount = 0;
		int insertCount = 0;
		try {
			
			for(MultipartFile file2 : file) {
				System.out.println("여기 안와? : " + file2.getOriginalFilename());
					
				String fileName =  uuid.substring(0, 3) + "_" + file2.getOriginalFilename();
				
				if(file == null || fileName.equals("")) {
					map.put("file_name", "");
				} 
				map.put("file_name", uploadDir + subDir + "/" + fileName);
				
				file2.transferTo(new File(saveDir, fileName));
				System.out.println("프로덕트에 넣을 수 있어? : "+map.get("file_name"));
				
				map.put("member_id", sId);
				map.put("product_image", fileName);
				if(file.length < 1) {
					insertCount = shopService.registProduct(map);
				}
				insertImgCount = shopService.registProductImg(map);
				System.out.println(" 이미지 몇개씩 들어있어? :"+map.get("product_img"));
				
				if(insertCount > 0 && insertImgCount > 0) { //성공
					model.addAttribute("msg", "판매할 상품을 등록했습니다.");
					return "redirect:/Shop";
				}
			}
			//------------------ < 게시물 등록 처리 > -------------------
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return "redirect:/ShopForm";
	}

	
	
//	// 상세페이지
//	@GetMapping("ShopDetail")
//	public String productDetail(HttpSession session, int product_num, Model model, @RequestParam Map<String, Object> map) {
//		map.put("sId", session.getAttribute("sId"));
//		// 상품 정보 조회
//		Map<String, Object> productDetail = shopService.getProduct(product_num);
//		// 이미지 조회
//		List<ProductImgVO> productImgList = shopService.getProductImg(proNum);
//		
//		// productImgList에서 가지고 온 객체를 판별하여 info 이미지는 productInfoImg에,
//		// 미니 이미지는 productImgList 저장 후 전송
//		List<ProductImgVO> productMiniImgList = new ArrayList<ProductImgVO>();
//		Map<String, Object> productInfoImg = new ProductImgVO();
//		for(ProductImgVO proImg : productImgList ) {
//			if(proImg.getProduct_image().contains("info")) {
//				productInfoImg = proImg;
//			} else {
//				productMiniImgList.add(proImg);
//			}
//		}
//		
//		model.addAttribute("productDetail", productDetail);
//		model.addAttribute("productMiniImgList", productMiniImgList);
//		model.addAttribute("productInfoImg", productInfoImg);
//		
//		
//		
//		return "shop/shop_details";
//	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
