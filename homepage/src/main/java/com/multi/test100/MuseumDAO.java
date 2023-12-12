package com.multi.test100;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MuseumDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<MuseumVO> list() throws Exception {
		List<MuseumVO> list = my.selectList("museum.list");
		return list;
	}
}