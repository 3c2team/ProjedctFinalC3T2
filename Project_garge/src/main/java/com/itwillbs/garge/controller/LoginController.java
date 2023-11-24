package com.itwillbs.garge.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.itwillbs.garge.service.MainService;
import com.itwillbs.garge.vo.MemberVO;

@Controller
public class LoginController {
	@Autowired
	MainService service;
	
//	@GetMapping("Login")
//	public String login() {
//		
//		return "login/login";
//	}
//	
//	@PostMapping("LoginPro")
//	public String loginPro(
//			String uid, MemberVO member, HttpSession session, HttpServletResponse response, Model model) {
////		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
//		MemberVO dbMember = service.getMemberLogin(uid);
//		System.out.println(dbMember);
////		System.out.println(dbMember.getMember_passwd());
////		!passwordEncoder.matches(member.getMember_passwd(), dbMember.getMember_passwd())
//		if(dbMember == null) {
//			model.addAttribute("msg", "로그인 실패!");
//			return "fail_back";
//		} else { // 로그인 성공
//			if(dbMember.getMail_auth_status().equals("N")) { // 이메일 미인증 회원
//				model.addAttribute("msg", "이메일 인증 후 로그인이 가능합니다!");
//				return "fail_back";
//			} else { // 이메일 인증 회원
//				session.setAttribute("loginUser", dbMember);
//				session.setAttribute("sId", dbMember.getMember_id());
//				session.setAttribute("sName", dbMember.getMember_name());
//				session.setAttribute("sPhone", dbMember.getMember_phone_num());
//				session.setAttribute("sEmail", dbMember.getMember_e_mail());
//				return "redirect:/";
//			}
//		}
//	}
//	
//	@GetMapping("Join")
//	public String join() {
//		
//		return "login/join";
//	}
//	
//	@GetMapping("IdForgot")
//	public String idForgot() {
//		
//		return "login/id_forgot";
//	}
//	@GetMapping("IdForgot2")
//	public String idForgot2() {
//		
//		return "login/id_forgot2";
//	}
//	
//	@GetMapping("PasswdForgot")
//	public String passwdForgot() {
//		
//		return "login/passwd_forgot";
//	}
//	@GetMapping("PasswdForgot2")
//	public String passwdForgot2() {
//		
//		return "login/passwd_forgot2";
//	}
//	@GetMapping("AccountAuth")
//	public String accountAuth() {
//		
//		return "login/account_auth";
//	}
//	@GetMapping("JoinAgree")
//	public String joinAgree() {
//		
//		return "login/join_agree";
//	}
}
