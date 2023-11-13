package com.multi.mvc01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //싱글톤 + 주소가 요청되었을 때 컨트롤러 역할로 설정 
public class ProductController {
	
	@Autowired
	ProductDAO dao; //100
	
	@RequestMapping("list2")
	public void list2(Model model) throws Exception {
		List<ProductDTO> list = dao.list();
		System.out.println(list.size());
		model.addAttribute("list", list); //Object <-- ArrayList
	}
	
	@RequestMapping("one2")
	public void one2(ProductDTO dto, Model model) throws Exception {
		ProductDTO bag = dao.one(dto);
		model.addAttribute("bag", bag);
	}
	
	//요청하나당 함수하나!
	@RequestMapping("insert3")
	public String insert3(ProductDTO dto, Model model) {
		//1. 받아서 dto에 넣으세요.
		//2. dao이용해서 db처리하세요.
		int result = dao.insert(dto);
		//3. 결과를 jsp로 만들어서 실행후
		//   html코드를 브라우저에 보내주세요.
		
		//controller에서의 결과를 views/insert3.jsp에서 사용하고 싶을 때 
		model.addAttribute("result", result); //result=1
		
		if(result == 1) {
			return "insert3"; //views아래 파일을 지정할 때는 파일명만!
		}else {
			return "redirect:product.jsp"; //redirect는 클라이언트에게 요청하도록 지시!
			//redirect해서 jsp호출할 때는 파일명.jsp까지 써주어야 한다. 
		}
	}//insert
	
	@RequestMapping("update3")
	public void update3(ProductDTO dto, Model model) {
		System.out.println(dto);
		int result = dao.update(dto);
		model.addAttribute("result", result);
		//result는 Object, int --> Object
		//꺼낼때는 int(작) <-- (작)Object(큰)
	}
}
