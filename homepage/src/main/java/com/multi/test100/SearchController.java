package com.multi.test100;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {

    @RequestMapping("/search")
    public String search(@RequestParam(value = "name", required = false) String galleryName, Model model) {
        // galleryName을 사용하여 검색하고 결과를 얻는 로직을 여기에 구현하세요.
        // 이 예시에서는 단순히 JSP로 결과를 전달하는 코드를 보여드리겠습니다.
        model.addAttribute("galleryName", galleryName);
        return "search"; // 반환되는 값은 실제로 렌더링할 JSP 파일의 이름입니다. (여기서는 "search.jsp")
    }
}