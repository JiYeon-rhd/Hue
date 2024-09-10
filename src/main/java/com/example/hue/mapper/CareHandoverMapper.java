package com.example.hue.mapper;

import com.example.hue.dto.CareHandover;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface CareHandoverMapper {
    List<CareHandover> getCareHandoversByElderlyId(int elderlyId);
    // 인수인계 사항 추가
    void addCareHandover(@Param("elderlyId") int elderlyId, @Param("text") String text);
    // 인수인계 사항 삭제
    void deleteCareHandover(@Param("handoverId") int handoverId);
}
