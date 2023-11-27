package com.itwillbs.garge.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.garge.vo.MemberVO;

@Mapper
public interface AdminMapper {

	// 금일 가입회원 조회
	Map<String, Integer> selectMemberJoin();

	//총 회원 조회
	List<MemberVO> selectMemberAll();

	// 총 회원 수 
	Map<String, Integer> selectMemberCount();

	// 관리자 계정인지 조회
	List<MemberVO> selectAdminMember(Map<String, String> map);

	// 기간 회원 검색
	List<MemberVO> selectMemberPeriod(Map<String, String> map);

	// 기간 별 총 회원 수
	Map<String, Integer> selectMemberCountPeriod(Map<String, String> map);

	
	
	
	

}
