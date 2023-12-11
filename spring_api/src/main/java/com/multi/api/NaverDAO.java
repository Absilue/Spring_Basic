package com.multi.api;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NaverDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public void insert(NaverVO naverVO) {
			my.insert("naver.insert", naverVO);
	}
}
