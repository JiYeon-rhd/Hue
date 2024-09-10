package com.example.hue.mapper;

import com.example.hue.dto.RobotManual;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface RobotManualMapper {
    List<RobotManual> findTop3ByElderlyId(@Param("elderlyId") int elderlyId);
}