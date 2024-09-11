package com.example.hue.controller;

import com.example.hue.dto.*;
import com.example.hue.service.ElderlyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.HashMap;
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
    @GetMapping("/api/robot-dialog/{elderlyId}/{date}")
    public List<RobotDialog> getDialogByElderlyAndDate(@PathVariable int elderlyId, @PathVariable String date) {
//        System.out.println("elderlyId: " + elderlyId);
//        System.out.println("date: " + date);
        return elderlyService.getDialogByElderlyAndDate(elderlyId, date);
    }

    // 조회 감정이미지 로딩
    @GetMapping("/api/robot-emotion/{elderlyId}/{date}")
    public Map<String, String> getEmotionByElderlyAndDate(@PathVariable int elderlyId, @PathVariable String date) {
        // 아침, 저녁 감정 상태를 조회
        List<RobotDialogEmotion> emotions = elderlyService.getEmotionByElderlyAndDate(elderlyId, date);

        Map<String, String> emotionMap = new HashMap<>();

        // 기본값 설정 (모두 'happy.png')
        emotionMap.put("morning", "/src/happy.png");
        emotionMap.put("night", "/src/happy.png");

        for (RobotDialogEmotion emotion : emotions) {
            // CREATE_TIME이 null이 아닌 경우에만 처리
            LocalDate createDate = emotion.getCreateTime();
            if (createDate != null) {
                LocalDateTime createDateTime = createDate.atTime(LocalTime.MIDNIGHT);  // 기본적으로 00:00:00으로 설정
                LocalTime time = createDateTime.toLocalTime();

                // 12시 이전은 아침, 이후는 저녁으로 구분
                String timeOfDay = time.isBefore(LocalTime.NOON) ? "morning" : "night";
                String mood = emotion.getGoodBadYn().equals("Y") ? "/img/happy.png" : "/img/sad.png";
                emotionMap.put(timeOfDay, mood);
            } else {
                // Null일 경우 기본 이미지 처리
                emotionMap.put("morning", "/img/happy.png");
                emotionMap.put("night", "/img/happy.png");
            }
        }

        return emotionMap;
    }

}
