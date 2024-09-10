package com.example.hue.service;

import com.example.hue.dto.CareHandover;
import com.example.hue.dto.Elderly;
import com.example.hue.dto.RobotDialog;
import com.example.hue.dto.RobotManual;
import com.example.hue.mapper.CareHandoverMapper;
import com.example.hue.mapper.ElderlyMapper;
import com.example.hue.mapper.RobotDialogMapper;
import com.example.hue.mapper.RobotManualMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ElderlyServiceImp implements ElderlyService {

    @Autowired
    private ElderlyMapper elderlyMapper;

    @Autowired
    private RobotManualMapper robotManualMapper;

    @Autowired
    private CareHandoverMapper careHandoverMapper;

    @Autowired
    private RobotDialogMapper robotDialogMapper;

    @Override
    public List<Elderly> getAllElderly() {
        return elderlyMapper.findAll();  // 모든 노인 정보 가져오기
    }

    @Override
    public Elderly getElderlyById(int id) {
        return elderlyMapper.findById(id);  // 특정 ID의 노인 정보 가져오기
    }

    @Override
    public List<RobotManual> getTop3ManualsByElderlyId(int elderlyId) {
        List<RobotManual> result = robotManualMapper.findTop3ByElderlyId(elderlyId);
//        System.out.println("Mapper에서 반환된 데이터: " + result);  // 반환된 데이터 출력
        return result;
    }

    @Override
    public List<CareHandover> getCareHandoversByElderlyId(int elderlyId) {
        return careHandoverMapper.getCareHandoversByElderlyId(elderlyId);
    }

    // 인수인계 사항 추가
    public void addCareHandover(int elderlyId, String text) {
        careHandoverMapper.addCareHandover(elderlyId, text);
    }

    // 인수인계 사항 삭제
    public void deleteCareHandover(int handoverId) {
        careHandoverMapper.deleteCareHandover(handoverId);
    }

    @Override
    public List<RobotDialog> getDialogByElderlyAndDate(int elderlyId, String date) {
        return robotDialogMapper.findByElderlyIdAndDate(elderlyId, date);
    }

}
