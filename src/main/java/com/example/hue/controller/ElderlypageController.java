package com.example.hue.controller;

import com.example.hue.dto.RobotManual;
import com.example.hue.service.ElderlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ElderlypageController {
    @Autowired
    private ElderlyService elderlyService;

    // 노인 정보 페이지를 렌더링
    @GetMapping("/elderly/{id}")
    public String getElderlyPage(@PathVariable("id") int id, Model model) {
        model.addAttribute("elderly", elderlyService.getElderlyById(id));

        // 상위 3개의 대응 메뉴얼을 모델에 추가
        List<RobotManual> top3Manuals = elderlyService.getTop3ManualsByElderlyId(id);
        model.addAttribute("top3Manuals", top3Manuals);
//        System.out.println(top3Manuals);  // 데이터를 출력해서 확인

        return "index";  // index.html 템플릿을 렌더링
    }

}
