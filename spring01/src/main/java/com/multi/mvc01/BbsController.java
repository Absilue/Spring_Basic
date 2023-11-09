package com.multi.mvc01;

import java.util.ArrayList;

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
	
	@RequestMapping("one")
	private void one(BbsDTO2 dto, Model model) throws Exception{
		System.out.println(dto);
		BbsDAO dao = new BbsDAO();
		BbsDTO2 bag = dao.one(dto);
		// 검색결과는 bag에 들어있음 ==> views/one.jsp에 결과를 출력
		// bag을 one.jsp까지 전달해주어야 함 ==> model
		model.addAttribute("bag", bag);
		// 자동타입변환(자동형변환, Casting, 업캐스팅)
	}
	@RequestMapping("list")
	private void list(Model model) throws Exception {
		// dao를 이용해서 여러개를 받아서 가지고 오기
		BbsDAO dao = new BbsDAO();
		ArrayList<BbsDTO2> list = dao.list();
		System.out.println(list.size());
		
		// views/list.jsp까지 넘어가야함 ==> model
		
		// model을 이용해서 검색결과인 list를 list.jsp까지 넘김
		model.addAttribute("list", list);
	}
}
