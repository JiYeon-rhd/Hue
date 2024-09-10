package com.example.hue.controller;

import com.example.hue.dto.CareHandover;
import com.example.hue.dto.Elderly;
import com.example.hue.dto.RobotDialog;
import com.example.hue.dto.RobotManual;
import com.example.hue.service.ElderlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

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

    // 특정 노인의 상위 3개의 대응 메뉴얼을 반환하는 API
    @GetMapping("/api/elderly/{id}/top3-manuals")
    public List<RobotManual> getTop3ManualsByElderlyId(@PathVariable("id") int id) {
        return elderlyService.getTop3ManualsByElderlyId(id);  // 상위 3개의 대응 메뉴얼 반환
    }

    // 노인의 인수인계 사항을 반환하는 API
    @GetMapping("/api/elderly/{id}/care-handovers")
    public List<CareHandover> getCareHandoversByElderlyId(@PathVariable("id") int elderlyId) {  // 여기 수정됨
        return elderlyService.getCareHandoversByElderlyId(elderlyId);
    }

    // 인수인계 사항 추가
    @PostMapping("/api/elderly/{id}/care-handovers")
    public ResponseEntity<String> addCareHandover(@PathVariable("id") int elderlyId, @RequestBody Map<String, String> payload) {
        String text = payload.get("text");
        elderlyService.addCareHandover(elderlyId, text);
        return ResponseEntity.ok("Handover added successfully");
    }

    // 인수인계 사항 삭제
    @DeleteMapping("/api/elderly/care-handovers/{handoverId}")
    public ResponseEntity<String> deleteCareHandover(@PathVariable("handoverId") int handoverId) {
        elderlyService.deleteCareHandover(handoverId);
        return ResponseEntity.ok("Handover deleted successfully");
    }

    // 날짜별 노인별 대화 요약 가져오기
    @GetMapping("/{elderlyId}/{date}")
    public List<RobotDialog> getDialogByElderlyAndDate(@PathVariable int elderlyId, @PathVariable String date) {
        return elderlyService.getDialogByElderlyAndDate(elderlyId, date);
    }

}
