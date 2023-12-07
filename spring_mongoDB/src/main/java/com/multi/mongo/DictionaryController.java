package com.multi.mongo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DictionaryController {

	@Autowired
	DictionaryService service;
	
	@RequestMapping("emotion")
	public void one(String setence, Model model) {
		// 문장에 들어있는 명사만 추출 
		// (db에 넣기전 전처리, db에서 검색한 후 후처리)
		// 컨트롤러 --> 전처리 및 후처리(service) --> dao
		
		// dao에게 명사를 주면서 jumsu를 몽고 db에서 검색, 가지고 오기
	}
}
