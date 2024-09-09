package com.example.hue.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter @Setter @ToString
public class Elderly {
    /*
        ELDERLY_ID
        NAME
        AGE
        GENDER
        BIRTH
        CONDITION
        CONTACT
        CREATE_TIME
    */
    private int elderly_id;
    private String name;
    private int age;
    private String gender;
    private LocalDate birth;
    private String condition;
    private String contact;
    private LocalDateTime create_time;
}
