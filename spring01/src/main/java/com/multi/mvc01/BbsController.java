package com.multi.mvc01;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	
	@RequestMapping("insert2")
	public void insert2(BbsDTO2 bag, Model model) {
		System.out.println(bag);
		
     	BbsDAO dao = new BbsDAO();
     	int result = dao.insert(bag);
     	System.out.println(result);
     	// result는 views/아래까지 가지고 가야하는 설정값
     	// views까지 데이터를 넘길 수 있는 객체 필요(model)
     	// 함수(Model model)을 써놓으면 sts가 model 객체를 만들어서 넣어줌
     	model.addAttribute("result", result);
     	}
	@RequestMapping("update2")
	public String update2(BbsDTO2 bag) {
    	BbsDAO dao = new BbsDAO();
    	int result = dao.update(bag);
    	System.out.println(result);
    	
    	if(result == 1) {
    		return "ok";
    	}else {
    		return "no";
    	}
	}
	
	@RequestMapping("delete2")
	public void delete2(BbsDTO2 bag, Model model) {
		BbsDAO dao = new BbsDAO();
		int result = dao.delete(bag);
		model.addAttribute("result", result);
	}
}
