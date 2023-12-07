package com.multi.test100;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PageDAO {

	@Autowired
	SqlSessionTemplate my;
	
	public List<BbsVO> list1(PageVO pageVO) {
		return my.selectList("bbs.list", pageVO);
	}
}
