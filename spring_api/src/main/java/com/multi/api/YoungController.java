package com.multi.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class YoungController {

	@Autowired
	YoungService youngService;
	
	@RequestMapping("young")
	public void insert() {
		//전처리한다음에 
		//db처리함.
		//views/movie.jsp로 이동함.
		youngService.insert();
	}
}
