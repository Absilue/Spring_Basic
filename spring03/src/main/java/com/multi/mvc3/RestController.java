package com.multi.mvc3;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {
	
	@RequestMapping("string")
	@ResponseBody
	// controller에서 return할때 사용
	public String name() {
		return "winner";
	}
	
	@RequestMapping("json1")
	@ResponseBody
	// controller에서 return할때 사용
	public BbsDTO json1() {
		BbsDTO dto = new BbsDTO();
		dto.setId(1);
		dto.setTitle("win");
		dto.setContent("win~~!!");
		dto.setWriter("apple");
		return dto;
	}
	
	@RequestMapping("json2")
	@ResponseBody
	// list --> array
	public void json2() {
		ArrayList<BbsDTO> list = new ArrayList<BbsDTO> ();
		for (int i = 0; i < 5; i++) {
			BbsDTO dto = new BbsDTO();
			dto.setId(i);
			dto.setTitle("win" + i);
			dto.setContent("win~~!!" + i);
			dto.setWriter("apple");
			
			list.add(dto);
		}
	}
	
	@RequestMapping("map1")
	@ResponseBody
	public MapVO kakaoMap() {
		MapVO map = new MapVO();
		map.setLat(37.511);
		map.setLon(127.059);
		return map;
	}
}
