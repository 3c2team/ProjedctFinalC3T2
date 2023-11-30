package com.itwillbs.garge.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ShopMapper {

	// 글쓰기
	int registProduct(Map<String, Object> map);

	// 글쓰기 사진 등
	int registProductImg(Map<String, Object> map);

//	List<Map<String, Object>> getProduct(int product_num);



}














