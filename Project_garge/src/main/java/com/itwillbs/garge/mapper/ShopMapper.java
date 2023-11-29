package com.itwillbs.garge.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShopMapper {

	// 글쓰기
	int registProduct(Map<String, Object> map);


}














