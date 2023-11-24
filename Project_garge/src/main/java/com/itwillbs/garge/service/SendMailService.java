package com.itwillbs.garge.service;

import org.springframework.stereotype.Service;

import com.itwillbs.garge.handler.GenerateRandomCode;
import com.itwillbs.garge.handler.SendMailClient;

@Service
public class SendMailService {
	
	public String sendAuthMail(String id, String email) {
		String authCode = GenerateRandomCode.getRandomCode(50);
		String subject = "[J'ai Faim] 가입 인증 메일입니다.";
		String content = "J'ai Faim 가입을 환영합니다. 아래 링크를 클릭하여 이메일 인증을 완료해주세요." 
							+ "<a href='http://localhost:8081/c3t2/MemberEmailAuth?id=" + id + "&auth_code=" + authCode + "'>"
							+ "이메일 인증확인 링크</a>";
		new Thread(new Runnable() {
			@Override
			public void run() {
				SendMailClient mailClient = new SendMailClient();
				mailClient.sendMail(email, subject, content);
			}
		}).start();
		
		return authCode;
	}
	
	// 변경된 비밀번호 메일로 전송
	public String sendAuthMail_passwd(String id, String email) {
		String authCode = GenerateRandomCode.getRandomCode(8);
		String subject = "[J'ai Faim] 비밀번호 변경 메일입니다.";
		String content = "변경된 임시 비밀번호입니다. 로그인 후 비밀번호 변경해주세요!<br>" + authCode;
		new Thread(new Runnable() {
			@Override
			public void run() {
				SendMailClient mailClient = new SendMailClient();
				mailClient.sendMail(email, subject, content);
			}
		}).start();
		
		return authCode;
	}

}