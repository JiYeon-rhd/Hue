package com.example.hue.mapper;

import com.example.hue.dto.RobotDialog;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface RobotDialogMapper {
    public List<RobotDialog> findByElderlyIdAndDate(@Param("elderlyId") int elderlyId, @Param("date") String date);
}
