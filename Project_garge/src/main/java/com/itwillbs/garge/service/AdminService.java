package com.itwillbs.garge.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.garge.mapper.AdminMapper;
import com.itwillbs.garge.vo.MemberVO;

@Service
public class AdminService {
	@Autowired
	private AdminMapper adminMapper;

	// 금일 가입 회원 조회
	public Map<String, Integer> selectMemberJoin() {
		return adminMapper.selectMemberJoin();
	}

	// 총 회원 목록 조회
	public List<MemberVO> selectMemberAll() {
		return adminMapper.selectMemberAll();
	}

	// 총 회원 수 
	public Map<String, Integer> selectMemberCount() {
		return adminMapper.selectMemberCount();
	}

	// 관리자 계정인지 조회
	public List<MemberVO> selectAdminMember(Map<String, String> map) {
		// TODO Auto-generated method stub
		return adminMapper.selectAdminMember(map);
	}
	
	// 기간 회원 검색
	public List<MemberVO> selectMemberPeriodList(Map<String, String> map) {
		// TODO Auto-generated method stub
		return adminMapper.selectMemberPeriod(map);
	}

	// 기간 조회 회원 수
	public Map<String, Integer> selectMemberPeriodCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		return adminMapper.selectMemberCountPeriod(map);
	}


	
	
	
}
