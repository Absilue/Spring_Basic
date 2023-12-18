package com.multi.test100;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    @RequestMapping("/test100/")
    public String handleTestRequest() {
        // 처리할 내용을 작성합니다.
        return "testPage"; // 해당 요청에 대한 처리 후 반환할 뷰 이름
    }
}