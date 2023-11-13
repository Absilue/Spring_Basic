package com.multi.mvc01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//DB를 접근하여 CRUD처리만 담당하는 부품
//다른 역할을 하지 않음.
@Repository // 창고, 저장소, 싱글톤 객체 + db예외처리
public class MemberDAO {

	//스프링이 램에 있는 mybatis를 찾아서 주소를 변수에 넣어준다.
	@Autowired //dependency injection(DI, 의존성주입)
	SqlSessionTemplate my; //100
	
	// 각각의 처리를 메서드(함수)로 만들어라.
	// 가입처리
	public int insert(MemberDTO dto) {
		int result = my.insert("member.create",dto );
		return result; // 1, 0
	}

	// 로그인처리
	public int login(MemberDTO dto) throws Exception {
		int result = my.selectOne("member.login", dto);
		return result;
	}
}
