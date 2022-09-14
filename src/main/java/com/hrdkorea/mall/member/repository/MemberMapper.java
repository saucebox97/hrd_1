package com.hrdkorea.mall.member.repository;

import com.hrdkorea.mall.member.domain.Member;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemberMapper {

    // 등록
    boolean save(Member member);

    // 전체 조회/수정
    List<Member> findAll();

    // 수정정
   boolean modify(Member member);
}
