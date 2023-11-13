package com.multi.mvc02;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDAO {
	
	@Autowired
	SqlSessionTemplate my;
	// 램에 들어있는 mybatis를 자동으로 가져옴
	
	public int insert(BookDTO dto) {
		int result = my.insert("book.insert", dto);
		return result;
	}
	
	public int update(BookDTO dto) {
		int result = my.update("book.update", dto);
		return result;
	}
	
	public BookDTO one (BookDTO dto) {
		BookDTO dto2 = my.selectOne("book.one", dto);
		return dto2;
	}
	
	public List<BookDTO> list() {
		List<BookDTO> list = my.selectList("book.list");
		return list;
	}
}
