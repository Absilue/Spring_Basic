package com.multi.api;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class Movie2DAO {

	@Autowired
	SqlSessionTemplate my;
	
	public void insert2(Movie2VO movie2vo) {
		my.insert("movie2.insert", movie2vo);
	}
}
