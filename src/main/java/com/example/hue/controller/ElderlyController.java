package com.example.hue.controller;

import com.example.hue.dto.Elderly;
import com.example.hue.service.ElderlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;


//데이터 조회 및 전달
@Controller
public class ElderlyController {

    @Autowired
    private ElderlyService elderlyService;

    @GetMapping("/index/{id}")
    public String getElderlyById(@PathVariable("id") int id, Model model) {
        Elderly elderly = elderlyService.getElderlyById(id);
        model.addAttribute("elderly", elderly);
        return "index";  // index.html로 데이터 전달
    }

}