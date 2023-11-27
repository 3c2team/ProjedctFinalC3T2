package com.itwillbs.garge.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.garge.mapper.AdminMapper;

@Service
public class AdminService {
	@Autowired
	private AdminMapper adminMapper;

	// 금일 가입 회원 조회
	public Map<String, Integer> selectMember() {

		return adminMapper.selectMember();
	}
 
	
}
