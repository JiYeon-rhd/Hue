package com.example.hue.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;

@Getter
@Setter
@ToString
public class RobotDialog {
    private int no;
    private int elderlyId;
    private LocalDate createTime;
    private String elderlyText;
    private String elderlySummarize;
    private String robotText;
    private String robotSummarize;
}
