package com.itwillbs.garge.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.garge.vo.MemberVO;

@Mapper
public interface AdminMapper {

	// 금일 가입회원 조회
	Map<String, Integer> selectMember();

}
