package com.itwillbs.garge.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.garge.mapper.PayMapper;

@Service
public class PayService {
	@Autowired
	PayMapper mapper;
	
	// 주소 목록
	public List<Map<String, String>> getMyAddress(String sId) {
		return mapper.selectMyAddress(sId);
	}
	
	// 메인 주소
	public Map<String, String> getMyAddressMain(String sId) {
		return mapper.selectMyAddressMain(sId);
	}
	
	// 주소 추가
	public int insertAddress(Map<String, String> map) {
		return mapper.insertAddress(map);
	}
	
	// 원래 메인 주소 그냥 주소로 변경
	public int updateMainAddress(Map<String, String> map) {
		return mapper.updateMainAddress(map);
	}
	
	// 메인 주소 추가
	public int insertMainAddress(Map<String, String> map) {
		return mapper.insertMainAddress(map);
	}
}
