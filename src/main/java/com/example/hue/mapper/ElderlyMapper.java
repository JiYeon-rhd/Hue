package com.example.hue.mapper;

import com.example.hue.dto.Elderly;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import java.util.List;

@Mapper
public interface ElderlyMapper {
    Elderly findById(int id);
    List<Elderly> findAll();  // 모든 노인 정보 가져오기
}
