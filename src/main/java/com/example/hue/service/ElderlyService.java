package com.example.hue.service;

import com.example.hue.dto.Elderly;

import java.util.List;

public interface ElderlyService {
    List<Elderly> getAllElderly();  // 모든 노인 리스트 반환
    Elderly getElderlyById(int id);  // 특정 ID의 노인 정보 반환
}

