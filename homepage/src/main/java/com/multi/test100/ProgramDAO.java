package com.multi.test100;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProgramDAO {

	@Autowired
	SqlSessionTemplate my;
	
    public List<ProgramVO> list() throws Exception {
        List<ProgramVO> list = my.selectList("program.list");
        return list;
    }

    public List<ProgramVO> getProgramsByMuseumId(int museum_id) throws Exception {
        List<ProgramVO> list = my.selectList("program.getProgramsByMuseumId", museum_id);
        return list;
    }
}