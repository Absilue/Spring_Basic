package com.multi.mongo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

@Repository //db처리전담 싱글톤 만드는 표시 
public class MemoDAO {

	//mongoTemplate
	@Autowired
	MongoTemplate mongo; //100
	
	public void update(MemoVO vo) {
		//where절(Criteria) 이후 조건, sort(Sort)! ==> Query객체 
		Query query = new Query(new Criteria("_id").is(vo.get_id()));
		//바꾸어야하는 값 지정 ==> Update객체 
		Update update = new Update();
		update.set("content", vo.getContent());
		mongo.updateMulti(query, update, MemoVO.class, "memo");
	}
	
	public void delete(String _id) {
		//Query는 filter, sort!!
		//filter는 where절 뒤에 조건 where _id=9
		Query query = new Query(new Criteria("_id").is(_id));
		mongo.remove(query, "memo");
	}
	
	public void insert(MemoVO vo) {
		vo.setDate(new Date());
		mongo.insert(vo, "memo");
	}
	
	public MemoVO one(String _id) {
		return mongo.findById(_id, MemoVO.class, "memo");
	}
	
	public List<MemoVO> list() {
		Query query = new Query();
		query.with(new Sort(Sort.Direction.DESC, "date"));
		return mongo.find(query, MemoVO.class, "memo");
	}
}