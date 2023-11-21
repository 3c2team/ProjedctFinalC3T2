package com.itwillbs.garge.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.garge.mapper.MainMapper;

@Service
public class MainService {
	
	@Autowired
	MainMapper mapper;
	
	public List<Map<String, String>> selectCategory() {
		// TODO Auto-generated method stub
		return mapper.selectCategory();
	}

}
