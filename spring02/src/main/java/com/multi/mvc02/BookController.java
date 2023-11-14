package com.multi.mvc02;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookController {
	
	@Autowired
	BookDAO dao;
	
	@RequestMapping("insert")
	public String insert(BookDTO dto) {
	    // 입력받은 데이터가 유효한지 검사
	    if (isValid(dto)) {
	        int result = dao.insert(dto);
	        if (result == 1) {
	            return "insert";
	        } else {
	            return "redirect:index.jsp";
	        }
	    } else {
	        // 데이터가 유효하지 않으면 다시 입력 페이지로 리다이렉트 또는 에러 메시지 반환
	        return "redirect:index.jsp";
	    }
	}
	// 입력 데이터가 유효한지 검사하는 메소드
	private boolean isValid(BookDTO dto) {
	    // 예시: 모든 필드가 비어있지 않아야 유효하다고 가정
	    return !dto.getId().isEmpty() && !dto.getName().isEmpty() && !dto.getUrl().isEmpty() && !dto.getImg().isEmpty();
	}
	
	@RequestMapping("update")
	public String update(BookDTO dto) {
		int result = dao.update(dto);
		if(result == 1) {
			return "update";
		}else {
			return "redirect:index.jsp";
		}
	}
	
	@RequestMapping("delete")
	public String delete(BookDTO dto) {
		int result = dao.delete(dto);
		if(result == 1) {
			return "delete";
		}else {
			return "redirect:index.jsp";
		}
	}
	
	@RequestMapping("one")
	public String one(BookDTO dto, Model model) {
	    BookDTO dto2 = dao.one(dto);
	    if (dto2 == null) {
	        // 데이터가 없을 경우 index.jsp로 리다이렉트
	        return "redirect:index.jsp";
	    }
	    // 데이터가 있을 경우 views/one.jsp로 dto를 보내서 출력
	    model.addAttribute("dto", dto2);
	    return "one";
	}
	
	@RequestMapping("list")
	public void list(Model model) {
		List<BookDTO> list = dao.list();
		model.addAttribute("list", list);
	}
}
