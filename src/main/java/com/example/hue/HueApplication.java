package com.example.hue;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.example.hue.mapper")  // 매퍼 패키지 스캔 경로 설정
public class HueApplication {

    public static void main(String[] args) {
        SpringApplication.run(HueApplication.class, args);

    }

}
