package com.example.hue.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class homecontroller {

    @GetMapping("/detail")
    public String detail() {
        return "detail";
    }

}
