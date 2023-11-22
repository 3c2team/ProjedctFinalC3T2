package com.itwillbs.garge.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	@GetMapping("Login")
	public String login() {
		
		return "login/login";
	}
	
	@GetMapping("Join")
	public String join() {
		
		return "login/join";
	}
	
	@GetMapping("IdForgot")
	public String idForgot() {
		
		return "login/id_forgot";
	}
	@GetMapping("IdForgot2")
	public String idForgot2() {
		
		return "login/id_forgot2";
	}
	
	@GetMapping("PasswdForgot")
	public String passwdForgot() {
		
		return "login/passwd_forgot";
	}
	@GetMapping("PasswdForgot2")
	public String passwdForgot2() {
		
		return "login/passwd_forgot2";
	}
	@GetMapping("AccountAuth")
	public String accountAuth() {
		
		return "login/account_auth";
	}
	@GetMapping("JoinAgree")
	public String joinAgree() {
		
		return "login/join_agree";
	}
}
