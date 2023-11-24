package com.itwillbs.garge.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.garge.mapper.MainMapper;
import com.itwillbs.garge.vo.MemberVO;

@Service
public class MainService {
	
	@Autowired
	MainMapper mapper;
	
	public List<Map<String, String>> selectCategory() {
		// TODO Auto-generated method stub
		return mapper.selectCategory();
	}

	public List<Map<String, Object>> selectProduct(Map<String, String> map) {
		// TODO Auto-generated method stub
		return mapper.selectProduct(map);	
	}
}
