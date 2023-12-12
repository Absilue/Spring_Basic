package com.multi.test100;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProgramController {

    @Autowired
    ProgramDAO dao;

    @RequestMapping("list2")
    public String list2(@RequestParam("museum_Id") int museum_Id, Model model) throws Exception {
        // dao를 이용해서 해당 미술관의 프로그램 목록을 가져옵니다.
        List<ProgramVO> list2 = dao.getProgramsByMuseumId(museum_Id);
        model.addAttribute("list2", list2);
        
        return "list2"; // list2.jsp로 이동
    }
}