package com.multi.test100;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class MuseumController {

	@Autowired
    MuseumDAO dao;

	@RequestMapping("list")
	public void list(MuseumVO bag, Model model) throws Exception {
		//dao를 이용해서 여러개를 받아서 가지고 와주세요.
		List<MuseumVO> list = dao.list();
		System.out.println(list.size());
		//views/list.jsp까지 넘어가야 함.==>Model 
		//model을 이용해서 검색결과인 list를 list.jsp까지 넘기자.!
		model.addAttribute("list", list);
	}	
}