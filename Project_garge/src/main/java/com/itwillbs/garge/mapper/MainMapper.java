package com.itwillbs.garge.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.garge.vo.MemberVO;
@Mapper
public interface MainMapper {

	List<Map<String, String>> selectCategory();

	List<Map<String, String>> selectMemberAddress();

	MemberVO selectMember(String uid); 

}
