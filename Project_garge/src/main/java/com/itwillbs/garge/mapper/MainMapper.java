package com.itwillbs.garge.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface MainMapper {

	List<Map<String, String>> selectCategory(); 

}
