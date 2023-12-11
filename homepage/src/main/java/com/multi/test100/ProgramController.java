package com.multi.test100;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/programs")
public class ProgramController {

    private final ProgramDAO programDAO;

    @Autowired
    public ProgramController(ProgramDAO programDAO) {
        this.programDAO = programDAO;
    }

}