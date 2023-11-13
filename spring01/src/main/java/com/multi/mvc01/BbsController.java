package com.multi.mvc01;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // 싱글톤 + 컨트롤러 등록
public class BbsController {

	@Autowired
	BbsDAO dao;
	
	@RequestMapping("one")
	public void one(BbsDTO dto, Model model) throws Exception {
		System.out.println(dto);
		BbsDTO bag = dao.one(dto);
		//검색결과는 bag에 들어있음. ==> views/one.jsp에 결과를 출력 
		//bag을 one.jsp까지 전달해주어야 한다. ==> Model
		model.addAttribute("bag", bag); //Object(큰) <-- BbsDTO2
		//자동타입변환(자동형변환, Casting, 업캐스팅)
	}
	
	@RequestMapping("list")
	public void list(Model model) throws Exception {
		//dao를 이용해서 여러개를 받아서 가지고 와주세요.
		List<BbsDTO> list = dao.list();
		System.out.println(list.size());
		//views/list.jsp까지 넘어가야 함.==>Model 
		//model을 이용해서 검색결과인 list를 list.jsp까지 넘기자.!
		model.addAttribute("list", list);
	}
	
	// 요청하나당 함수하나.
	@RequestMapping("insert2")
	public void insert2(BbsDTO bag, Model model) {
		System.out.println(bag);
		// db처리 --> views/insert2.jsp결과를 출력해주세요.
		int result = dao.insert(bag);
		System.out.println(result);
		// result는 views/아래까지 가지고 가야하는 속성값이야 설정!!!
		// views까지 데이터를 넘길 수 있는 객체 필요(Model)
		// 함수(Model model)써놓으면 스프링이 model객체를 만들어서 넣어준다.
		model.addAttribute("result", result);
	}

	@RequestMapping("update2")
	public String update2(BbsDTO bag) {
		int result = dao.update(bag);
		// views에 update2.jsp를 만드세요.
		if (result == 1) {
			return "redirect:bbs.jsp"; // views/ok.jsp
		} else {
			return "no"; // views/no.jsp
		}
	}

	@RequestMapping("delete2")
	public void delete2(BbsDTO bag, Model model) {
		// bag에 넣고
		// dao를 이용해서 db처리하고
		int result = dao.delete(bag);
		// views/delete2.jsp를 만들어서 결과를 출력
		model.addAttribute("result", result);
	}

}
