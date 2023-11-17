package com.multi.mvc3;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RestController {

	@Autowired
	MapDAO mapDAO;
	
	@Autowired
	ChartDAO chartDAO;

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
		ArrayList<BbsDTO> list = new ArrayList<BbsDTO>();
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

	@RequestMapping("map2") // one 검색
	@ResponseBody
	public MapVO one(String location) {
		return mapDAO.one(location);
	}

	@RequestMapping("map3") // all 검색
	@ResponseBody
	public List<MapVO> all() {
		return mapDAO.all();
	}
	
	@RequestMapping("chart1") // all 검색
	@ResponseBody
	public List<ChartDTO> chart1() {
		return chartDAO.list();
	}
}
