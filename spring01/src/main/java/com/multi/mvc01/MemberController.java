package com.multi.mvc01;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //싱글톤 객체 생성 + 컨트롤러로 역할을 하는 클래스로도 설정 
public class MemberController {
	
	//MemberDAO클래스로 만들어진 객체가 램에 어디에있는지 주소를 찾아서 
	//아래 변수에 주소를넣어준다.
	@Autowired //스프링이 찾아서 주소를 넣어줌.
	MemberDAO dao; //100
	
	//버튼을 눌러서 요청 --> 함수 하나!!!
	@RequestMapping("insert")
	public void insert(MemberDTO bag) {
		//함수(bag) ==> 요청할 때 만든다.(프로토타입)
		//함수(bag) ==> 클라이언트로부터 전달된 값을 가방을 만들어서 넣어주세요ㅣ.
		System.out.println(bag);
		
		//MemberDAO dao = new MemberDAO();
	    int result = dao.insert(bag); //int(1/0)
	    String resultText = "";
	    if(result == 1){
	    	resultText = "회원가입에 성공했습니다.";
	    }else{
	    	resultText = "회원가입에 실패했습니다.";	    }
	    System.out.println(resultText);
	}	
	
	@RequestMapping("login")
	public void login(MemberDTO bag, HttpSession session) throws Exception {
		System.out.println(bag);
		
		//MemberDAO dao = new MemberDAO();
    	int result = dao.login(bag); //boolean(true/false)
    	if(result == 1){ //if(조건) {조건이 true이면 이 괄호를 실행해라!}
    		//세션을 설정해주자.!!!
    		session.setAttribute("id", bag.getId());
    	}
	}
	
	
}
