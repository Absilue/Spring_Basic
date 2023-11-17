package com.multi.mvc3;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MapDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public List<MapVO> all() {
		return my.selectList("mymap.all");
	}
	
	public MapVO one(String location) {
		return my.selectOne("mymap.one", location);
	}
}
