package com.example.hue.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@ToString
public class RobotDialogEmotion {
    private int no;              // NO
    private int elderlyId;        // ELDERLY_ID
    private LocalDateTime createTime; // CREATE_TIME
    private String morningNightYn; // MORNING_NIGHT_YN ('Y' for morning, 'N' for night)
    private String goodBadYn;      // GOOD_BAD_YN ('Y' for good mood, 'N' for bad mood)
}
