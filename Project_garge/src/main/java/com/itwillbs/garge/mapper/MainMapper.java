package com.itwillbs.garge.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.garge.vo.MemberVO;
@Mapper
public interface MainMapper {

	List<Map<String, String>> selectCategory();

	List<Map<String, Object>> selectProduct(Map<String, String> map);

	List<Map<String, String>>  selectQnaCategory();

	List<Map<String, String>> selectQnaCategoryDetail(String qnaCategoryName);


}
