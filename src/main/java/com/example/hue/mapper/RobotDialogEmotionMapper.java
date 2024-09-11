package com.example.hue.mapper;

import com.example.hue.dto.RobotDialogEmotion;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RobotDialogEmotionMapper {
    List<RobotDialogEmotion> findByElderlyIdAndDate(int elderlyId, String date);
}
