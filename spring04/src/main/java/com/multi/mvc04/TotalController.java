package com.multi.mvc04;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TotalController {
	
	@RequestMapping("fruit")
	public String fruit(Model model) {
		ArrayList<String> fruit = new ArrayList<String>();
		fruit.add("apple");
		fruit.add("banana");
		fruit.add("melon");
		fruit.add("watermelon");
		model.addAttribute("fruit", fruit);
		return "fruit"; // 뷰 이름을 반환
	}
	
	@RequestMapping("place")
	public String place(Model model) {
		ArrayList<String> place = new ArrayList<String>();
		place.add("jeju");
		place.add("hongkong");
		place.add("seoul");
		place.add("london");
		model.addAttribute("place", place);
		return "place"; // 뷰 이름을 반환
	}
}
