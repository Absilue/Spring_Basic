package com.multi.mvc3;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@RequestMapping("movie")
	public void computer(MovieVO vo, Model model) {
		System.out.println(vo);
		model.addAttribute("vo",vo);
	}
}
