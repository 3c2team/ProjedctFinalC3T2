package com.itwillbs.garge.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.garge.mapper.MyPageMapper;

@Service
public class MyPageService {
	@Autowired
	private MyPageMapper mapper;
	
	public Map<String, Object> getMember(String sId) {
		return mapper.selectMember(sId);
	}

	public int myInfoModify(Map<String, Object> param) {
		return mapper.updateMember(param);
	}

	public List<Map<String, Object>> getMemeberInfo(String sId, String table_name) {
		return mapper.selectMemberInfo(sId, table_name);
	}

}
