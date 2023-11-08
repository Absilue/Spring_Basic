package com.multi.mvc01;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
// 싱글톤 객체 생성 + 컨트롤러 역활을 하는 클래스로도 설정
public class MemberController {

	// 버튼을 눌러서 요청 --> 함수 하나씩 할당
	@RequestMapping("insert")
	public void insert(MemberDTO bag) {
		//함수(bag) --> 클라이언트로부터 전달된 값을 bag을 만들어서 넣어줌
		//함수(bag) --> 요청할때 만들어짐(프로토타입)
		System.out.println(bag);
		
    	MemberDAO dao = new MemberDAO();
        int result = dao.insert(bag); //int(1/0)
        String resultText = "";
        if(result == 1){
        	resultText = "회원가입에 성공했습니다.";
        }else{
        	resultText = "회원가입에 실패했습니다.";
        }
        System.out.println(resultText);
	}

	@RequestMapping("login")
	public void login(MemberDTO bag, HttpSession session) throws Exception {
		System.out.println(bag);
		
		MemberDAO dao = new MemberDAO();
    	boolean result = dao.login(bag);
     	// 결과값은 boolean(true/false)로 넘어옴
     	
     	if(result){
     		// if(조건) { 조건이 true이면 괄호안을 실행}
     		// 세션을 설정
     		session.setAttribute("id", bag.getId());
     	}
	}
}
