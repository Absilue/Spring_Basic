package com.multi.test100;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProgramDAO {

	@Autowired
	SqlSessionTemplate my;
}
