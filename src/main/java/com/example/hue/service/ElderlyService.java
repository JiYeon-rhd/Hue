package com.example.hue.service;

import com.example.hue.dto.CareHandover;
import com.example.hue.dto.Elderly;
import com.example.hue.dto.RobotDialog;
import com.example.hue.dto.RobotManual;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface ElderlyService {
    List<Elderly> getAllElderly();  // 모든 노인 리스트 반환
    Elderly getElderlyById(int id);  // 특정 ID의 노인 정보 반환
    List<RobotManual> getTop3ManualsByElderlyId(int elderlyId);  // 상위 3개의 대응 메뉴얼 반환

    List<CareHandover> getCareHandoversByElderlyId(int elderlyId);
    void addCareHandover(int elderlyId, String text);
    void deleteCareHandover(int handoverId);

    List<RobotDialog> getDialogByElderlyAndDate(int elderlyId, String date);
}

