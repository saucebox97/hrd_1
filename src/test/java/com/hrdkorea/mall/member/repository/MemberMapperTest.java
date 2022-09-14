package com.hrdkorea.mall.member.repository;

import com.hrdkorea.mall.member.domain.Member;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class MemberMapperTest {

    @Autowired MemberMapper mapper;

    @Test
    void saveTest() {
        Member member = new Member();

        member.setCustName("가나다");
        member.setPhone("010-1111-1111");
        member.setAddress("강북");
        member.setGrade('c');
        member.setCity('2');

        mapper.save(member);
    }

    @Test
    @DisplayName("전체확인")
    void findAll() {
        List<Member> memberList = mapper.findAll();
        for (Member m : memberList) {
            System.out.println(m);
        }
    }

    @Test
    @DisplayName("수정한다")
    @Transactional
    void modifyTest() {

        Member member = new Member();
//        member.setCustNo("100000");
        member.setCustName("가나다라마");
        member.setPhone("010-1111-8888");
        member.setAddress("강북");
//        member.setJoinDate("2015-12-12");
        member.setGrade('a');
        member.setCity('2');
    }
}