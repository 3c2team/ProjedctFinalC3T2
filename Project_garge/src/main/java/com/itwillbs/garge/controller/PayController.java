package com.itwillbs.garge.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

//import com.itwillbs.c3t2.service.PayService;

@Controller
public class PayController {
//	@Autowired PayService service;
	
	@PostMapping("AccPro")
	public String accPro(
//					@RequestParam Map<String, Object> map
//					, MemberVO member
//					, OrderDetailVO orderDetail
//					, HttpSession session
//					, Model model
//					, int[] order_detail_num
					) {
		return "pay/acc";
	}
	
	@PostMapping("PaymentPro")
	public String paymentPro() {
		return "pay/pay";
	}
	
	@PostMapping("PaypalPro")
	public String paypalPro(@RequestParam String bank, Map<String, String> map) {
//		System.out.println(bank + "!!!!!!!!!!!!!!!!!"); // 잘 뜸 굳
		map.put("bank", bank);
		return "pay/paypal";
	}
	
	@PostMapping("PaymentComplete")
	public String paymentComplete() {
		return "pay/orderPro";
	}
}
