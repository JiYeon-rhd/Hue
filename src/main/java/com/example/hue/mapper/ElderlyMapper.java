package com.example.hue.mapper;

import com.example.hue.dto.Elderly;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ElderlyMapper {
    Elderly getElderlyById(int id);
}
