package com.example.hue.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RobotManual {
    private int elderly_id;
    private int rank;
    private String detect_method;
    private int total_attempts;
    private int success_attempts;
    private String create_time;

    // 성공률을 계산해서 반환하는 메소드
    public double getSuccessRate() {
        return (double) success_attempts / total_attempts * 100;
    }
}
