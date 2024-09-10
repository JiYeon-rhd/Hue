package com.example.hue.service;

import com.example.hue.dto.Elderly;
import com.example.hue.mapper.ElderlyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ElderlyServiceImp implements ElderlyService {

    @Autowired
    private ElderlyMapper elderlyMapper;

    @Override
    public List<Elderly> getAllElderly() {
        return elderlyMapper.findAll();  // 모든 노인 정보 가져오기
    }

    @Override
    public Elderly getElderlyById(int id) {
        return elderlyMapper.findById(id);  // 특정 ID의 노인 정보 가져오기
    }
}
