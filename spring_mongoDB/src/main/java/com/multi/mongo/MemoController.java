package com.multi.mongo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //표시 --> 어노테이션 
public class MemoController {

	@Autowired
	MemoDAO dao;
	
	@RequestMapping("update.memo")
	public String update(String _id, String content) {
		MemoVO vo = new MemoVO();
		vo.set_id(_id);
		vo.setContent(content);
		dao.update(vo);
		return "redirect:mongo_memo.jsp";
	}
	
	@RequestMapping("delete.memo")
	public String delete(String _id) {
		//삭제처리하고
		dao.delete(_id);
		//list.memo를 요청하면 됨.
		return "redirect:list.memo";
	}
	
	@RequestMapping("one.memo") //one.memo?_id=9
	public void one(String _id, Model model) {
		MemoVO vo = dao.one(_id);
		model.addAttribute("vo", vo);
	}
	
	@RequestMapping("insert.memo")
	public String insert(MemoVO vo) {
		System.out.println("컨트롤러가 받은 vo>> " + vo);
		dao.insert(vo);
		return "redirect:mongo_memo.jsp";
	}
	
	@RequestMapping("list.memo")
	public void list(Model model) {
		List<MemoVO> list = dao.list();
		model.addAttribute("list", list);
		System.out.println(list);
	}
}