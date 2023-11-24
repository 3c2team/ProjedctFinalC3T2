package com.itwillbs.garge.handler;

import java.util.Date;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMailClient {
	// 메일 발송을 수행할 sendMail() 메서드 정의
	// => 파라미터 : 이메일, 제목, 본문
	public void sendMail(String email, String subject, String content) {
		try {
			// 1. 시스템(서버)의 속성 정보(= 서버 정보)를 java.util.Properties 객체로 리턴받기
			Properties props = System.getProperties();
			
			// 2. Properties 객체의 put() 메서드를 호출하여 메일 발송에 필요한 기본 정보 설정
			// 메일 발송에 사용할 메일 서버 지정(Gmail, 네이버, 네이트, 아웃룩 등)
			props.put("mail.smtp.host", "smtp.gmail.com"); // 구글(Gmail)의 SMTP 서버 주소
			props.put("mail.smtp.port", "587"); // Gmail TLS SMTP 포트번호
			props.put("mail.smtp.auth", "true"); // SMTP 서버 접근 시 인증 여부 설정(로그인 필요한 서버)
			// 메일 서버 인증 관련 추가 정보 설정(설정 내용에 따라 port 번호 바뀜)
			props.put("mail.smtp.starttls.enable", "true"); // TLS 프로토콜(보안 관련 프로토콜) 사용 
			props.put("mail.smtp.ssl.protocols", "TLSv1.2"); // TLS 인증 프로토콜의 버전 설정
			props.put("mail.smtp.ssl.trust", "smtp.gmail.com"); // SSL 인증에 사용할 신뢰 서버 주소
			
			// 3. 메일 서버 인증 정보를 관리하는 사용자 정의 클래스 인스턴스 생성
			//    GoogleMailAuthenticator -> javax.mail.Authenticator 타입으로 업캐스팅
			Authenticator authenticator = new GoogleMailAuthenticator();
			
			// 4. 자바 메일 전송 수행 작업을 javax.mail.Session 객체 단위로 관리하므로
			//    Session 클래스의 getDefaultInstance() 메서드를 호출하여 Session 객체 리턴받기
			//    => 주의! 웹에서 사용하는 기본 세션 객체(HttpSession)와 다르다!
			//    => 파라미터 : Properties 객체(서버 정보), Authenticator 객체(인증 정보)
			Session mailSession = Session.getDefaultInstance(props, authenticator);
			
			// 5. 서버 정보와 인증 정보를 포함하여 전송할 메일 정보를 함께 관리할 
			//    javax.mail.internet.MimeMessage 객체 생성
			//    MimeMessage -> javax.mail.internet.Message 타입으로 업캐스팅
			//    => 파라미터 : javax.mail.Session 객체
			Message message = new MimeMessage(mailSession);
			
			// -----------------------------
			// 6. 전송할 메일 정보 설정
			// 1) 발신자 정보 설정을 위한 javax.mail.internet.InternetAddress 객체 생성
			//    => InternetAddress -> Address 타입으로 업캐스팅
			//    => 파라미터 : 발신자 주소, 발신자 이름
			//    => 단, 상용 메일 서버(구글, 네이버 등)의 경우 스팸 정책으로 인해
			//       기본적인 방법으로는 발신자 주소 변경 불가(= 기본 계정 주소 그대로 사용)
			Address senderAddress = new InternetAddress("ytlee@itwillbs.co.kr", "아이티윌");
			
			// 2) 수신자 정보 설정을 위한 javax.mail.internet.InternetAddress 객체 생성
			//    => InternetAddress -> Address 타입으로 업캐스팅
			//    => 파라미터 : 수신자 주소
			//    => AddressException 예외 처리 필요(수신자 주소가 존재하지 않을 경우)
			Address receiverAddress = new InternetAddress(email);
			
			// 3) Message 객체를 통해 전송할 메일에 대한 내용 정보 설정
			//    => MessagingException 처리 필요
			// 3-1) 메일 헤더 정보 설정
//		message.setHeader("content-type", "text/html; charset=UTF-8");
			// 3-2) 발신자 정보 설정
			message.setFrom(senderAddress);
			// 3-3) 수신자 정보 설정
			// => 파라미터 : 수신 타입, 수신자 주소 정보
			// => 수신 타입 : javax.mall.message.RecipientType 클래스의 상수 활용
			//    RecipientType.TO : 수신자에게 직접 전송(직접 받을 수신자 = 업무 담당자)
			//    RecipientType.CC : 참조. Carbon Copy 의 약자. 직접적 수신자는 아니나 업무 참조용으로 수신(= 업무 관계자)
			//    RecipientType.BCC : 숨은참조. Blind CC 의 약자. 다른 사람들이 누가 참조하는지 알 수 없게 숨김 처리 
			message.addRecipient(RecipientType.TO, receiverAddress);
			// 3-4) 메일 제목 설정
			message.setSubject(subject);
			// 3-5) 메일 본문 설정
			message.setContent("<h3>" + content + "</h3>", "text/html; charset=UTF-8");
			// 3-6) 메일 발송 날짜 및 시각 설정
			// => java.util.Date 객체 활용하여 현재 시스템의 시각 정보 활용
			message.setSentDate(new Date());
			// -----------------------------
			// 7. 메일 전송
			//    javax.mail.Transport 클래스의 static 메서드 send() 호출
			//    => 파라미터 : 6번에서 생성한 Message 객체
			Transport.send(message);
			System.out.println("인증 메일 발송 성공!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("인증 메일 발송 실패!");
		}
		
	}
}