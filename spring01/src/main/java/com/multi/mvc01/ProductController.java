package com.multi.mvc01;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@RequestMapping("insert3")
	public String insert3(ProductDTO dto, Model model) {
		ProductDAO dao = new ProductDAO();
		int result = dao.insert(dto);
		
		// controller에서의 결과를 views/insert3.jsp에 사용하고 싶을 때
		model.addAttribute("result", result); // result == 1
		
		if(result == 1) {
			return "insert3";
		}else {
			return "redirect:product.jsp";
			// redirect는 클라이언트에게 요청하도록 지시
			// redirect해서 jsp호출할 때는 파일명.jsp까지 적어야함
		}
	}
}
