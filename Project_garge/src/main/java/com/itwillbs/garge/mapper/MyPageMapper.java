package com.itwillbs.garge.mapper;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MyPageMapper {

	Map<String, Object> selectMember(String sId);

	int updateMember(Map<String, Object> param);

	List<Map<String, Object>> selectMemberInfo(@Param("sId")String sId, @Param("table_name") String table_name);
}
