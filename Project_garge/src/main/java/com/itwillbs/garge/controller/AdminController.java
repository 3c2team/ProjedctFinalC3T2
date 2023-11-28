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
import com.itwillbs.garge.vo.DepositVO;
import com.itwillbs.garge.vo.MemberVO;
import com.itwillbs.garge.vo.WithdrawVO;

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
	@GetMapping("/AdminMain") // 메인에 차트, 지표 표시 
	public String myPageMain(HttpSession session, Model model) {
		
		Map<String, Integer> memberIn = adminService.selectMemberJoin();
		
		model.addAttribute("memberInCount",memberIn.get("selectMemberIn"));
		
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
	public String transaction(Model model) {
		
		// 거래 방법 출력
		List<DepositVO> transactionList = adminService.selectTransacList();
		model.addAttribute("transactionList",transactionList);
		
		return "admin/product_transaction";
	}
	
	//고객계좌 입금한 내역
	@GetMapping("/Deposit")
	public String deposit(Model model) {
		
		// 입금한 내역 조회
		List<WithdrawVO> depositList = adminService.selectDepositList();
//		List<WithdrawVO> withdrawList = adminService.selectWithdrawList();
		model.addAttribute("depositList",depositList);
		
		return "admin/deposit";
	}
	
	// 고객계좌 출금한 내역
	@GetMapping("/Withdraw")
	public String withdraw(Model model) {
		
		// 출금한 내역 조회
		List<DepositVO> withdrawList = adminService.selectWithdrawList();
//		System.out.println("출금한 내역 : " + withdrawList);
		model.addAttribute("withdrawList", withdrawList);
		
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
	public String adminLoginPro(@RequestParam Map<String, String> map, HttpSession session, Model model, MemberVO member) {
		
		System.out.println("id : " + map.get("id") + ", passwd : " +  map.get("passwd"));
		
		// 관리자 계정인지 조회
		List<MemberVO> adminMember = adminService.selectAdminMember(map);
//		System.out.println("관리자 계정이니? : " + adminMember);
		
		if(adminMember.isEmpty()) {
			model.addAttribute("msg", "관리자 계정이 아닙니다."); // 출력할 메세지
//			model.addAttribute("targetURL", "Login"); // 이동시킬 페이지
//			session.invalidate();
			return "fail_back";
		}
		
		session.setAttribute("sId", map.get("id"));
		// 금일 회원가입 인원 조회
		Map<String, Integer> memberIn = adminService.selectMemberJoin();
		System.out.println("금일 회원 가입 수 : " + memberIn.get("selectMemberIn"));
		model.addAttribute("memberInCount",memberIn.get("selectMemberIn"));
		
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
	
	// 회원 목록 조회
	@GetMapping("/MemberList")
	public String memberList(@RequestParam Map<String, String> map, Model model, HttpSession session) {
		
		String sId = (String)session.getAttribute("sId");
		map.put("id", sId);
		
		// 관리자 계정인지 조회
		List<MemberVO> adminMember = adminService.selectAdminMember(map);
		
		if(adminMember.isEmpty()) {
			model.addAttribute("msg", "로그인 후 이용 바랍니다."); // 출력할 메세지
			return "fail_back";
		}
		
		List<MemberVO> memberList = adminService.selectMemberAll();
		System.out.println("총 회원 조회 : " + memberList);
		model.addAttribute("memberList",memberList);

		Map<String, Integer> memberCount = adminService.selectMemberCount();
		System.out.println("총 회원 수 : " + memberCount.get("member"));
		model.addAttribute("memberCount",memberCount.get("member"));
		
		return "admin/admin_list";
	}
	
	// 회원 조회 페이지 기간별 검색 
	@PostMapping("/MemberListPeriod")
	public String memberListPeriod(
			@RequestParam Map<String, String> map,
			@RequestParam(defaultValue = "1990-01-01") String startDate, 
			@RequestParam(defaultValue = "") String endDate,
			Model model) {
		
		map.put("startDate", startDate);
		map.put("endDate",endDate);
		
		// 기간 회원 검색
		List<MemberVO> memberPeriod = adminService.selectMemberPeriodList(map);
		System.out.println("기간 검색 회원 : " + memberPeriod);
		model.addAttribute("memberList", memberPeriod);
		// 기간 회원 수 조회
		Map<String, Integer> memberCount = adminService.selectMemberPeriodCount(map);
		System.out.println("기간 회원 수 : " + memberCount.get("memberCount"));
		model.addAttribute("memberCount",memberCount.get("memberCount"));
				
		return "admin/admin_list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
