package com.itwillbs.garge.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PayMapper {
	
	// 주소 목록
	List<Map<String, String>> selectMyAddress(String sId);
	
	// 메인 주소
	Map<String, String> selectMyAddressMain(String sId);
	
	// 주소 추가
	int insertAddress(Map<String, String> map);
	
	// 원래 메인 주소 그냥 주소로 변경
	int updateMainAddress(Map<String, String> map);
	
	// 메인 주소 추가
	int insertMainAddress(Map<String, String> map);

}
