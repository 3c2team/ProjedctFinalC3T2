package com.itwillbs.garge.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.JsonObject;
import com.itwillbs.garge.service.PayService;

//import com.itwillbs.c3t2.service.PayService;

@Controller
public class PayController {
	@Autowired
	PayService service;
	
	// 결제 페이지
	@GetMapping("Checkout")
	public String checkout(HttpSession session, Model model, Map<String,String> map) {
		String sId = (String)session.getAttribute("sId");
		String sEmail = (String)session.getAttribute("sEmail");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요한 페이지입니다.");
			model.addAttribute("targetURL", "Login");
			return "forward";
		}
		
		model.addAttribute("sId", sId);
		model.addAttribute("sEmail", sEmail);
		
		List<Map<String, String>> getMyAdress = service.getMyAddress(sId);
		model.addAttribute("addressCount", getMyAdress.size());
		model.addAttribute("address", getMyAdress);

		Map<String, String> getMyAdressMain = service.getMyAddressMain(sId);
		model.addAttribute("addressMain", getMyAdressMain);
		
		JsonObject json = new JsonObject();
		for(Map.Entry<String, String> entry : getMyAdressMain.entrySet()) {
			json.addProperty(entry.getKey(), entry.getValue());
//			System.out.println(entry.getKey());
		}
		
		model.addAttribute("addressMain2", json.toString());
		
		return "checkout";
	}
	
	// 카카오페이
	@PostMapping("AccPro")
	public String accPro(
					@RequestParam Map<String, String> map
//					, MemberVO member
//					, OrderDetailVO orderDetail
					, HttpSession session
					, Model model
//					, int[] order_detail_num
					) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요한 페이지입니다.");
			model.addAttribute("targetURL", "Login");
			return "forward";
		}
		
		model.addAttribute("deliver", map);
		System.out.println(map);
		return "pay/acc";
	}
	
	// 업페이
	@PostMapping("PaymentPro")
	public String paymentPro(@RequestParam Map<String, String> map, Model model, HttpSession session) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요한 페이지입니다.");
			model.addAttribute("targetURL", "Login");
			return "forward";
		}
		
		model.addAttribute("deliver", map);
		System.out.println(map);
		if(map.get("pick").equals("on")) {
			int changeCount = service.updateMainAddress(map); // 원래 메인 주소 그냥 주소로 변경
			if(changeCount < 0) {
				model.addAttribute("msg", "오류가 발생하였습니다. 다시 주문해주세요.");
				return "fail_back";
			}
			int insertCount = service.insertMainAddress(map); // 메인 주소 추가
			if(insertCount < 0) {
				model.addAttribute("msg", "오류가 발생하였습니다. 다시 주문해주세요.");
				return "fail_back";
			}
		}
		if(map.get("add").equals("on") && !map.get("pick").equals("on")) {
			int insertCount = service.insertAddress(map); // 주소 추가
			if(insertCount < 0) {
				model.addAttribute("msg", "오류가 발생하였습니다. 다시 주문해주세요.");
				return "fail_back";
			}
		}
		return "pay/pay";
	}
	
	// 무통장 입금
	@PostMapping("PaypalPro")
	public String paypalPro(@RequestParam String bank, @RequestParam Map<String, String> map, Model model, HttpSession session) {
		String sId = (String)session.getAttribute("sId");
		
		if(sId == null) {
			model.addAttribute("msg", "로그인이 필요한 페이지입니다.");
			model.addAttribute("targetURL", "Login");
			return "forward";
		}
		
		map.put("bank", bank);
		model.addAttribute("deliver", map);
		System.out.println(map);
		
		if(map.get("pick").equals("on")) {
			int changeCount = service.updateMainAddress(map); // 원래 메인 주소 그냥 주소로 변경
			if(changeCount < 0) {
				model.addAttribute("msg", "오류가 발생하였습니다. 다시 주문해주세요.");
				return "fail_back";
			}
			int insertCount = service.insertMainAddress(map); // 메인 주소 추가
			if(insertCount < 0) {
				model.addAttribute("msg", "오류가 발생하였습니다. 다시 주문해주세요.");
				return "fail_back";
			}
		}
		
		if(map.get("add").equals("on") && !map.get("pick").equals("on")) {
			int insertCount = service.insertAddress(map); // 주소 추가
			if(insertCount < 0) {
				model.addAttribute("msg", "오류가 발생하였습니다. 다시 주문해주세요.");
				return "fail_back";
			}
		}
		return "pay/paypal";
	}
	
	@PostMapping("PaymentComplete")
	public String paymentComplete() {
		return "pay/orderPro";
	}
}
