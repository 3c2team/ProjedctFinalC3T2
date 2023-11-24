package com.itwillbs.garge.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.garge.vo.AuthInfoVO;
import com.itwillbs.garge.vo.MemberVO;


@Mapper
public interface MemberMapper {

	

	int insertMember(MemberVO member);

	// 기존 인증정보 조회
	AuthInfoVO selectAuthInfo(String member_id);

	// 새 인증정보 등록
	// 주의! 메서드 파라미터 2개 이상을 XML 에서 접근하기 위해서는
	// 각 파라미터마다 @Param 어노테이션을 통해 각 파라미터명을 별도로 지정해줘야한다!
	// => @Param("파라미터명") 데이터타입 변수명
	void insertAuthInfo(@Param("member_id") String member_id, @Param("authCode") String authCode);
	// 또는 단일 VO 객체를 사용하면 해결
//	void insertAuthInfo(AuthInfoVO authInfo);
	
	// 기존 인증정보 갱신
	void updateAuthInfo(String member_id, String authCode);

	void updateMailAuthStatus(String id);

	void deleteAuthInfo(String id);
	
	String selectPasswd(MemberVO member);

//	MemberVO selectMember(MemberVO member);

	String selectMember(String member_name);

	String selectMemberId(String member_phone_num);

	int updateMemberPasswd(@Param("member_id") String member_id, @Param("securePasswd") String securePasswd);

	String selectMemberEmail(String member_id);

	MemberVO selectMemberLogin(String member_id);

	int selectCheckId(String member_id);
	
	
	// 회원 상세정보 조회
	MemberVO selectMemberDetails(String member_id);

	MemberVO selectMemberKakaoLogin(String kakao_id);


	int updateKakaoId(@Param("member_id") String member_id, @Param("kakao_id") String kakao_id);

	MemberVO selectMemberDup(String id);

	MemberVO selectMemberDupPhone(String phone_num);


	int insertJoinPoint(String member_id);

	MemberVO selectMemberDupMail(Map<String, String> param);
}
