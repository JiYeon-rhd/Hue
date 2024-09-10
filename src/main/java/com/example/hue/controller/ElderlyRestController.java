package com.example.hue.controller;

import com.example.hue.dto.Elderly;
import com.example.hue.service.ElderlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ElderlyRestController {

    @Autowired
    private ElderlyService elderlyService;

    // 노인 리스트를 반환하는 API
    @GetMapping("/api/elderly-list")
    public List<Elderly> getElderlyList() {
        return elderlyService.getAllElderly();
    }

    // 특정 노인의 정보를 반환하는 API
    @GetMapping("/api/elderly/{id}")
    public Elderly getElderlyById(@PathVariable("id") int id) {
        return elderlyService.getElderlyById(id);
    }

}
