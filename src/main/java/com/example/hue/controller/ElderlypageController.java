package com.example.hue.controller;

import com.example.hue.service.ElderlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ElderlypageController {
    @Autowired
    private ElderlyService elderlyService;

    // 노인 정보 페이지를 렌더링
    @GetMapping("/elderly/{id}")
    public String getElderlyPage(@PathVariable("id") int id, Model model) {
        model.addAttribute("elderly", elderlyService.getElderlyById(id));
        return "index";  // index.html 템플릿을 렌더링
    }

}
