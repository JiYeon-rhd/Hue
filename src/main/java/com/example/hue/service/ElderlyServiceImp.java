package com.example.hue.service;

import com.example.hue.dto.Elderly;
import com.example.hue.mapper.ElderlyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ElderlyServiceImp implements ElderlyService {

    @Autowired
    private ElderlyMapper elderlyMapper;

    @Override
    public Elderly getElderlyById(int id) {
        return elderlyMapper.getElderlyById(id);
    }
}
