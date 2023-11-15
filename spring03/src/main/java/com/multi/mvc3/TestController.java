package com.multi.mvc3;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	// 요청하나당 함수하나 할당
	@RequestMapping("test")
	public void test() {
		System.out.println("test 요청이 들어옴");
		// 컨트롤러 다음은 spring에서는 무조건 views/test.jsp로 넘어감
	}
	
	@RequestMapping("test2")
	public void test2() {
		System.out.println("test2 요청이 들어옴");
		// 컨트롤러 다음은 spring에서는 무조건 views/test.jsp로 넘어감
	}
}
