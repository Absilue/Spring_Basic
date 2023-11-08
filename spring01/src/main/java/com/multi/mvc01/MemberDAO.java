package com.multi.mvc01;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//DB를 접근하여 CRUD처리만 담당하는 부품
//다른 역할을 하지 않음.
public class MemberDAO {

	// 각각의 처리를 메서드(함수)로 만들어라.
	// 가입처리
	public int insert(MemberDTO dto) {
		int result = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 특정한 위치에 있는 드라이버 파일을 램에 읽어들여 설정
			System.out.println("1. 드라이버 설정 성공.@@@@");

			// 2. db연결 mySQL: school, oracle: xe
			String url = "jdbc:mysql://localhost:3306/shop5?useUnicode=true&serverTimezone=Asia/Seoul";
			String user = "root";
			String password = "1234";
			Connection con = DriverManager.getConnection(url, user, password); // Connection
			System.out.println("2. db연결 성공.@@@@@@");

		// 3.SQL문 결정/생성
		String sql = "insert into member values (?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		ps.setString(3, dto.getName());
		ps.setString(4, dto.getTel());
		System.out.println("3.ok----------");

		// 4.DB로 SQL문 전송
		result = ps.executeUpdate(); //1
		System.out.println("4.ok----------");
		}catch(Exception e) {
			System.out.println("에러가 발생함.");
		}
		return result; //1, 0
	}

	// 로그인처리
	public boolean login(MemberDTO dto) throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		// 특정한 위치에 있는 드라이버 파일을 램에 읽어들여 설정
		System.out.println("1. 드라이버 설정 성공.@@@@");

		// 2. db연결 mySQL: school, oracle: xe
		String url = "jdbc:mysql://localhost:3306/shop5?useUnicode=true&serverTimezone=Asia/Seoul";
		String user = "root";
		String password = "1234";
		Connection con = DriverManager.getConnection(url, user, password); // Connection
		System.out.println("2. db연결 성공.@@@@@@");

		// 3.SQL문 결정/생성
		String sql = "select * from member where id = ? and pw = ?";
		PreparedStatement ps = con.prepareStatement(sql); // PreparedStatement(SQL)
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPw());
		System.out.println("3.ok----------");

		// 4.DB로 SQL문 전송
		// CRUD(CUD-executeUpdate() : int, R-executeQuery() : result)
		ResultSet rs = ps.executeQuery(); // 테이블 형태로 리턴(컬럼명 + 값들(로우))
		System.out.println("4.ok----------");
		boolean result = false; //id,pw가 둘다 일치하지 않음.
		//int는 0, String은 "", float은 0.0 
		if (rs.next()) {
			result = true; //id,pw가 둘다 일치함.
		}
		return result;
	}
}
